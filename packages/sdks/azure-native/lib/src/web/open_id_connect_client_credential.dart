// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_credential_method.dart';

/// The authentication client credentials of the custom Open ID Connect provider.
class OpenIdConnectClientCredential {
  /// The app setting that contains the client secret for the custom Open ID Connect provider.
  final pulumi.Input<String>? clientSecretSettingName;
  /// The method that should be used to authenticate the user.
  final pulumi.Input<ClientCredentialMethod>? method;

  /// Creates a new [OpenIdConnectClientCredential].
  /// [clientSecretSettingName] The app setting that contains the client secret for the custom Open ID Connect provider.
  /// [method] The method that should be used to authenticate the user.
  OpenIdConnectClientCredential({
    this.clientSecretSettingName,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecretSettingName': ?clientSecretSettingName,
      'method': ?pulumi.Input.mapOptionalInputValue<ClientCredentialMethod, String>(method, (value) => value.wireValue),
    };
  }

  factory OpenIdConnectClientCredential.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectClientCredential(
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientCredentialMethod.fromValue(guardedValue as String)); })(),
    );
  }
}

