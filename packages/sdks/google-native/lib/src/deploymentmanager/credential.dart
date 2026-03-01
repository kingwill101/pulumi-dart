// ignore_for_file: unused_element, unnecessary_cast

import 'basic_auth.dart';
import 'service_account.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class Credential {
  /// Basic Auth Credential, only used by TypeProvider.
  final BasicAuth? basicAuth;
  /// Service Account Credential, only used by Deployment.
  final ServiceAccount? serviceAccount;
  /// Specify to use the project default credential, only supported by Deployment.
  final bool? useProjectDefault;

  /// Creates a new [Credential].
  /// [basicAuth] Basic Auth Credential, only used by TypeProvider.
  /// [serviceAccount] Service Account Credential, only used by Deployment.
  /// [useProjectDefault] Specify to use the project default credential, only supported by Deployment.
  Credential({
    this.basicAuth,
    this.serviceAccount,
    this.useProjectDefault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth': ?basicAuth == null ? null : basicAuth!.toMap(),
      'serviceAccount': ?serviceAccount == null ? null : serviceAccount!.toMap(),
      'useProjectDefault': ?useProjectDefault,
    };
  }

  factory Credential.fromMap(Map<String, dynamic> map) {
    return Credential(
      basicAuth: map['basicAuth'] == null ? null : BasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>()),
      serviceAccount: map['serviceAccount'] == null ? null : ServiceAccount.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
      useProjectDefault: map['useProjectDefault'] == null ? null : map['useProjectDefault'] as bool,
    );
  }
}

