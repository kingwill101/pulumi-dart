class ParsedUrn {
  final String urnName;
  final String typ;
  final String pkgName;
  final String modName;
  final String typName;

  const ParsedUrn({
    required this.urnName,
    required this.typ,
    required this.pkgName,
    required this.modName,
    required this.typName,
  });
}

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
