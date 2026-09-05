import 'dart:convert';
import 'dart:io';

import 'package_version.dart';
import 'pubspec_dependencies.dart';
import 'schema_normalization.dart';
import 'authored_example_service.dart';

final class ProviderSchema {
  ProviderSchema({
    required this.name,
    required this.localSchemaPath,
    required this.schemaUrl,
    required this.packagePubspecPath,
    this.falseSecrets = const [],
    this.publishTo = '',
    this.exampleSourcePath = '',
    this.requiredPropertyRelaxations = const {},
  });

  final String name;
  final String localSchemaPath;
  final String schemaUrl;
  final String packagePubspecPath;
  final List<String> falseSecrets;
  final String publishTo;
  final String exampleSourcePath;
  final Map<String, List<String>> requiredPropertyRelaxations;
}

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  final repoRoot = _findRepoRoot(parsed.workingDirectory);
  final schemaSourcePath = _findSchemaSourcesPath(repoRoot.path);
  if (schemaSourcePath == null) {
    stderr.writeln(
      'Unable to locate schema manifest in ${repoRoot.path}. '
      'Expected packages/sdks/schema_sources.json.',
    );
    exitCode = 66;
    return;
  }
  final pulumiVersion = _readPulumiPackageVersion(repoRoot.path);
  final pulumiConstraint = parsed.pulumiConstraint.isNotEmpty
      ? parsed.pulumiConstraint
      : _readPulumiDependencyConstraint(schemaSourcePath) ?? '^$pulumiVersion';
  final allProviders = _loadProviders(schemaSourcePath);

  final selectedProviders = _selectProviders(
    allProviders: allProviders,
    selectedNames: parsed.providers,
  );

  if (selectedProviders.isEmpty) {
    stderr.writeln('No providers selected for generation.');
    exitCode = 64;
    return;
  }

  final sdksRoot = Directory(_joinPath([repoRoot.path, 'packages', 'sdks']));
  if (!sdksRoot.existsSync()) {
    stderr.writeln(
      'Missing packages/sdks directory in repository root ${repoRoot.path}.',
    );
    exitCode = 66;
    return;
  }
  final generatedSdksRoot = Directory(
    _joinPath([repoRoot.path, '.gen', 'sdk-gen']),
  );
  if (!generatedSdksRoot.existsSync()) {
    generatedSdksRoot.createSync(recursive: true);
  }
  final baseGenerationEnvironment = {
    ...Platform.environment,
    'PULUMI_DART_WORKSPACE_RESOLUTION': 'true',
    'PULUMI_DART_PULUMI_DEPENDENCY_PATH': '',
    'PULUMI_DART_PULUMI_DEPENDENCY_CONSTRAINT': pulumiConstraint,
    'PULUMI_DART_PULUMI_DEPENDENCY_VERSION': '',
  };

  if (parsed.docsOnly) {
    final requiresConversion = selectedProviders.any((provider) {
      if (provider.exampleSourcePath.isEmpty) return false;
      final source = Directory(
        _joinPath([repoRoot.path, provider.exampleSourcePath]),
      );
      return !File(_joinPath([source.path, 'main.dart'])).existsSync();
    });
    final generationEnvironment = {
      ...baseGenerationEnvironment,
      if (requiresConversion)
        'PATH': _mergePathPrefix(
          _buildLanguageHost(repoRoot.path),
          Platform.environment['PATH'] ?? '',
        ),
    };
    stdout.writeln(
      'Refreshing examples for ${selectedProviders.length} provider package(s)...',
    );
    for (var i = 0; i < selectedProviders.length; i++) {
      final provider = selectedProviders[i];
      stdout.writeln('[${i + 1}/${selectedProviders.length}] ${provider.name}');
      if (provider.exampleSourcePath.isEmpty) continue;
      await const AuthoredExampleGenerator().generate(
        repositoryRoot: repoRoot,
        provider: provider.name,
        sourcePath: provider.exampleSourcePath,
        generatedPackage: Directory(
          _resolveGeneratedPackageDir(repoRoot.path, provider),
        ),
        environment: generationEnvironment,
      );
    }
    stdout.writeln(
      'Done. Refreshed examples for ${selectedProviders.length} package(s).',
    );
    return;
  }

  final languageHostPath = _buildLanguageHost(repoRoot.path);
  final generationEnvironment = {
    ...baseGenerationEnvironment,
    'PATH': _mergePathPrefix(
      languageHostPath,
      Platform.environment['PATH'] ?? '',
    ),
  };

  stdout.writeln(
    'Generating ${selectedProviders.length} provider package(s)...',
  );
  for (var i = 0; i < selectedProviders.length; i++) {
    final provider = selectedProviders[i];
    final destinationDir = Directory(
      _resolveGeneratedPackageDir(repoRoot.path, provider),
    );
    final destinationPubspec = File(
      _joinPath([destinationDir.path, 'pubspec.yaml']),
    );
    final destinationChangelog = File(
      _joinPath([destinationDir.path, 'CHANGELOG.md']),
    );
    final previousChangelog = destinationChangelog.existsSync()
        ? destinationChangelog.readAsStringSync()
        : '';
    final dependencyConstraints = readPulumiProviderDependencyConstraints(
      destinationPubspec,
    );
    final sdkVersion = parsed.sdkVersion.isNotEmpty
        ? parsed.sdkVersion
        : readPackageVersion(destinationPubspec);
    final providerEnvironment = {...generationEnvironment};
    if (provider.falseSecrets.isNotEmpty) {
      providerEnvironment['PULUMI_DART_FALSE_SECRETS'] = jsonEncode(
        provider.falseSecrets,
      );
    }
    if (provider.publishTo.isNotEmpty) {
      providerEnvironment['PULUMI_DART_PUBLISH_TO'] = provider.publishTo;
    }
    if (sdkVersion case final version?) {
      providerEnvironment['PULUMI_DART_SDK_VERSION'] = version;
    }
    var schemaPath = await _loadSchemaPath(
      provider.name,
      _joinPath([repoRoot.path, provider.localSchemaPath]),
      provider.schemaUrl,
    );
    if (schemaPath == null) {
      exitCode = 66;
      return;
    }
    if (provider.requiredPropertyRelaxations.isNotEmpty) {
      final normalizedPath = _joinPath([
        repoRoot.path,
        '.gen',
        'normalized-schemas',
        '${provider.name}.schema.json',
      ]);
      writeNormalizedSchema(
        source: File(schemaPath),
        destination: File(normalizedPath),
        requiredPropertyRelaxations: provider.requiredPropertyRelaxations,
      );
      schemaPath = normalizedPath;
    }
    final outputPath = _joinPath([generatedSdksRoot.path, provider.name]);

    final outputDir = Directory(outputPath);
    if (outputDir.existsSync()) {
      _discardDirectory(outputDir);
      if (outputDir.existsSync()) {
        throw FileSystemException(
          'Could not clear generated provider staging directory',
          outputDir.path,
        );
      }
    }

    stdout.writeln('[${i + 1}/${selectedProviders.length}] ${provider.name}');
    final result = await Process.start(
      'pulumi',
      [
        'package',
        'gen-sdk',
        schemaPath,
        '--language',
        'dart',
        '--out',
        outputPath,
      ],
      workingDirectory: repoRoot.path,
      environment: providerEnvironment,
      runInShell: false,
    );

    await stdout.addStream(result.stdout);
    await stderr.addStream(result.stderr);
    final status = await result.exitCode;
    if (status != 0) {
      stderr.writeln('Generation failed for ${provider.name} (exit $status).');
      exitCode = status;
      return;
    }

    final generatedDartDir = Directory(_joinPath([outputPath, 'dart']));
    if (!generatedDartDir.existsSync()) {
      stderr.writeln(
        'Expected generated Dart package directory was not found: ${generatedDartDir.path}',
      );
      exitCode = 1;
      return;
    }

    if (provider.exampleSourcePath.isNotEmpty) {
      await const AuthoredExampleGenerator().generate(
        repositoryRoot: repoRoot,
        provider: provider.name,
        sourcePath: provider.exampleSourcePath,
        generatedPackage: generatedDartDir,
        environment: providerEnvironment,
      );
    }

    // Replace generated sources as a directory so stale files are cleaned up
    // without leaving the package half-deleted if replacement fails.
    _replaceGeneratedLib(generatedDartDir, destinationDir);
    _mergeDirectory(generatedDartDir, destinationDir);
    if (previousChangelog.isNotEmpty && sdkVersion != null) {
      prependChangelogRelease(
        destinationChangelog,
        version: sdkVersion,
        previous: previousChangelog,
      );
    }
    preservePulumiProviderDependencyConstraints(
      destinationPubspec,
      dependencyConstraints,
    );
  }

  if (!parsed.keepSdks) {
    if (generatedSdksRoot.existsSync()) {
      _discardDirectory(generatedSdksRoot);
    }
  }

  stdout.writeln('Done. Regenerated ${selectedProviders.length} package(s).');
}

