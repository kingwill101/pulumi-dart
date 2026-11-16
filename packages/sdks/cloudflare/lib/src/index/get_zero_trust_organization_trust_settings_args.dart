// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_organization_trust_settings_get_zero_trust_organization_trust_settings_args_doc}
/// Arguments for getZeroTrustOrganizationTrustSettings.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_organization_trust_settings_get_zero_trust_organization_trust_settings_args_doc}
class GetZeroTrustOrganizationTrustSettingsArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;

  /// Creates a new [GetZeroTrustOrganizationTrustSettingsArgs].
  /// [accountId] Identifier.
  const GetZeroTrustOrganizationTrustSettingsArgs({
    required this.accountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
    };
  }

  factory GetZeroTrustOrganizationTrustSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustOrganizationTrustSettingsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
    );
  }
}
