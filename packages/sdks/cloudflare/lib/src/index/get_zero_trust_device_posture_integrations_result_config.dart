// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDevicePostureIntegrationsResultConfig {
  /// The Workspace One API URL provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String> apiUrl;
  /// The Workspace One Authorization URL depending on your region.
  final pulumi.Input<String> authUrl;
  /// The Workspace One client ID provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetZeroTrustDevicePostureIntegrationsResultConfig].
  /// [apiUrl] The Workspace One API URL provided in the Workspace One Admin Dashboard.
  /// [authUrl] The Workspace One Authorization URL depending on your region.
  /// [clientId] The Workspace One client ID provided in the Workspace One Admin Dashboard.
  const GetZeroTrustDevicePostureIntegrationsResultConfig({
    required this.apiUrl,
    required this.authUrl,
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiUrl': apiUrl,
      'authUrl': authUrl,
      'clientId': clientId,
    };
  }

  factory GetZeroTrustDevicePostureIntegrationsResultConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureIntegrationsResultConfig(
      apiUrl: pulumi.Input.fromValue(map['apiUrl'] as String),
      authUrl: pulumi.Input.fromValue(map['authUrl'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
    );
  }
}
