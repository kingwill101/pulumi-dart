// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityPolicyUserDefinedFieldResponseComputeV1 {
  /// The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  final pulumi.Input<String> base;
  /// If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  final pulumi.Input<String> mask;
  /// The name of this field. Must be unique within the policy.
  final pulumi.Input<String> name;
  /// Offset of the first byte of the field (in network byte order) relative to 'base'.
  final pulumi.Input<int> offset;
  /// Size of the field in bytes. Valid values: 1-4.
  final pulumi.Input<int> size;

  /// Creates a new [SecurityPolicyUserDefinedFieldResponseComputeV1].
  /// [base] The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  /// [mask] If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  /// [name] The name of this field. Must be unique within the policy.
  /// [offset] Offset of the first byte of the field (in network byte order) relative to 'base'.
  /// [size] Size of the field in bytes. Valid values: 1-4.
  SecurityPolicyUserDefinedFieldResponseComputeV1({
    required this.base,
    required this.mask,
    required this.name,
    required this.offset,
    required this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base': base,
      'mask': mask,
      'name': name,
      'offset': offset,
      'size': size,
    };
  }

  factory SecurityPolicyUserDefinedFieldResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyUserDefinedFieldResponseComputeV1(
      base: (map['base'] as String).input(),
      mask: (map['mask'] as String).input(),
      name: (map['name'] as String).input(),
      offset: (map['offset'] as int).input(),
      size: (map['size'] as int).input(),
    );
  }
}