void prependChangelogRelease(
  File changelog, {
  required String version,
  required String previous,
}) {
  final firstRelease = RegExp(r'^## ', multiLine: true).firstMatch(previous);
  final history = firstRelease == null
      ? previous.trim()
      : previous.substring(firstRelease.start).trim();
  changelog.writeAsStringSync(
    '# Changelog\n\n'
    'All notable changes to this package will be documented in this file.\n\n'
    '## $version\n\n'
    '- Regenerate the Dart SDK from upstream provider schema.\n\n'
    '$history\n',
  );
}

String _readPulumiPackageVersion(String repoRoot) {
  final candidates = [
    _joinPath([repoRoot, 'packages', 'pulumi-dart', 'pubspec.yaml']),
  ];
  String? pubspecPath;
  for (final candidate in candidates) {
    if (File(candidate).existsSync()) {
      pubspecPath = candidate;
      break;
    }
  }

  if (pubspecPath == null) {
    stderr.writeln('Missing pulumi package pubspec in expected locations:');
    stderr.writeln(' - ${candidates[0]}');
    exit(66);
  }
  final pubspecFile = File(pubspecPath);

  final versionPattern = RegExp(r'^version:\s*([^\s#]+)\s*$');
  for (final line in pubspecFile.readAsLinesSync()) {
    final match = versionPattern.firstMatch(line.trim());
    if (match != null) {
      final version = match.group(1)?.trim() ?? '';
      if (version.isNotEmpty) {
        return version;
      }
    }
  }

  stderr.writeln('Could not read pulumi version from $pubspecPath');
  exit(65);
}

