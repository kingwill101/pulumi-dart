import 'dart:convert';
import 'dart:io';

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

final class _GitHubRelease {
  const _GitHubRelease({required this.version, this.schemaUrl});

  final String version;
  final String? schemaUrl;
}

final class SchemaRelease {
  const SchemaRelease({required this.version, this.schemaUrl});

  final String version;
  final String? schemaUrl;
}

typedef SchemaReportLoader = Future<Map<String, dynamic>> Function();
typedef SchemaReportRunner =
    Future<Map<String, dynamic>> Function(
      String provider,
      int index,
      int total,
      SchemaReportLoader load,
    );

final class SchemaCheckResult {
  const SchemaCheckResult(this.reports);

  final List<Map<String, dynamic>> reports;

  bool get hasDrift => reports.any((report) => report['drift'] == true);

  Object output({required bool singleProvider}) =>
      singleProvider ? reports.single : reports;
}

Future<SchemaCheckResult> checkSchemas({
  String? provider,
  String manifestPath = 'packages/sdks/schema_sources.json',
  String? workingDirectory,
  SchemaReportRunner? runReport,
}) async {
  final repoRoot = _findRepoRoot(workingDirectory ?? Directory.current.path);
  final resolvedManifest = _resolveManifestPath(repoRoot.path, manifestPath);
  final providers = _loadProviders(resolvedManifest);
  final selected = provider == null
      ? providers
      : providers.where((entry) => entry.name == provider).toList();

  if (selected.isEmpty) {
    throw ArgumentError.value(provider, 'provider', 'Not found in manifest');
  }

  final reports = <Map<String, dynamic>>[];
  for (var index = 0; index < selected.length; index++) {
    final entry = selected[index];
    Future<Map<String, dynamic>> load() =>
        _reportForProvider(repoRoot.path, entry);
    reports.add(
      runReport == null
          ? await load()
          : await runReport(entry.name, index + 1, selected.length, load),
    );
  }
  return SchemaCheckResult(reports);
}

Future<List<int>> downloadSchema(String url) => _fetchBytes(url);

