// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DevicePostureIntegrationConfig {
  /// If present, this id will be passed in the `CF-Access-Client-ID` header when hitting the `apiUrl`.
  final pulumi.Input<String?>? accessClientId;
  /// If present, this secret will be passed in the `CF-Access-Client-Secret` header when hitting the `apiUrl`.
  final pulumi.Input<String?>? accessClientSecret;
  /// The Workspace One API URL provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String?>? apiUrl;
  /// The Workspace One Authorization URL depending on your region.
  final pulumi.Input<String?>? authUrl;
  /// The Workspace One client ID provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String?>? clientId;
  /// The Uptycs client secret.
  final pulumi.Input<String?>? clientKey;
  /// The Workspace One client secret provided in the Workspace One Admin Dashboard.
  final pulumi.Input<String?>? clientSecret;
  /// The Crowdstrike customer ID.
  final pulumi.Input<String?>? customerId;

  /// Creates a new [DevicePostureIntegrationConfig].
  /// [accessClientId] If present, this id will be passed in the `CF-Access-Client-ID` header when hitting the `apiUrl`.
  /// [accessClientSecret] If present, this secret will be passed in the `CF-Access-Client-Secret` header when hitting the `apiUrl`.
  /// [apiUrl] The Workspace One API URL provided in the Workspace One Admin Dashboard.
  /// [authUrl] The Workspace One Authorization URL depending on your region.
  /// [clientId] The Workspace One client ID provided in the Workspace One Admin Dashboard.
  /// [clientKey] The Uptycs client secret.
  /// [clientSecret] The Workspace One client secret provided in the Workspace One Admin Dashboard.
  /// [customerId] The Crowdstrike customer ID.
  const DevicePostureIntegrationConfig({
    this.accessClientId,
    this.accessClientSecret,
    this.apiUrl,
    this.authUrl,
    this.clientId,
    this.clientKey,
    this.clientSecret,
    this.customerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessClientId': ?accessClientId,
      'accessClientSecret': ?accessClientSecret,
      'apiUrl': ?apiUrl,
      'authUrl': ?authUrl,
      'clientId': ?clientId,
      'clientKey': ?clientKey,
      'clientSecret': ?clientSecret,
      'customerId': ?customerId,
    };
  }

  factory DevicePostureIntegrationConfig.fromMap(Map<String, dynamic> map) {
    return DevicePostureIntegrationConfig(
      accessClientId: (() { final guardedValue = map['accessClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accessClientSecret: (() { final guardedValue = map['accessClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      apiUrl: (() { final guardedValue = map['apiUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authUrl: (() { final guardedValue = map['authUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientKey: (() { final guardedValue = map['clientKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerId: (() { final guardedValue = map['customerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
