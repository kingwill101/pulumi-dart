// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_custom_page_get_zero_trust_access_custom_page_args_doc}
/// Arguments for getZeroTrustAccessCustomPage.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_custom_page_get_zero_trust_access_custom_page_args_doc}
class GetZeroTrustAccessCustomPageArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// UUID.
  final pulumi.Input<String> customPageId;

  /// Creates a new [GetZeroTrustAccessCustomPageArgs].
  /// [accountId] Identifier.
  /// [customPageId] UUID.
  const GetZeroTrustAccessCustomPageArgs({
    this.accountId,
    required this.customPageId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'customPageId': customPageId,
    };
  }

  factory GetZeroTrustAccessCustomPageArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessCustomPageArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPageId: pulumi.Input.fromValue(map['customPageId'] as String),
    );
  }
}