List<ProviderSchema> _loadProviders(String schemaSourcePath) {
  final sourceFile = File(schemaSourcePath);
  if (!sourceFile.existsSync()) {
    stderr.writeln('Missing schema source manifest: $schemaSourcePath');
    exit(66);
  }

  final decoded =
      jsonDecode(sourceFile.readAsStringSync()) as Map<String, dynamic>;
  final providers = decoded['providers'];
  if (providers is! List) {
    stderr.writeln(
      'Invalid manifest format in $schemaSourcePath: providers must be a list.',
    );
    exit(65);
  }

  final result = <ProviderSchema>[];
  for (final entry in providers) {
    if (entry is! Map<String, dynamic>) {
      stderr.writeln('Invalid provider entry in $schemaSourcePath.');
      exit(65);
    }
    final name = entry['name'];
    final localSchemaPath = entry['local_schema_path'];
    final schemaUrl = entry['schema_url'];
    final rawPackagePubspecPath = entry['package_pubspec_path'];
    final rawFalseSecrets = entry['false_secrets'];
    final rawPublishTo = entry['publish_to'];
    final rawExampleSourcePath = entry['example_source_path'];
    final rawRelaxations = entry['required_property_relaxations'];
    if (rawPublishTo != null && rawPublishTo is! String) {
      stderr.writeln(
        'Invalid publish_to for provider $name in $schemaSourcePath.',
      );
      exit(65);
    }
    if (rawExampleSourcePath != null && rawExampleSourcePath is! String) {
      stderr.writeln(
        'Invalid example_source_path for provider $name in $schemaSourcePath.',
      );
      exit(65);
    }
    final relaxations = <String, List<String>>{};
    if (rawRelaxations != null) {
      if (rawRelaxations is! Map<String, dynamic>) {
        stderr.writeln(
          'Invalid required_property_relaxations for provider $name.',
        );
        exit(65);
      }
      for (final relaxation in rawRelaxations.entries) {
        if (relaxation.value is! List ||
            (relaxation.value as List).any((value) => value is! String)) {
          stderr.writeln(
            'Invalid required_property_relaxations for provider $name.',
          );
          exit(65);
        }
        relaxations[relaxation.key] = List<String>.unmodifiable(
          (relaxation.value as List).cast<String>(),
        );
      }
    }
    if (rawFalseSecrets != null &&
        (rawFalseSecrets is! List ||
            rawFalseSecrets.any((value) => value is! String))) {
      stderr.writeln(
        'Invalid false_secrets for provider $name in $schemaSourcePath.',
      );
      exit(65);
    }
    if (name is! String ||
        name.isEmpty ||
        localSchemaPath is! String ||
        localSchemaPath.isEmpty ||
        schemaUrl is! String ||
        schemaUrl.isEmpty) {
      stderr.writeln(
        'Provider entry is missing name/local_schema_path/schema_url in $schemaSourcePath.',
      );
      exit(65);
    }
    result.add(
      ProviderSchema(
        name: name,
        localSchemaPath: localSchemaPath,
        schemaUrl: schemaUrl,
        packagePubspecPath:
            rawPackagePubspecPath is String &&
                rawPackagePubspecPath.trim().isNotEmpty
            ? rawPackagePubspecPath.trim()
            : _joinPath(['packages', 'sdks', name, 'pubspec.yaml']),
        falseSecrets: rawFalseSecrets == null
            ? const []
            : List<String>.unmodifiable(rawFalseSecrets.cast<String>()),
        publishTo: rawPublishTo is String ? rawPublishTo.trim() : '',
        exampleSourcePath: rawExampleSourcePath is String
            ? rawExampleSourcePath.trim()
            : '',
        requiredPropertyRelaxations: Map.unmodifiable(relaxations),
      ),
    );
  }

  return result;
}

