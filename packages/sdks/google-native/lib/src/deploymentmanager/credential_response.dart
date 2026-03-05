// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_auth_response.dart';
import 'service_account_response.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class CredentialResponse {
  /// Basic Auth Credential, only used by TypeProvider.
  final pulumi.Input<BasicAuthResponse> basicAuth;
  /// Service Account Credential, only used by Deployment.
  final pulumi.Input<ServiceAccountResponse> serviceAccount;
  /// Specify to use the project default credential, only supported by Deployment.
  final pulumi.Input<bool> useProjectDefault;

  /// Creates a new [CredentialResponse].
  /// [basicAuth] Basic Auth Credential, only used by TypeProvider.
  /// [serviceAccount] Service Account Credential, only used by Deployment.
  /// [useProjectDefault] Specify to use the project default credential, only supported by Deployment.
  CredentialResponse({
    required this.basicAuth,
    required this.serviceAccount,
    required this.useProjectDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': pulumi.Input.mapInputValue<BasicAuthResponse, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'serviceAccount': pulumi.Input.mapInputValue<ServiceAccountResponse, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'useProjectDefault': useProjectDefault,
    };
  }

  factory CredentialResponse.fromMap(Map<String, dynamic> map) {
    return CredentialResponse(
      basicAuth: pulumi.Input.fromValue(BasicAuthResponse.fromMap((map['basicAuth']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(ServiceAccountResponse.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())),
      useProjectDefault: pulumi.Input.fromValue(map['useProjectDefault'] as bool),
    );
  }
}

