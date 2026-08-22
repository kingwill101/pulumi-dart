import 'dart:convert';
import 'dart:io';
import 'dart:math' as math;

const _isolatedIntegrationTests = <String>{
  // This test intentionally verifies shutdown behavior and relies on a fresh
  // Go test process. Reuse the precompiled binary, but do not share its process
  // with the rest of a partition.
  'TestAwaitAfterExitDart',
};

Future<void> main(List<String> arguments) async {
  try {
    final exitCode = await PulumiDartTool().run(arguments);
    if (exitCode != 0) {
      exit(exitCode);
    }
  } on ToolUsageException catch (error) {
    stderr.writeln(error.message);
    stderr.writeln();
    stderr.writeln(PulumiDartTool.usage);
    exit(64);
  } on ProcessException catch (error) {
    stderr.writeln(error);
    exit(69);
  } catch (error, stackTrace) {
    stderr.writeln(error);
    stderr.writeln(stackTrace);
    exit(1);
  }
}

class PulumiDartTool {
  static const usage = '''
Pulumi Dart repository tooling

Usage:
  pulumi-dart-tool integration matrix [options]
  pulumi-dart-tool integration run [options]

Integration matrix options:
  --package-dir <path>   Go integration package directory.
  --binary <path>        Precompiled Go test binary used to list tests.
  --partitions <count>   Number of matrix partitions. Defaults to 8.

Integration run options:
  --package-dir <path>   Go integration package directory.
  --binary <path>        Precompiled Go test binary to execute.
  --run <regexp>         Go test regexp for this partition.
  --tests <csv>          Test names for this partition; an alternative to --run.
  --timeout <duration>   Go test timeout. Defaults to 60m.
  --parallel <count>     Go test parallelism. Defaults to 4.
''';

  Future<int> run(List<String> arguments) async {
    if (arguments.isEmpty ||
        arguments.first == 'help' ||
        arguments.first == '--help') {
      stdout.write(usage);
      return 0;
    }

    final command = arguments.first;
    final rest = arguments.skip(1).toList(growable: false);
    switch (command) {
      case 'integration':
        return _runIntegration(rest);
      default:
        throw ToolUsageException('Unknown command: $command');
    }
  }

  Future<int> _runIntegration(List<String> arguments) async {
    if (arguments.isEmpty) {
      throw ToolUsageException('Missing integration subcommand.');
    }

    final subcommand = arguments.first;
    final options = CommandOptions.parse(arguments.skip(1));
    switch (subcommand) {
      case 'matrix':
        return _writeIntegrationMatrix(options);
      case 'run':
        return _runIntegrationPartition(options);
      default:
        throw ToolUsageException(
          'Unknown integration subcommand: $subcommand',
        );
    }
  }

  Future<int> _writeIntegrationMatrix(CommandOptions options) async {
    final packageDirectory = options.path('package-dir', 'integration_tests');
    final binary = options.optionalPath('binary');
    final requestedPartitions = options.integer(
      'partitions',
      8,
      minimum: 1,
    );
    options.assertNoPositionals();

    final tests = await _listIntegrationTests(
      packageDirectory: packageDirectory,
      binary: binary,
    );
    if (tests.isEmpty) {
      throw StateError(
        'No Go integration tests were discovered in $packageDirectory.',
      );
    }

    final partitions = _partitionTests(tests, requestedPartitions);
    final include = <Map<String, Object>>[];
    for (var index = 0; index < partitions.length; index++) {
      final testsInPartition = partitions[index];
      include.add({
        'name': '${index + 1}/${partitions.length}',
        'run': _testRegexp(testsInPartition),
        'testsCsv': testsInPartition.join(','),
        'count': testsInPartition.length,
        'tests': testsInPartition,
      });
    }

    stdout.writeln(jsonEncode({'include': include}));
    return 0;
  }

