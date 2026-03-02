// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable AAD authentication for SQL VM.
class AADAuthenticationSettingsResponse {
  /// The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity
  final pulumi.Input<String>? clientId;

  /// Creates a new [AADAuthenticationSettingsResponse].
  /// [clientId] The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity
  AADAuthenticationSettingsResponse({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory AADAuthenticationSettingsResponse.fromMap(Map<String, dynamic> map) {
    return AADAuthenticationSettingsResponse(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
    );
  }
}

