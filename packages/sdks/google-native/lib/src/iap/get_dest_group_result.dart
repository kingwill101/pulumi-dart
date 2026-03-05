// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDestGroup.
class GetDestGroupResult {
  /// Unordered list. List of CIDRs that this group applies to.
  final List<String> cidrs;
  /// Unordered list. List of FQDNs that this group applies to.
  final List<String> fqdns;
  /// Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  final String name;

  /// Creates a new [GetDestGroupResult].
  /// [cidrs] Unordered list. List of CIDRs that this group applies to.
  /// [fqdns] Unordered list. List of FQDNs that this group applies to.
  /// [name] Immutable. Identifier for the TunnelDestGroup. Must be unique within the project and contain only lower case letters (a-z) and dashes (-).
  GetDestGroupResult({
    required this.cidrs,
    required this.fqdns,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrs': cidrs,
      'fqdns': fqdns,
      'name': name,
    };
  }

  factory GetDestGroupResult.fromMap(Map<String, dynamic> map) {
    return GetDestGroupResult(
      cidrs: (map['cidrs'] as List).cast<String>(),
      fqdns: (map['fqdns'] as List).cast<String>(),
      name: map['name'] as String,
    );
  }
}

