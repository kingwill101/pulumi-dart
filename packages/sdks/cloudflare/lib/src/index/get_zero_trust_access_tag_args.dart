// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_tag_get_zero_trust_access_tag_args_doc}
/// Arguments for getZeroTrustAccessTag.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_tag_get_zero_trust_access_tag_args_doc}
class GetZeroTrustAccessTagArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The name of the tag
  final pulumi.Input<String> tagName;

  /// Creates a new [GetZeroTrustAccessTagArgs].
  /// [accountId] Identifier.
  /// [tagName] The name of the tag
  const GetZeroTrustAccessTagArgs({
    this.accountId,
    required this.tagName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'tagName': tagName,
    };
  }

  factory GetZeroTrustAccessTagArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessTagArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagName: pulumi.Input.fromValue(map['tagName'] as String),
    );
  }
}
