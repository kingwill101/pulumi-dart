// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_key_configuration_get_zero_trust_access_key_configuration_args_doc}
/// Arguments for getZeroTrustAccessKeyConfiguration.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_key_configuration_get_zero_trust_access_key_configuration_args_doc}
class GetZeroTrustAccessKeyConfigurationArgs {
  /// Identifier.
  final pulumi.Input<String?>? accountId;

  /// Creates a new [GetZeroTrustAccessKeyConfigurationArgs].
  /// [accountId] Identifier.
  const GetZeroTrustAccessKeyConfigurationArgs({
    this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
    };
  }

  factory GetZeroTrustAccessKeyConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessKeyConfigurationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
