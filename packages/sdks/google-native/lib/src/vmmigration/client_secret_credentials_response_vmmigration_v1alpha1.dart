// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Message describing Azure Credentials using tenant ID, client ID and secret.
class ClientSecretCredentialsResponseVmmigrationV1alpha1 {
  /// Azure client ID.
  final pulumi.Input<String> clientId;
  /// Input only. Azure client secret.
  final pulumi.Input<String> clientSecret;
  /// Azure tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [ClientSecretCredentialsResponseVmmigrationV1alpha1].
  /// [clientId] Azure client ID.
  /// [clientSecret] Input only. Azure client secret.
  /// [tenantId] Azure tenant ID.
  ClientSecretCredentialsResponseVmmigrationV1alpha1({
    required this.clientId,
    required this.clientSecret,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'tenantId': tenantId,
    };
  }

  factory ClientSecretCredentialsResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ClientSecretCredentialsResponseVmmigrationV1alpha1(
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

