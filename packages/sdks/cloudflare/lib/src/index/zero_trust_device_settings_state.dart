// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustDeviceSettings resources.
class ZeroTrustDeviceSettingsState {
  final pulumi.Input<String?>? accountId;
  /// Sets the time limit, in seconds, that a user can use an override code to bypass WARP.
  final pulumi.Input<double?>? disableForTime;
  /// Controls whether the external emergency disconnect feature is enabled.
  final pulumi.Input<bool?>? externalEmergencySignalEnabled;
  /// The SHA256 fingerprint (64 hexadecimal characters) of the HTTPS server certificate for the external*emergency*signal_url. If provided, the WARP client will use this value to verify the server's identity. The device will ignore any response if the server's certificate fingerprint does not exactly match this value.
  final pulumi.Input<String?>? externalEmergencySignalFingerprint;
  /// The interval at which the WARP client fetches the emergency disconnect signal, formatted as a duration string (e.g., "5m", "2m30s", "1h"). Minimum 30 seconds.
  final pulumi.Input<String?>? externalEmergencySignalInterval;
  /// The HTTPS URL from which to fetch the emergency disconnect signal. Must use HTTPS and have an IPv4 or IPv6 address as the host.
  final pulumi.Input<String?>? externalEmergencySignalUrl;
  /// Enable gateway proxy filtering on TCP.
  final pulumi.Input<bool?>? gatewayProxyEnabled;
  /// Enable gateway proxy filtering on UDP.
  final pulumi.Input<bool?>? gatewayUdpProxyEnabled;
  /// Enable installation of cloudflare managed root certificate.
  final pulumi.Input<bool?>? rootCertificateInstallationEnabled;
  /// Enable using CGNAT virtual IPv4.
  final pulumi.Input<bool?>? useZtVirtualIp;

  /// Creates a new [ZeroTrustDeviceSettingsState].
  /// [accountId] Optional.
  /// [disableForTime] Sets the time limit, in seconds, that a user can use an override code to bypass WARP.
  /// [externalEmergencySignalEnabled] Controls whether the external emergency disconnect feature is enabled.
  /// [externalEmergencySignalFingerprint] The SHA256 fingerprint (64 hexadecimal characters) of the HTTPS server certificate for the external*emergency*signal_url. If provided, the WARP client will use this value to verify the server's identity. The device will ignore any response if the server's certificate fingerprint does not exactly match this value.
  /// [externalEmergencySignalInterval] The interval at which the WARP client fetches the emergency disconnect signal, formatted as a duration string (e.g., "5m", "2m30s", "1h"). Minimum 30 seconds.
  /// [externalEmergencySignalUrl] The HTTPS URL from which to fetch the emergency disconnect signal. Must use HTTPS and have an IPv4 or IPv6 address as the host.
  /// [gatewayProxyEnabled] Enable gateway proxy filtering on TCP.
  /// [gatewayUdpProxyEnabled] Enable gateway proxy filtering on UDP.
  /// [rootCertificateInstallationEnabled] Enable installation of cloudflare managed root certificate.
  /// [useZtVirtualIp] Enable using CGNAT virtual IPv4.
  const ZeroTrustDeviceSettingsState({
    this.accountId,
    this.disableForTime,
    this.externalEmergencySignalEnabled,
    this.externalEmergencySignalFingerprint,
    this.externalEmergencySignalInterval,
    this.externalEmergencySignalUrl,
    this.gatewayProxyEnabled,
    this.gatewayUdpProxyEnabled,
    this.rootCertificateInstallationEnabled,
    this.useZtVirtualIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'disableForTime': ?disableForTime,
      'externalEmergencySignalEnabled': ?externalEmergencySignalEnabled,
      'externalEmergencySignalFingerprint': ?externalEmergencySignalFingerprint,
      'externalEmergencySignalInterval': ?externalEmergencySignalInterval,
      'externalEmergencySignalUrl': ?externalEmergencySignalUrl,
      'gatewayProxyEnabled': ?gatewayProxyEnabled,
      'gatewayUdpProxyEnabled': ?gatewayUdpProxyEnabled,
      'rootCertificateInstallationEnabled': ?rootCertificateInstallationEnabled,
      'useZtVirtualIp': ?useZtVirtualIp,
    };
  }

  factory ZeroTrustDeviceSettingsState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDeviceSettingsState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disableForTime: (() { final guardedValue = map['disableForTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      externalEmergencySignalEnabled: (() { final guardedValue = map['externalEmergencySignalEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      externalEmergencySignalFingerprint: (() { final guardedValue = map['externalEmergencySignalFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalEmergencySignalInterval: (() { final guardedValue = map['externalEmergencySignalInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalEmergencySignalUrl: (() { final guardedValue = map['externalEmergencySignalUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayProxyEnabled: (() { final guardedValue = map['gatewayProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gatewayUdpProxyEnabled: (() { final guardedValue = map['gatewayUdpProxyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rootCertificateInstallationEnabled: (() { final guardedValue = map['rootCertificateInstallationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      useZtVirtualIp: (() { final guardedValue = map['useZtVirtualIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
