// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing Azure Credentials using tenant ID, client ID and secret.
class ClientSecretCredentials {
  /// Azure client ID.
  final pulumi.Input<String>? clientId;
  /// Input only. Azure client secret.
  final pulumi.Input<String>? clientSecret;
  /// Azure tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ClientSecretCredentials].
  /// [clientId] Azure client ID.
  /// [clientSecret] Input only. Azure client secret.
  /// [tenantId] Azure tenant ID.
  const ClientSecretCredentials({
    this.clientId,
    this.clientSecret,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'tenantId': ?tenantId,
    };
  }

  factory ClientSecretCredentials.fromMap(Map<String, dynamic> map) {
    return ClientSecretCredentials(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
