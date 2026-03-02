// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing Azure Credentials using tenant ID, client ID and secret.
class ClientSecretCredentialsVmmigrationV1alpha1 {
  /// Azure client ID.
  final pulumi.Input<String>? clientId;
  /// Input only. Azure client secret.
  final pulumi.Input<String>? clientSecret;
  /// Azure tenant ID.
  final pulumi.Input<String>? tenantId;

  /// Creates a new [ClientSecretCredentialsVmmigrationV1alpha1].
  /// [clientId] Azure client ID.
  /// [clientSecret] Input only. Azure client secret.
  /// [tenantId] Azure tenant ID.
  ClientSecretCredentialsVmmigrationV1alpha1({
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

  factory ClientSecretCredentialsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ClientSecretCredentialsVmmigrationV1alpha1(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret'] as String).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
    );
  }
}

