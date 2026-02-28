/// Parsed components of a Pulumi URN.
class ParsedUrn {
  /// Logical resource name (tail after type section).
  final String urnName;

  /// Full `pkg:module:type` token.
  final String typ;

  /// Package segment.
  final String pkgName;

  /// Module segment.
  final String modName;

  /// Type segment.
  final String typName;

  const ParsedUrn({
    required this.urnName,
    required this.typ,
    required this.pkgName,
    required this.modName,
    required this.typName,
  });
}

/// Parses a Pulumi URN into package/module/type/name components.
///
/// ## Example
/// ```dart
/// final p = parseUrn('urn:pulumi:dev::proj::aws:s3/bucket:Bucket::logs');
/// // p.pkgName == 'aws'
/// // p.modName == 's3/bucket'
/// // p.typName == 'Bucket'
/// // p.urnName == 'logs'
/// ```
ParsedUrn parseUrn(String urn) {
  final parts = urn.split('::');
  if (parts.length < 3) {
    throw FormatException(
      "Invalid URN '$urn': expected at least stack/project/type sections.",
    );
  }

  final typ = parts[2];
  final typeParts = typ.split(':');
  if (typeParts.length != 3) {
    throw FormatException(
      "Invalid URN '$urn': expected type in 'pkg:module:type' format.",
    );
  }

  final urnName = parts.length > 3 ? parts.sublist(3).join('::') : '';

  return ParsedUrn(
    urnName: urnName,
    typ: typ,
    pkgName: typeParts[0],
    modName: typeParts[1],
    typName: typeParts[2],
  );
}
