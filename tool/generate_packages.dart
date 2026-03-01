import 'dart:convert';
import 'dart:io';

final class ProviderSchema {
  ProviderSchema({
    required this.name,
    required this.localSchemaPath,
    required this.schemaUrl,
    required this.packagePubspecPath,
  });

  final String name;
  final String localSchemaPath;
  final String schemaUrl;
  final String packagePubspecPath;
}

void main(List<String> args) async {
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

  stdout.writeln(
    'Generating ${selectedProviders.length} provider package(s)...',
  );
  for (var i = 0; i < selectedProviders.length; i++) {
    final provider = selectedProviders[i];
    final schemaPath = await _loadSchemaPath(
      provider.name,
      _joinPath([repoRoot.path, provider.localSchemaPath]),
      provider.schemaUrl,
    );
    if (schemaPath == null) {
      exitCode = 66;
      return;
    }
    final outputPath = _joinPath([generatedSdksRoot.path, provider.name]);

    final outputDir = Directory(outputPath);
    if (outputDir.existsSync()) {
      outputDir.deleteSync(recursive: true);
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
      environment: {
        ...Platform.environment,
        'PULUMI_DART_WORKSPACE_RESOLUTION': 'true',
        'PULUMI_DART_PULUMI_DEPENDENCY_PATH': '',
        'PULUMI_DART_PULUMI_DEPENDENCY_VERSION': pulumiVersion,
      },
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

    final destinationDir = Directory(
      _resolveGeneratedPackageDir(repoRoot.path, provider),
    );
    if (destinationDir.existsSync()) {
      destinationDir.deleteSync(recursive: true);
    }

    generatedDartDir.renameSync(destinationDir.path);
  }

  if (!parsed.keepSdks) {
    if (generatedSdksRoot.existsSync()) {
      generatedSdksRoot.deleteSync(recursive: true);
    }
  }

  stdout.writeln('Done. Regenerated ${selectedProviders.length} package(s).');
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
      ),
    );
  }

  return result;
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
    required this.workingDirectory,
  });

  final Set<String> providers;
  final bool keepSdks;
  final String workingDirectory;
}

_ParsedArgs _parseArgs(List<String> args) {
  final providers = <String>{};
  var keepSdks = false;

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
    if (arg == '--all') {
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
    workingDirectory: Directory.current.path,
  );
}

void _printUsage() {
  stdout.writeln('''
Regenerate Dart provider SDK packages.

Usage:
  dart run tool/generate_packages.dart [options]

Options:
  --all                       Generate all providers in packages/sdks/schema_sources.json (default)
  --provider <name[,name...]> Generate only selected providers (repeatable)
  --keep-sdks                 Keep temporary generation output under .gen/sdk-gen
  -h, --help                  Show this help
''');
}
