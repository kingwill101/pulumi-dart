// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_access_tag_zero_trust_access_tag_args_doc}
/// The set of arguments for ZeroTrustAccessTag.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_access_tag_zero_trust_access_tag_args_doc}
class ZeroTrustAccessTagArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The name of the tag
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustAccessTagArgs].
  /// [accountId] Identifier.
  /// [name] The name of the tag
  const ZeroTrustAccessTagArgs({
    required this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
    };
  }

  factory ZeroTrustAccessTagArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustAccessTagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