String? _readPulumiDependencyConstraint(String schemaSourcePath) {
  final decoded =
      jsonDecode(File(schemaSourcePath).readAsStringSync())
          as Map<String, dynamic>;
  final configured = decoded['pulumi_dependency_constraint'];
  if (configured == null) return null;
  if (configured is! String || configured.trim().isEmpty) {
    stderr.writeln(
      'Invalid pulumi_dependency_constraint in $schemaSourcePath.',
    );
    exit(65);
  }
  return configured.trim();
}

List<ProviderSchema> _selectProviders({
  required List<ProviderSchema> allProviders,
  required Set<String> selectedNames,
}) {
  if (selectedNames.isEmpty) {
    return allProviders;
  }

  final byName = {for (final provider in allProviders) provider.name: provider};
  final missing =
      selectedNames.where((name) => !byName.containsKey(name)).toList()..sort();
  if (missing.isNotEmpty) {
    stderr.writeln('Unknown provider(s): ${missing.join(', ')}');
    stderr.writeln('Known providers: ${byName.keys.toList()..sort()}');
    exit(64);
  }

  return [
    for (final provider in allProviders)
      if (selectedNames.contains(provider.name)) provider,
  ];
}

Future<String?> _loadSchemaPath(
  String providerName,
  String schemaPath,
  String schemaUrl,
) async {
  final localSchemaFile = File(schemaPath);
  if (localSchemaFile.existsSync()) {
    return schemaPath;
  }

  stdout.writeln(
    'Schema not found for $providerName: $schemaPath. '
    'Downloading from manifest schema_url.',
  );

  final uri = Uri.tryParse(schemaUrl);
  if (uri == null || !uri.hasScheme) {
    stderr.writeln('Invalid schema URL for $providerName: $schemaUrl');
    return null;
  }

  final client = HttpClient();
  try {
    final request = await client.getUrl(uri);
    final response = await request.close();
    if (response.statusCode != HttpStatus.ok) {
      stderr.writeln(
        'Failed to download schema for $providerName '
        '(HTTP ${response.statusCode}).',
      );
      client.close();
      return null;
    }

    final schemaText = await response.transform(utf8.decoder).join();
    final parent = File(schemaPath).parent;
    if (!parent.existsSync()) {
      parent.createSync(recursive: true);
    }
    localSchemaFile.writeAsStringSync(schemaText);
    return schemaPath;
  } catch (error) {
    stderr.writeln('Error downloading schema for $providerName: $error');
    return null;
  } finally {
    client.close();
  }
}

Directory _findRepoRoot(String start) {
  var current = Directory(start).absolute;
  while (true) {
    if (_findSchemaSourcesPath(current.path) != null) {
      return current;
    }

    final parent = current.parent;
    if (parent.path == current.path) {
      stderr.writeln(
        'Unable to locate repository root from ${Directory(start).absolute.path}.',
      );
      exit(66);
    }
    current = parent;
  }
}

