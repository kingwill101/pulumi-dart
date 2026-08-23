// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SasPolicy assigned to the storage account.
class SasPolicyResponse {
  /// The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The 'Log' action can be used for audit purposes and the 'Block' action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period.
  final pulumi.Input<String> expirationAction;
  /// The SAS expiration period, DD.HH:MM:SS.
  final pulumi.Input<String> sasExpirationPeriod;

  /// Creates a new [SasPolicyResponse].
  /// [expirationAction] The SAS Expiration Action defines the action to be performed when sasPolicy.sasExpirationPeriod is violated. The 'Log' action can be used for audit purposes and the 'Block' action can be used to block and deny the usage of SAS tokens that do not adhere to the sas policy expiration period.
  /// [sasExpirationPeriod] The SAS expiration period, DD.HH:MM:SS.
  const SasPolicyResponse({
    required this.expirationAction,
    required this.sasExpirationPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationAction': expirationAction,
      'sasExpirationPeriod': sasExpirationPeriod,
    };
  }

  factory SasPolicyResponse.fromMap(Map<String, dynamic> map) {
    return SasPolicyResponse(
      expirationAction: pulumi.Input.fromValue(map['expirationAction'] as String),
      sasExpirationPeriod: pulumi.Input.fromValue(map['sasExpirationPeriod'] as String),
    );
  }
}
