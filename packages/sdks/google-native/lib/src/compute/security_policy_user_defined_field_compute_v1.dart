// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_user_defined_field_base_compute_v1.dart';

class SecurityPolicyUserDefinedFieldComputeV1 {
  /// The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  final pulumi.Input<SecurityPolicyUserDefinedFieldBaseComputeV1>? base;

  /// If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  final pulumi.Input<String>? mask;

  /// The name of this field. Must be unique within the policy.
  final pulumi.Input<String>? name;

  /// Offset of the first byte of the field (in network byte order) relative to 'base'.
  final pulumi.Input<int>? offset;

  /// Size of the field in bytes. Valid values: 1-4.
  final pulumi.Input<int>? size;

  /// Creates a new [SecurityPolicyUserDefinedFieldComputeV1].
  /// [base] The base relative to which 'offset' is measured. Possible values are: - IPV4: Points to the beginning of the IPv4 header. - IPV6: Points to the beginning of the IPv6 header. - TCP: Points to the beginning of the TCP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. - UDP: Points to the beginning of the UDP header, skipping over any IPv4 options or IPv6 extension headers. Not present for non-first fragments. required
  /// [mask] If specified, apply this mask (bitwise AND) to the field to ignore bits before matching. Encoded as a hexadecimal number (starting with "0x"). The last byte of the field (in network byte order) corresponds to the least significant byte of the mask.
  /// [name] The name of this field. Must be unique within the policy.
  /// [offset] Offset of the first byte of the field (in network byte order) relative to 'base'.
  /// [size] Size of the field in bytes. Valid values: 1-4.
  SecurityPolicyUserDefinedFieldComputeV1({
    this.base,
    this.mask,
    this.name,
    this.offset,
    this.size,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'base':
          ?pulumi.Input.mapOptionalInputValue<
            SecurityPolicyUserDefinedFieldBaseComputeV1,
            String
          >(base, (value) => value.wireValue),
      'mask': ?mask,
      'name': ?name,
      'offset': ?offset,
      'size': ?size,
    };
  }

  factory SecurityPolicyUserDefinedFieldComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityPolicyUserDefinedFieldComputeV1(
      base: (() {
        final guardedValue = map['base'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SecurityPolicyUserDefinedFieldBaseComputeV1.fromValue(
            guardedValue as String,
          ),
        );
      })(),
      mask: (() {
        final guardedValue = map['mask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offset: (() {
        final guardedValue = map['offset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      size: (() {
        final guardedValue = map['size'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