String _buildLanguageHost(String repoRootPath) {
  final languageHostDir = _joinPath([repoRootPath, 'pulumi-language-dart']);
  final languageHostBinary = Platform.isWindows
      ? 'pulumi-language-dart.exe'
      : 'pulumi-language-dart';
  final result = Process.runSync(
    'go',
    ['build', '-o', languageHostBinary, '.'],
    workingDirectory: languageHostDir,
    environment: Platform.environment,
  );

  if (result.exitCode != 0) {
    if (result.stdout is String && (result.stdout as String).isNotEmpty) {
      stdout.writeln(result.stdout);
    }
    if (result.stderr is String && (result.stderr as String).isNotEmpty) {
      stderr.writeln(result.stderr);
    }
    stderr.writeln(
      'Failed to build pulumi-language-dart in $languageHostDir '
      '(exit ${result.exitCode}).',
    );
    exit(result.exitCode);
  }
  return languageHostDir;
}

String _mergePathPrefix(String value, String existingPath) {
  if (value.isEmpty) {
    return existingPath;
  }
  if (existingPath.isEmpty) {
    return value;
  }
  return '$value${_pathListSeparator()}$existingPath';
}

String _pathListSeparator() {
  return Platform.isWindows ? ';' : ':';
}

String? _findSchemaSourcesPath(String repoRootPath) {
  final schemaSources = _joinPath([
    repoRootPath,
    'packages',
    'sdks',
    'schema_sources.json',
  ]);
  if (File(schemaSources).existsSync()) {
    return schemaSources;
  }
  return null;
}

String _resolveGeneratedPackageDir(String repoRoot, ProviderSchema provider) {
  if (provider.packagePubspecPath.isNotEmpty) {
    final configuredPath = _resolvePath(repoRoot, provider.packagePubspecPath);
    final configuredDirectory = File(configuredPath).parent;
    if (configuredDirectory.existsSync()) {
      return configuredDirectory.path;
    }

    final sdksPath = _joinPath([repoRoot, 'packages', 'sdks', provider.name]);
    if (Directory(sdksPath).existsSync()) {
      return sdksPath;
    }

    return configuredDirectory.path;
  }
  return _joinPath([repoRoot, 'packages', 'sdks', provider.name]);
}

String _resolvePath(String repoRoot, String value) {
  if (_isAbsolutePath(value)) {
    return value;
  }
  return _joinPath([repoRoot, value]);
}

bool _isAbsolutePath(String value) {
  return value.startsWith('/') ||
      RegExp(r'^[A-Za-z]:[\\\\/]').hasMatch(value) ||
      value.startsWith('\\\\');
}

/// Copies all files from [source] into [destination], overwriting files that
/// exist in [source] but preserving any files in [destination] that are not
/// part of the generated output (e.g. LICENSE, manually maintained READMEs).
void _mergeDirectory(Directory source, Directory destination) {
  if (!destination.existsSync()) {
    destination.createSync(recursive: true);
  }
  for (final entity in source.listSync()) {
    final name = entity.uri.pathSegments.lastWhere(
      (segment) => segment.isNotEmpty,
    );
    final destPath = _joinPath([destination.path, name]);
    if (entity is Directory) {
      _mergeDirectory(entity, Directory(destPath));
    } else if (entity is File) {
      entity.copySync(destPath);
    }
  }
}

void _replaceGeneratedLib(Directory generatedPackage, Directory destination) {
  final generatedLib = Directory(_joinPath([generatedPackage.path, 'lib']));
  if (!generatedLib.existsSync()) {
    throw FileSystemException(
      'Generated package does not contain a lib directory',
      generatedPackage.path,
    );
  }

  if (!destination.existsSync()) {
    destination.createSync(recursive: true);
  }

  final destinationLib = Directory(_joinPath([destination.path, 'lib']));
  final backupLib = Directory(
    _joinPath([
      generatedPackage.parent.path,
      '.lib-replaced-$pid-${DateTime.now().microsecondsSinceEpoch}',
    ]),
  );

  var movedExistingLib = false;
  try {
    if (destinationLib.existsSync()) {
      destinationLib.renameSync(backupLib.path);
      movedExistingLib = true;
    }
    generatedLib.renameSync(destinationLib.path);
  } catch (_) {
    if (!destinationLib.existsSync() && movedExistingLib) {
      backupLib.renameSync(destinationLib.path);
    }
    rethrow;
  }

  if (movedExistingLib) {
    _discardDirectory(backupLib);
  }
}

