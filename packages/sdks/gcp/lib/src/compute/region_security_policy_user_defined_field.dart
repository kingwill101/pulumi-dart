// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionSecurityPolicyUserDefinedField {
  /// The base relative to which 'offset' is measured. Possible values are:
  /// - IPV4: Points to the beginning of the IPv4 header.
  /// - IPV6: Points to the beginning of the IPv6 header.
  /// - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments.
  /// - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments.
  /// Possible values are: `IPV4`, `IPV6`, `TCP`, `UDP`.
  final pulumi.Input<String> base;
  /// If specified, apply this mask (bitwise AND) to the field to ignore bits before matching.
  /// Encoded as a hexadecimal number (starting with "0x").
  /// The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  final pulumi.Input<String>? mask;
  /// Name of the user-defined field, as given in the definition.
  final pulumi.Input<String>? name;
  /// Offset of the first byte of the field (in network byte order) relative to 'base'.
  final pulumi.Input<int>? offset;
  /// Size of the field in bytes. Valid values: 1-4.
  final pulumi.Input<int>? size;

  /// Creates a new [RegionSecurityPolicyUserDefinedField].
  /// [base] The base relative to which 'offset' is measured. Possible values are:
  /// [mask] If specified, apply this mask (bitwise AND) to the field to ignore bits before matching.
  /// [name] Name of the user-defined field, as given in the definition.
  /// [offset] Offset of the first byte of the field (in network byte order) relative to 'base'.
  /// [size] Size of the field in bytes. Valid values: 1-4.
  RegionSecurityPolicyUserDefinedField({
    required this.base,
    this.mask,
    this.name,
    this.offset,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': base,
      'mask': ?mask,
      'name': ?name,
      'offset': ?offset,
      'size': ?size,
    };
  }

  factory RegionSecurityPolicyUserDefinedField.fromMap(Map<String, dynamic> map) {
    return RegionSecurityPolicyUserDefinedField(
      base: (map['base'] as String).input(),
      mask: map['mask'] == null ? null : (map['mask']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      offset: map['offset'] == null ? null : (map['offset']! as int).input(),
      size: map['size'] == null ? null : (map['size']! as int).input(),
    );
  }
}