Future<SchemaRelease?> resolveLatestSchemaRelease(String repository) async {
  final release = await _latestGitHubRelease(repository);
  if (release == null) return null;
  return SchemaRelease(version: release.version, schemaUrl: release.schemaUrl);
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
  final localVersion = _schemaVersion(localSchemaBytes);
  final localRepository = _schemaRepository(localSchemaBytes);
  final release = await _latestGitHubRelease(localRepository);
  final resolvedSchemaUrl = release?.schemaUrl ?? provider.schemaUrl;
  final upstreamSchemaBytes = await _fetchBytes(resolvedSchemaUrl);
  final upstreamSchemaVersion = _schemaVersion(upstreamSchemaBytes);
  final upstreamRepository = _schemaRepository(upstreamSchemaBytes);
  final repository = upstreamRepository.isNotEmpty
      ? upstreamRepository
      : localRepository;
  final upstreamReleaseVersion = upstreamSchemaVersion.isEmpty
      ? release?.version ?? ''
      : '';
  final upstreamVersion = upstreamSchemaVersion.isNotEmpty
      ? upstreamSchemaVersion
      : upstreamReleaseVersion;
  final upstreamVersionSource = upstreamSchemaVersion.isNotEmpty
      ? 'schema'
      : upstreamReleaseVersion.isNotEmpty
      ? 'github_release'
      : 'unknown';
  final packagePubspecAbs = _resolvePackagePubspecPath(
    repoRoot: repoRoot,
    providerName: provider.name,
    configuredPath: provider.packagePubspecPath,
  );
  final packageVersion = packagePubspecAbs.isEmpty
      ? ''
      : _pubspecVersion(packagePubspecAbs);
  final localComparableVersion = localVersion.isNotEmpty
      ? localVersion
      : comparableProviderVersion(packageVersion);
  final localVersionSource = localVersion.isNotEmpty
      ? 'schema'
      : packageVersion.isNotEmpty
      ? 'package'
      : 'unknown';

  final localRawSha = _sha256Hex(localSchemaBytes);
  final upstreamRawSha = _sha256Hex(upstreamSchemaBytes);
  final localCanonicalSha = _sha256Hex(_canonicalJsonBytes(localSchemaBytes));
  final upstreamCanonicalSha = _sha256Hex(
    _canonicalJsonBytes(upstreamSchemaBytes),
  );

  final upstreamVersionChanged =
      upstreamVersion.isNotEmpty && localComparableVersion != upstreamVersion;
  final upstreamChecksumChanged = localCanonicalSha != upstreamCanonicalSha;

  String packageVersionMatchesLocalSchema;
  if (packageVersion.isEmpty || localVersion.isEmpty) {
    packageVersionMatchesLocalSchema = 'unknown';
  } else if (comparableProviderVersion(packageVersion) == localVersion) {
    packageVersionMatchesLocalSchema = 'true';
  } else {
    packageVersionMatchesLocalSchema = 'false';
  }

  final drift = upstreamVersionChanged || upstreamChecksumChanged;

  return <String, dynamic>{
    'provider': provider.name,
    'schema_url': resolvedSchemaUrl,
    'configured_schema_url': provider.schemaUrl,
    'schema_source': release?.schemaUrl == null
        ? 'pulumi_registry'
        : 'github_release_asset',
    'local_schema_path': provider.localSchemaPath,
    'package_pubspec_path': provider.packagePubspecPath,
    'local_schema_version': localVersion,
    'local_version': localComparableVersion,
    'local_version_source': localVersionSource,
    'upstream_schema_version': upstreamSchemaVersion,
    'upstream_release_version': upstreamReleaseVersion,
    'upstream_version': upstreamVersion,
    'upstream_version_source': upstreamVersionSource,
    'upstream_repository': repository,
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

String comparableProviderVersion(String version) => version.split('+').first;

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
    final client = HttpClient()
      ..connectionTimeout = const Duration(seconds: 15);
    try {
      final request = await client
          .getUrl(Uri.parse(url))
          .timeout(const Duration(seconds: 20));
      final response = await request.close().timeout(
        const Duration(seconds: 20),
      );
      if (response.statusCode < 200 || response.statusCode > 299) {
        stderr.writeln(
          'Failed to fetch schema URL ($url): HTTP ${response.statusCode}',
        );
        exit(1);
      }
      return await consolidateHttpClientResponseBytes(
        response,
      ).timeout(const Duration(seconds: 30));
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

String _schemaRepository(List<int> bytes) {
  final decoded = jsonDecode(utf8.decode(bytes));
  if (decoded is Map<String, dynamic>) {
    return decoded['repository']?.toString().trim() ?? '';
  }
  return '';
}

Future<_GitHubRelease?> _latestGitHubRelease(String repository) async {
  final repositoryUri = Uri.tryParse(repository);
  if (repositoryUri == null || repositoryUri.host != 'github.com') return null;
  final segments = repositoryUri.pathSegments
      .where((segment) => segment.isNotEmpty)
      .toList();
  if (segments.length < 2) return null;

  final owner = segments[0];
  final repo = segments[1].replaceFirst(RegExp(r'\.git$'), '');
  final client = HttpClient()..connectionTimeout = const Duration(seconds: 10);
  try {
    final request = await client
        .getUrl(
          Uri.https('api.github.com', '/repos/$owner/$repo/releases/latest'),
        )
        .timeout(const Duration(seconds: 15));
    request.headers
      ..set(HttpHeaders.acceptHeader, 'application/vnd.github+json')
      ..set(HttpHeaders.userAgentHeader, 'pulumi-dart-repodoc');
    final token = Platform.environment['GITHUB_TOKEN'];
    if (token != null && token.isNotEmpty) {
      request.headers.set(HttpHeaders.authorizationHeader, 'Bearer $token');
    }
    final response = await request.close().timeout(const Duration(seconds: 15));
    if (response.statusCode != HttpStatus.ok) return null;
    final bytes = await consolidateHttpClientResponseBytes(
      response,
    ).timeout(const Duration(seconds: 15));
    final decoded = jsonDecode(utf8.decode(bytes));
    if (decoded is! Map<String, dynamic>) return null;
    final tag = decoded['tag_name']?.toString().trim() ?? '';
    final version = tag.replaceFirst(RegExp(r'^[vV]'), '');
    if (version.isEmpty) return null;

    String? schemaUrl;
    final assets = decoded['assets'];
    if (assets is List) {
      for (final asset in assets.whereType<Map<String, dynamic>>()) {
        if (asset['name'] == 'schema-embed.json') {
          final candidate = asset['browser_download_url']?.toString();
          if (candidate != null && candidate.isNotEmpty) schemaUrl = candidate;
          break;
        }
      }
    }
    return _GitHubRelease(version: version, schemaUrl: schemaUrl);
  } catch (_) {
    return null;
  } finally {
    client.close(force: true);
  }
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
    final sorted = <String, dynamic>{};
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