  Future<int> _runIntegrationPartition(CommandOptions options) async {
    final packageDirectory = options.path('package-dir', 'integration_tests');
    final binary = options.optionalPath('binary') ??
        _join(packageDirectory, '.dart_tool/pulumi/integration-tests');
    final explicitRunPattern = options.optional('run');
    final testsCsv = options.optional('tests');
    final timeout = options.value('timeout', '60m');
    final parallel = options.integer('parallel', 4, minimum: 1);
    options.assertNoPositionals();

    if ((explicitRunPattern == null) == (testsCsv == null)) {
      throw ToolUsageException(
        'Exactly one of --run or --tests must be supplied.',
      );
    }

    final binaryFile = File(binary);
    if (!binaryFile.existsSync()) {
      binaryFile.parent.createSync(recursive: true);
      final compile = await _runProcess(
        'go',
        ['test', '-c', '-o', binaryFile.absolute.path, '.'],
        workingDirectory: packageDirectory,
      );
      if (compile != 0) {
        return compile;
      }
    }

    if (explicitRunPattern != null) {
      return _runTestBinary(
        binaryFile: binaryFile,
        packageDirectory: packageDirectory,
        runPattern: explicitRunPattern,
        timeout: timeout,
        parallel: parallel,
        description: 'explicit integration test pattern',
      );
    }

    final tests = _parseTests(testsCsv!);
    final sharedTests = tests
        .where((test) => !_isolatedIntegrationTests.contains(test))
        .toList(growable: false);
    final isolatedTests = tests
        .where(_isolatedIntegrationTests.contains)
        .toList(growable: false);

    if (sharedTests.isNotEmpty) {
      final exitCode = await _runTestBinary(
        binaryFile: binaryFile,
        packageDirectory: packageDirectory,
        runPattern: _testRegexp(sharedTests),
        timeout: timeout,
        parallel: parallel,
        description: '${sharedTests.length} shared-process integration tests',
      );
      if (exitCode != 0) {
        return exitCode;
      }
    }

    for (final test in isolatedTests) {
      final exitCode = await _runTestBinary(
        binaryFile: binaryFile,
        packageDirectory: packageDirectory,
        runPattern: _testRegexp([test]),
        timeout: timeout,
        parallel: 1,
        description: 'isolated integration test $test',
      );
      if (exitCode != 0) {
        return exitCode;
      }
    }

    return 0;
  }

  Future<int> _runTestBinary({
    required File binaryFile,
    required String packageDirectory,
    required String runPattern,
    required String timeout,
    required int parallel,
    required String description,
  }) {
    stdout.writeln('Running $description with pattern $runPattern');
    return _runProcess(
      binaryFile.absolute.path,
      [
        '-test.count=1',
        '-test.timeout=$timeout',
        '-test.parallel=$parallel',
        '-test.run=$runPattern',
        '-test.v',
      ],
      workingDirectory: packageDirectory,
    );
  }

