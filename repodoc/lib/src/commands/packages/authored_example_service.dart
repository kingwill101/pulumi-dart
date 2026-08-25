import 'dart:io';

import 'package:path/path.dart' as p;

import '../../infrastructure/dart_cli.dart';

final class AuthoredExampleGenerator {
  const AuthoredExampleGenerator();

  Future<void> generate({
    required Directory repositoryRoot,
    required String provider,
    required String sourcePath,
    required Directory generatedPackage,
    required Map<String, String> environment,
  }) async {
    final source = Directory(
      p.normalize(p.join(repositoryRoot.path, sourcePath)),
    );
    if (!p.isWithin(repositoryRoot.path, source.path)) {
      throw ArgumentError.value(
        sourcePath,
        'sourcePath',
        'Authored example source must remain inside the repository.',
      );
    }
    final projectFile = File(p.join(source.path, 'Pulumi.yaml'));
    final dartSource = File(p.join(source.path, 'main.dart'));
    if (!projectFile.existsSync() && !dartSource.existsSync()) {
      throw FileSystemException(
        'Authored example source is missing Pulumi.yaml or main.dart',
        source.path,
      );
    }

    final destination = File(
      p.join(generatedPackage.path, 'example', 'main.dart'),
    );
    destination.parent.createSync(recursive: true);

    if (dartSource.existsSync()) {
      dartSource.copySync(destination.path);
    } else {
      await _convertYaml(
        provider: provider,
        source: source,
        destination: destination,
        repositoryRoot: repositoryRoot,
        environment: environment,
      );
    }

    _copyAssets(source, generatedPackage);

    final format = await DartCli.resolve(
      environment: environment,
    ).run(['format', destination.path]);
    if (format.exitCode != 0) {
      throw ProcessException(
        'dart',
        ['format', destination.path],
        '${format.stdout}${format.stderr}',
        format.exitCode,
      );
    }
  }

  Future<void> _convertYaml({
    required String provider,
    required Directory source,
    required File destination,
    required Directory repositoryRoot,
    required Map<String, String> environment,
  }) async {
    final output = Directory(
      p.join(repositoryRoot.path, '.gen', 'example-gen', provider),
    );
    if (output.existsSync()) {
      output.deleteSync(recursive: true);
    }
    output.createSync(recursive: true);

    final arguments = [
      'convert',
      '--from',
      'yaml',
      '--language',
      'dart',
      '--out',
      output.path,
      '--generate-only',
      '--strict',
    ];
    final conversion = await Process.start(
      'pulumi',
      arguments,
      workingDirectory: source.path,
      environment: environment,
      runInShell: false,
    );
    await stdout.addStream(conversion.stdout);
    await stderr.addStream(conversion.stderr);
    final conversionStatus = await conversion.exitCode;
    if (conversionStatus != 0) {
      throw ProcessException(
        'pulumi',
        arguments,
        'Could not convert the authored $provider example.',
        conversionStatus,
      );
    }

    final generatedPrograms = Directory(p.join(output.path, 'bin'))
        .listSync()
        .whereType<File>()
        .where((file) => p.extension(file.path) == '.dart')
        .toList();
    if (generatedPrograms.length != 1) {
      throw StateError(
        'Expected one generated Dart program for $provider, found '
        '${generatedPrograms.length}.',
      );
    }

    generatedPrograms.single.copySync(destination.path);
  }

  void _copyAssets(Directory source, Directory generatedPackage) {
    for (final asset in source.listSync(recursive: true).whereType<File>()) {
      final relativePath = p.relative(asset.path, from: source.path);
      if (relativePath == 'Pulumi.yaml' ||
          relativePath == 'Main.yaml' ||
          relativePath == 'main.dart') {
        continue;
      }
      final assetDestination = File(
        p.join(generatedPackage.path, 'example', relativePath),
      );
      assetDestination.parent.createSync(recursive: true);
      asset.copySync(assetDestination.path);
    }
  }
}
