// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDevicePostureIntegrationConfig {
  /// The Workspace One API URL provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String> apiUrl;
  /// The Workspace One Authorization URL depending on your region.
  final pulumi.Input<String> authUrl;
  /// The Workspace One client ID provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetZeroTrustDevicePostureIntegrationConfig].
  /// [apiUrl] The Workspace One API URL provided in the Workspace One Admin Dashboard.
  /// [authUrl] The Workspace One Authorization URL depending on your region.
  /// [clientId] The Workspace One client ID provided in the Workspace One Admin Dashboard.
  const GetZeroTrustDevicePostureIntegrationConfig({
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

  factory GetZeroTrustDevicePostureIntegrationConfig.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDevicePostureIntegrationConfig(
      apiUrl: pulumi.Input.fromValue(map['apiUrl'] as String),
      authUrl: pulumi.Input.fromValue(map['authUrl'] as String),
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
    );
  }
}
