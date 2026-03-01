import 'dart:collection';
import 'dart:convert';
import 'dart:io';

final class _Args {
  _Args({
    required this.provider,
    required this.manifestPath,
    required this.pretty,
    required this.failOnDrift,
    required this.workingDirectory,
  });

  final String? provider;
  final String manifestPath;
  final bool pretty;
  final bool failOnDrift;
  final String workingDirectory;
}

final class _ProviderEntry {
  _ProviderEntry({
    required this.name,
    required this.schemaUrl,
    required this.localSchemaPath,
    required this.packagePubspecPath,
  });

  final String name;
  final String schemaUrl;
  final String localSchemaPath;
  final String packagePubspecPath;
}

Future<void> main(List<String> args) async {
  final parsed = _parseArgs(args);
  final repoRoot = _findRepoRoot(parsed.workingDirectory);
  final manifestPath = _resolveManifestPath(repoRoot.path, parsed.manifestPath);

  final providers = _loadProviders(manifestPath);
  final selected = parsed.provider == null
      ? providers
      : providers.where((entry) => entry.name == parsed.provider).toList();

  if (selected.isEmpty) {
    stderr.writeln('Provider not found in manifest: ${parsed.provider}');
    exitCode = 64;
    return;
  }

  final reports = <Map<String, dynamic>>[];
  for (final entry in selected) {
    reports.add(await _reportForProvider(repoRoot.path, entry));
  }

  final outputObject = parsed.provider == null ? reports : reports.single;
  final outputText = parsed.pretty
      ? const JsonEncoder.withIndent('  ').convert(outputObject)
      : jsonEncode(outputObject);
  stdout.writeln(outputText);

  final driftFound = reports.any((report) => report['drift'] == true);
  if (parsed.failOnDrift && driftFound) {
    exitCode = 2;
  }
}

_Args _parseArgs(List<String> args) {
  String? provider;
  var manifestPath = 'packages/sdks/schema_sources.json';
  var pretty = false;
  var failOnDrift = false;

  for (var i = 0; i < args.length; i++) {
    final arg = args[i];
    if (arg == '-h' || arg == '--help') {
      _printUsage();
      exit(0);
    }
    if (arg == '--provider') {
      if (i + 1 >= args.length) {
        stderr.writeln('Missing value for --provider');
        _printUsage();
        exit(64);
      }
      provider = args[++i].trim();
      continue;
    }
    if (arg == '--manifest') {
      if (i + 1 >= args.length) {
        stderr.writeln('Missing value for --manifest');
        _printUsage();
        exit(64);
      }
      manifestPath = args[++i].trim();
      continue;
    }
    if (arg == '--pretty') {
      pretty = true;
      continue;
    }
    if (arg == '--fail-on-drift') {
      failOnDrift = true;
      continue;
    }

    stderr.writeln('Unknown argument: $arg');
    _printUsage();
    exit(64);
  }

  return _Args(
    provider: provider,
    manifestPath: manifestPath,
    pretty: pretty,
    failOnDrift: failOnDrift,
    workingDirectory: Directory.current.path,
  );
}

void _printUsage() {
  stdout.writeln('''
Check upstream Pulumi schema drift for generated Dart provider packages.

Usage:
  dart run tool/check_schema_drift.dart [--provider <name>] [--manifest <path>] [--pretty] [--fail-on-drift]

Options:
  --provider <name>    Check a single provider from the manifest.
  --manifest <path>    Manifest path (default: packages/sdks/schema_sources.json).
  --pretty             Pretty-print JSON output.
  --fail-on-drift      Exit non-zero when upstream drift is detected.
  -h, --help           Show this help.
''');
}

