// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the registration for the Azure Static Web Apps provider
class AzureStaticWebAppsRegistrationResponse {
  /// The Client ID of the app used for login.
  final pulumi.Input<String>? clientId;

  /// Creates a new [AzureStaticWebAppsRegistrationResponse].
  /// [clientId] The Client ID of the app used for login.
  AzureStaticWebAppsRegistrationResponse({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory AzureStaticWebAppsRegistrationResponse.fromMap(Map<String, dynamic> map) {
    return AzureStaticWebAppsRegistrationResponse(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
    );
  }
}

