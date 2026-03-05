// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_auth.dart';
import 'service_account.dart';

/// The credential used by Deployment Manager and TypeProvider. Only one of the options is permitted.
class Credential {
  /// Basic Auth Credential, only used by TypeProvider.
  final pulumi.Input<BasicAuth>? basicAuth;
  /// Service Account Credential, only used by Deployment.
  final pulumi.Input<ServiceAccount>? serviceAccount;
  /// Specify to use the project default credential, only supported by Deployment.
  final pulumi.Input<bool>? useProjectDefault;

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
      'basicAuth': ?pulumi.Input.mapOptionalInputValue<BasicAuth, Map<String, dynamic>>(basicAuth, (value) => value.toMap()),
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'useProjectDefault': ?useProjectDefault,
    };
  }

  factory Credential.fromMap(Map<String, dynamic> map) {
    return Credential(
      basicAuth: (() { final guardedValue = map['basicAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicAuth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      useProjectDefault: (() { final guardedValue = map['useProjectDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

