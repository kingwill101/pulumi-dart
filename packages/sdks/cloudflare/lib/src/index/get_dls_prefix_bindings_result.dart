// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDlsPrefixBindingsResult {
  /// The CIDR that is bound.
  final pulumi.Input<String> cidr;
  /// The ID of the binding.
  final pulumi.Input<String> id;
  /// The ID of the parent prefix.
  final pulumi.Input<String> prefixId;
  /// The region key used for the binding.
  final pulumi.Input<String> regionKey;

  /// Creates a new [GetDlsPrefixBindingsResult].
  /// [cidr] The CIDR that is bound.
  /// [id] The ID of the binding.
  /// [prefixId] The ID of the parent prefix.
  /// [regionKey] The region key used for the binding.
  const GetDlsPrefixBindingsResult({
    required this.cidr,
    required this.id,
    required this.prefixId,
    required this.regionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': cidr,
      'id': id,
      'prefixId': prefixId,
      'regionKey': regionKey,
    };
  }

  factory GetDlsPrefixBindingsResult.fromMap(Map<String, dynamic> map) {
    return GetDlsPrefixBindingsResult(
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      prefixId: pulumi.Input.fromValue(map['prefixId'] as String),
      regionKey: pulumi.Input.fromValue(map['regionKey'] as String),
    );
  }
}