  Future<List<String>> _listIntegrationTests({
    required String packageDirectory,
    required String? binary,
  }) async {
    late final ProcessResult result;
    if (binary != null && File(binary).existsSync()) {
      result = await Process.run(
        File(binary).absolute.path,
        ['-test.list=^Test'],
        workingDirectory: packageDirectory,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
    } else {
      result = await Process.run(
        'go',
        ['test', '--list', '.'],
        workingDirectory: packageDirectory,
        stdoutEncoding: utf8,
        stderrEncoding: utf8,
      );
    }

    if (result.exitCode != 0) {
      stderr.write(result.stderr);
      throw ProcessException(
        binary ?? 'go',
        binary == null
            ? const ['test', '--list', '.']
            : const ['-test.list=^Test'],
        'Unable to list integration tests.',
        result.exitCode,
      );
    }

    final testPattern = RegExp(r'^Test[A-Za-z0-9_]+$');
    final tests = const LineSplitter()
        .convert(result.stdout as String)
        .map((line) => line.trim())
        .where(testPattern.hasMatch)
        .toSet()
        .toList(growable: false)
      ..sort();
    return tests;
  }

  List<String> _parseTests(String csv) {
    final testPattern = RegExp(r'^Test[A-Za-z0-9_]+$');
    final tests = csv
        .split(',')
        .map((test) => test.trim())
        .where((test) => test.isNotEmpty)
        .toList(growable: false);
    if (tests.isEmpty || tests.any((test) => !testPattern.hasMatch(test))) {
      throw ToolUsageException('--tests must contain valid Go test names.');
    }
    return tests;
  }

  List<List<String>> _partitionTests(
    List<String> tests,
    int requestedPartitions,
  ) {
    final partitionCount = math.min(requestedPartitions, tests.length);
    final partitions = List.generate(partitionCount, (_) => <String>[]);
    for (var index = 0; index < tests.length; index++) {
      partitions[index % partitionCount].add(tests[index]);
    }
    return partitions;
  }

  String _testRegexp(List<String> tests) {
    final escaped = tests.map(RegExp.escape).join('|');
    return '^($escaped)\$';
  }

  Future<int> _runProcess(
    String executable,
    List<String> arguments, {
    required String workingDirectory,
  }) async {
    final process = await Process.start(
      executable,
      arguments,
      workingDirectory: workingDirectory,
      mode: ProcessStartMode.inheritStdio,
    );
    return process.exitCode;
  }
}

class CommandOptions {
  CommandOptions._(this._values, this.positionals);

  final Map<String, String> _values;
  final List<String> positionals;

  static CommandOptions parse(Iterable<String> arguments) {
    final values = <String, String>{};
    final positionals = <String>[];
    final items = arguments.toList(growable: false);

    for (var index = 0; index < items.length; index++) {
      final item = items[index];
      if (!item.startsWith('--')) {
        positionals.add(item);
        continue;
      }

      final option = item.substring(2);
      final equalsIndex = option.indexOf('=');
      if (equalsIndex >= 0) {
        values[option.substring(0, equalsIndex)] =
            option.substring(equalsIndex + 1);
        continue;
      }

      if (index + 1 >= items.length || items[index + 1].startsWith('--')) {
        throw ToolUsageException('Missing value for --$option.');
      }
      values[option] = items[++index];
    }

    return CommandOptions._(values, positionals);
  }

  String required(String name) {
    final result = optional(name);
    if (result == null || result.isEmpty) {
      throw ToolUsageException('--$name is required.');
    }
    return result;
  }

  String? optional(String name) => _values.remove(name);

  String value(String name, String fallback) => optional(name) ?? fallback;

  String path(String name, String fallback) =>
      Directory(value(name, fallback)).absolute.path;

  String? optionalPath(String name) {
    final result = optional(name);
    return result == null ? null : File(result).absolute.path;
  }

  int integer(String name, int fallback, {required int minimum}) {
    final raw = optional(name);
    if (raw == null) {
      return fallback;
    }
    final result = int.tryParse(raw);
    if (result == null || result < minimum) {
      throw ToolUsageException('--$name must be an integer >= $minimum.');
    }
    return result;
  }

  void assertNoPositionals() {
    if (positionals.isNotEmpty) {
      throw ToolUsageException(
        'Unexpected arguments: ${positionals.join(' ')}',
      );
    }
    if (_values.isNotEmpty) {
      throw ToolUsageException(
        'Unknown options: '
        '${_values.keys.map((key) => '--$key').join(', ')}',
      );
    }
  }
}

class ToolUsageException implements Exception {
  ToolUsageException(this.message);

  final String message;
}

String _join(String left, String right) {
  final separator = Platform.pathSeparator;
  final normalizedLeft = left.endsWith(separator)
      ? left.substring(0, left.length - separator.length)
      : left;
  final normalizedRight = right.startsWith(separator)
      ? right.substring(1)
      : right;
  return '$normalizedLeft$separator$normalizedRight';
}
