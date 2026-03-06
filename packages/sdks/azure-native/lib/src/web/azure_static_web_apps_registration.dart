// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the registration for the Azure Static Web Apps provider
class AzureStaticWebAppsRegistration {
  /// The Client ID of the app used for login.
  final pulumi.Input<String>? clientId;

  /// Creates a new [AzureStaticWebAppsRegistration].
  /// [clientId] The Client ID of the app used for login.
  const AzureStaticWebAppsRegistration({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory AzureStaticWebAppsRegistration.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebAppsRegistration(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

