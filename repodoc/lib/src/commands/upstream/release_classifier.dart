import 'models.dart';

List<UpstreamFinding> classifyRelease(
  UpstreamSource source,
  UpstreamRelease release,
) {
  final findings = <UpstreamFinding>[];
  for (final rawLine in release.body.split('\n')) {
    final line = rawLine.trim();
    if (!line.startsWith('-') && !line.startsWith('*')) continue;
    final category = _category(line, source.kind);
    if (category == null) continue;
    findings.add(
      UpstreamFinding(
        source: source.name,
        release: release.tag,
        category: category,
        summary: line.replaceFirst(RegExp(r'^[-*]\s*'), ''),
        url: release.url,
      ),
    );
  }
  return findings;
}

String? _category(String line, String sourceKind) {
  final text = line.toLowerCase();
  if (_containsAny(text, [
    'renovate[bot]',
    'dependabot',
    'update module ',
    'update dependency ',
    'bump dependency ',
    'bump github.com/',
    'changelog',
    'github actions workflow',
    'pulumi-provider-automation[bot]',
  ])) {
    return null;
  }
  if (sourceKind == 'core' &&
      !_containsAny(text, [
        '[sdk',
        '[runtime',
        '[engine',
        '[pcl',
        '[protobuf',
        '[codegen',
        '[programgen',
        '[sdkgen',
        '[auto',
        '[language',
      ])) {
    return null;
  }
  if (_containsAny(text, [
    'protobuf',
    'protocol',
    'languageruntime',
    'language runtime',
    'resource monitor',
    'rpc',
  ])) {
    return 'protocol';
  }
  if (sourceKind == 'core' &&
      _containsAny(text, ['automation', '[auto/', '[auto]'])) {
    return 'automation';
  }
  if (_containsAny(text, [
    'codegen',
    'sdkgen',
    'programgen',
    'generate',
    'generator',
  ])) {
    return 'codegen';
  }
  if (_containsAny(text, [
    'overlay',
    'helper librar',
    'component',
    'nodejs only',
    'node.js only',
  ])) {
    return sourceKind == 'provider' ? 'provider-sdk' : 'sdk';
  }
  if (sourceKind == 'provider') {
    if (_containsAny(text, [
      '[sdk',
      'nodejs',
      'node.js',
      'typescript',
      'python sdk',
      'go sdk',
      'dotnet',
      '.net sdk',
      'java sdk',
    ])) {
      return 'provider-sdk';
    }
    if (_containsAny(text, ['fix ', 'fix:', 'fix(', 'bug'])) {
      return 'provider-runtime';
    }
    return null;
  }
  if (_containsAny(text, [
    '[sdk',
    '[runtime',
    'output',
    'input',
    'resource',
    'invoke',
    'call',
    'alias',
    'transform',
    'hook',
    'secret',
    'asset',
    'archive',
    'serialize',
    'deserialize',
    'mock',
    'customtimeout',
  ])) {
    return 'sdk';
  }
  return null;
}

bool _containsAny(String value, List<String> needles) =>
    needles.any(value.contains);