void _discardDirectory(Directory directory) {
  if (!directory.existsSync()) return;
  Directory? trash;
  try {
    trash = Directory.systemTemp.createTempSync('repodoc-generated-trash-');
    final moved = directory.renameSync(_joinPath([trash.path, 'contents']));
    try {
      moved.deleteSync(recursive: true);
      trash.deleteSync();
    } on FileSystemException {
      // The generated replacement is already committed. Finder and filesystem
      // watchers may recreate metadata while trash is being removed, so stale
      // temporary cleanup must not invalidate a successful atomic swap.
    }
  } on FileSystemException {
    try {
      directory.deleteSync(recursive: true);
    } on FileSystemException {
      // Best-effort cleanup only; the path is ignored generated state.
    }
  }
}

String _joinPath(List<String> segments) {
  final normalized = segments.where((segment) => segment.isNotEmpty).toList();
  if (normalized.isEmpty) {
    return '';
  }

  var path = normalized.first;
  for (final segment in normalized.skip(1)) {
    if (path.endsWith('/') || path.endsWith('\\')) {
      path += segment;
    } else {
      path = '$path/$segment';
    }
  }
  return path;
}

final class _ParsedArgs {
  _ParsedArgs({
    required this.providers,
    required this.keepSdks,
    required this.docsOnly,
    required this.sdkVersion,
    required this.pulumiConstraint,
    required this.workingDirectory,
  });

  final Set<String> providers;
  final bool keepSdks;
  final bool docsOnly;
  final String sdkVersion;
  final String pulumiConstraint;
  final String workingDirectory;
}

_ParsedArgs _parseArgs(List<String> args) {
  final providers = <String>{};
  var keepSdks = false;
  var docsOnly = false;
  var sdkVersion = '';
  var pulumiConstraint = '';

  void addProvidersCsv(String value) {
    for (final raw in value.split(',')) {
      final provider = raw.trim();
      if (provider.isNotEmpty) {
        providers.add(provider);
      }
    }
  }

  for (var i = 0; i < args.length; i++) {
    final arg = args[i];
    if (arg == '--help' || arg == '-h') {
      _printUsage();
      exit(0);
    }
    if (arg == '--keep-sdks') {
      keepSdks = true;
      continue;
    }
    if (arg == '--docs-only') {
      docsOnly = true;
      continue;
    }
    if (arg == '--all') {
      continue;
    }
    if (arg == '--sdk-version') {
      if (i + 1 >= args.length) {
        stderr.writeln('Missing value for --sdk-version');
        _printUsage();
        exit(64);
      }
      sdkVersion = args[++i].trim();
      continue;
    }
    if (arg.startsWith('--sdk-version=')) {
      sdkVersion = arg.substring('--sdk-version='.length).trim();
      continue;
    }
    if (arg == '--pulumi-constraint') {
      if (i + 1 >= args.length) {
        stderr.writeln('Missing value for --pulumi-constraint');
        _printUsage();
        exit(64);
      }
      pulumiConstraint = args[++i].trim();
      continue;
    }
    if (arg.startsWith('--pulumi-constraint=')) {
      pulumiConstraint = arg.substring('--pulumi-constraint='.length).trim();
      continue;
    }
    if (arg == '--provider') {
      if (i + 1 >= args.length) {
        stderr.writeln('Missing value for --provider');
        _printUsage();
        exit(64);
      }
      i += 1;
      addProvidersCsv(args[i]);
      continue;
    }
    if (arg.startsWith('--provider=')) {
      addProvidersCsv(arg.substring('--provider='.length));
      continue;
    }

    stderr.writeln('Unknown argument: $arg');
    _printUsage();
    exit(64);
  }

  return _ParsedArgs(
    providers: providers,
    keepSdks: keepSdks,
    docsOnly: docsOnly,
    sdkVersion: sdkVersion,
    pulumiConstraint: pulumiConstraint,
    workingDirectory: Directory.current.path,
  );
}

void _printUsage() {
  stdout.writeln('''
Regenerate Dart provider SDK packages.

Usage:
  repodoc packages:generate [options]

Options:
  --all                       Generate all providers in packages/sdks/schema_sources.json (default)
  --provider <name[,name...]> Generate only selected providers (repeatable)
  --sdk-version <version>     Override the generated package version
  --pulumi-constraint <range> Override the generated pulumi dependency constraint
  --keep-sdks                 Keep temporary generation output under .gen/sdk-gen
  --docs-only                 Refresh README and example without replacing SDK sources
  -h, --help                  Show this help
''');
}
