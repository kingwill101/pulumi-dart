// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Enable AAD authentication for SQL VM.
class AADAuthenticationSettings {
  /// The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity
  final pulumi.Input<String>? clientId;

  /// Creates a new [AADAuthenticationSettings].
  /// [clientId] The client Id of the Managed Identity to query Microsoft Graph API. An empty string must be used for the system assigned Managed Identity
  AADAuthenticationSettings({
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
    };
  }

  factory AADAuthenticationSettings.fromMap(Map<String, dynamic> map) {
    return AADAuthenticationSettings(
      clientId: map['clientId'] == null ? null : (map['clientId']! as String).input(),
    );
  }
}