Directory _findRepoRoot(String start) {
  var current = Directory(start).absolute;
  while (true) {
    if (_schemaManifestExists(current.path)) {
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

String _resolvePath(String repoRoot, String value) {
  if (_isAbsolutePath(value)) {
    return value;
  }
  return _joinPath([repoRoot, value]);
}

String _resolveManifestPath(String repoRootPath, String manifestPath) {
  if (manifestPath == 'packages/sdks/schema_sources.json') {
    final manifest = _findSchemaSourcesPath(repoRootPath);
    if (manifest != null) {
      return manifest;
    }
  }
  return _resolvePath(repoRootPath, manifestPath);
}

bool _schemaManifestExists(String repoRootPath) {
  final candidates = _schemaManifestCandidates(repoRootPath);
  return candidates.any((candidate) => File(candidate).existsSync());
}

String? _findSchemaSourcesPath(String repoRootPath) {
  for (final candidate in _schemaManifestCandidates(repoRootPath)) {
    if (File(candidate).existsSync()) {
      return candidate;
    }
  }
  return null;
}

List<String> _schemaManifestCandidates(String repoRootPath) => [
  _joinPath([repoRootPath, 'packages', 'sdks', 'schema_sources.json']),
];

List<_ProviderEntry> _loadProviders(String manifestPath) {
  final file = File(manifestPath);
  if (!file.existsSync()) {
    stderr.writeln('Manifest not found: $manifestPath');
    exit(66);
  }

  final decoded = jsonDecode(file.readAsStringSync());
  if (decoded is! Map<String, dynamic>) {
    stderr.writeln('Invalid manifest format: expected object');
    exit(65);
  }
  final providers = decoded['providers'];
  if (providers is! List) {
    stderr.writeln('Invalid manifest format: providers must be a list');
    exit(65);
  }

  final entries = <_ProviderEntry>[];
  for (final raw in providers) {
    if (raw is! Map<String, dynamic>) {
      stderr.writeln('Invalid provider entry in manifest');
      exit(65);
    }
    final name = (raw['name'] ?? '').toString().trim();
    final schemaUrl = (raw['schema_url'] ?? '').toString().trim();
    final localSchemaPath = (raw['local_schema_path'] ?? '').toString().trim();
    final packagePubspecPath = (raw['package_pubspec_path'] ?? '')
        .toString()
        .trim();
    if (name.isEmpty || schemaUrl.isEmpty || localSchemaPath.isEmpty) {
      stderr.writeln(
        'Invalid provider entry for "$name": missing required fields',
      );
      exit(65);
    }
    entries.add(
      _ProviderEntry(
        name: name,
        schemaUrl: schemaUrl,
        localSchemaPath: localSchemaPath,
        packagePubspecPath: packagePubspecPath.isEmpty
            ? _joinPath(['packages', 'sdks', name, 'pubspec.yaml'])
            : packagePubspecPath,
      ),
    );
  }

  return entries;
}

Future<Map<String, dynamic>> _reportForProvider(
  String repoRoot,
  _ProviderEntry provider,
) async {
  final localSchemaAbs = _resolvePath(repoRoot, provider.localSchemaPath);
  final localSchemaFile = File(localSchemaAbs);
  if (!localSchemaFile.existsSync()) {
    stderr.writeln(
      'Local schema not found for ${provider.name}: $localSchemaAbs',
    );
    exit(66);
  }

  final localSchemaBytes = localSchemaFile.readAsBytesSync();
  final upstreamSchemaBytes = await _fetchBytes(provider.schemaUrl);

  final localVersion = _schemaVersion(localSchemaBytes);
  final upstreamVersion = _schemaVersion(upstreamSchemaBytes);
  final packagePubspecAbs = _resolvePackagePubspecPath(
    repoRoot: repoRoot,
    providerName: provider.name,
    configuredPath: provider.packagePubspecPath,
  );
  final packageVersion = packagePubspecAbs.isEmpty
      ? ''
      : _pubspecVersion(packagePubspecAbs);

  final localRawSha = _sha256Hex(localSchemaBytes);
  final upstreamRawSha = _sha256Hex(upstreamSchemaBytes);
  final localCanonicalSha = _sha256Hex(_canonicalJsonBytes(localSchemaBytes));
  final upstreamCanonicalSha = _sha256Hex(
    _canonicalJsonBytes(upstreamSchemaBytes),
  );

  final upstreamVersionChanged = localVersion != upstreamVersion;
  final upstreamChecksumChanged = localCanonicalSha != upstreamCanonicalSha;

  String packageVersionMatchesLocalSchema;
  if (packageVersion.isEmpty || localVersion.isEmpty) {
    packageVersionMatchesLocalSchema = 'unknown';
  } else if (packageVersion == localVersion) {
    packageVersionMatchesLocalSchema = 'true';
  } else {
    packageVersionMatchesLocalSchema = 'false';
  }

  final drift = upstreamVersionChanged || upstreamChecksumChanged;

  return <String, dynamic>{
    'provider': provider.name,
    'schema_url': provider.schemaUrl,
    'local_schema_path': provider.localSchemaPath,
    'package_pubspec_path': provider.packagePubspecPath,
    'local_schema_version': localVersion,
    'upstream_schema_version': upstreamVersion,
    'package_version': packageVersion,
    'local_schema_raw_sha256': localRawSha,
    'upstream_schema_raw_sha256': upstreamRawSha,
    'local_schema_canonical_sha256': localCanonicalSha,
    'upstream_schema_canonical_sha256': upstreamCanonicalSha,
    'upstream_version_changed': upstreamVersionChanged,
    'upstream_checksum_changed': upstreamChecksumChanged,
    'package_version_matches_local_schema': packageVersionMatchesLocalSchema,
    'drift': drift,
  };
}

String _resolvePackagePubspecPath({
  required String repoRoot,
  required String providerName,
  required String configuredPath,
}) {
  final explicit = configuredPath.trim();
  if (explicit.isNotEmpty) {
    final absoluteConfigured = _resolvePath(repoRoot, explicit);
    if (File(absoluteConfigured).existsSync()) {
      return absoluteConfigured;
    }
  }

  final sdksPath = _joinPath([
    repoRoot,
    'packages',
    'sdks',
    providerName,
    'pubspec.yaml',
  ]);
  if (File(sdksPath).existsSync()) {
    return sdksPath;
  }

  return explicit.isNotEmpty ? _resolvePath(repoRoot, explicit) : '';
}

Future<List<int>> _fetchBytes(String url) async {
  Object? lastError;
  for (var attempt = 1; attempt <= 3; attempt++) {
    final client = HttpClient();
    try {
      final request = await client.getUrl(Uri.parse(url));
      final response = await request.close();
      if (response.statusCode < 200 || response.statusCode > 299) {
        stderr.writeln(
          'Failed to fetch schema URL ($url): HTTP ${response.statusCode}',
        );
        exit(1);
      }
      return await consolidateHttpClientResponseBytes(response);
    } catch (error) {
      lastError = error;
      if (attempt < 3) {
        await Future<void>.delayed(const Duration(milliseconds: 250));
      }
    } finally {
      client.close(force: true);
    }
  }

  stderr.writeln('Failed to fetch schema URL ($url): $lastError');
  exit(1);
}

String _schemaVersion(List<int> bytes) {
  final decoded = jsonDecode(utf8.decode(bytes));
  if (decoded is Map<String, dynamic>) {
    final version = decoded['version'];
    if (version == null) {
      return '';
    }
    return version.toString();
  }
  return '';
}

String _pubspecVersion(String path) {
  final file = File(path);
  if (!file.existsSync()) {
    return '';
  }
  final pattern = RegExp(r'^version:\s*(.+?)\s*$');
  for (final raw in file.readAsLinesSync()) {
    final line = raw.trim();
    final match = pattern.firstMatch(line);
    if (match != null) {
      return match.group(1)?.trim() ?? '';
    }
  }
  return '';
}

List<int> _canonicalJsonBytes(List<int> input) {
  final decoded = jsonDecode(utf8.decode(input));
  final canonical = _canonicalizeJson(decoded);
  return utf8.encode(jsonEncode(canonical));
}

dynamic _canonicalizeJson(dynamic value) {
  if (value is Map) {
    final entriesByKey = <String, dynamic>{
      for (final entry in value.entries) entry.key.toString(): entry.value,
    };
    final keys = entriesByKey.keys.toList()..sort();
    final sorted = LinkedHashMap<String, dynamic>();
    for (final key in keys) {
      sorted[key] = _canonicalizeJson(entriesByKey[key]);
    }
    return sorted;
  }
  if (value is List) {
    return value.map(_canonicalizeJson).toList(growable: false);
  }
  return value;
}

String _sha256Hex(List<int> bytes) {
  const offset = 0xcbf29ce484222325;
  const prime = 0x00000100000001B3;
  const mask = 0xFFFFFFFFFFFFFFFF;
  var hash = offset;

  for (final byte in bytes) {
    hash ^= byte;
    hash = (hash * prime) & mask;
  }
  return hash.toRadixString(16).padLeft(16, '0');
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

bool _isAbsolutePath(String value) {
  return value.startsWith('/') ||
      RegExp(r'^[A-Za-z]:[\\\\/]').hasMatch(value) ||
      value.startsWith('\\\\');
}

Future<List<int>> consolidateHttpClientResponseBytes(
  HttpClientResponse response,
) async {
  final chunks = <int>[];
  await for (final chunk in response) {
    chunks.addAll(chunk);
  }
  return chunks;
}
