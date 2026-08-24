// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_device_posture_integration_get_zero_trust_device_posture_integration_args_doc}
/// Arguments for getZeroTrustDevicePostureIntegration.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_device_posture_integration_get_zero_trust_device_posture_integration_args_doc}
class GetZeroTrustDevicePostureIntegrationArgs {
  final pulumi.Input<String?>? accountId;
  /// API UUID.
  final pulumi.Input<String> integrationId;

  /// Creates a new [GetZeroTrustDevicePostureIntegrationArgs].
  /// [accountId] Optional.
  /// [integrationId] API UUID.
  const GetZeroTrustDevicePostureIntegrationArgs({
    this.accountId,
    required this.integrationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'integrationId': integrationId,
    };
  }

  factory GetZeroTrustDevicePostureIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureIntegrationArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      integrationId: pulumi.Input.fromValue(map['integrationId'] as String),
    );
  }
}
