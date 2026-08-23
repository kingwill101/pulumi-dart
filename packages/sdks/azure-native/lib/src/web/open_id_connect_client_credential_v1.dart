// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'method.dart';

/// The authentication client credentials of the custom Open ID Connect provider.
class OpenIdConnectClientCredentialV1 {
  /// The app setting that contains the client secret for the custom Open ID Connect provider.
  final pulumi.Input<String>? clientSecretSettingName;
  /// The method that should be used to authenticate the user.
  final pulumi.Input<Method>? method;

  /// Creates a new [OpenIdConnectClientCredentialV1].
  /// [clientSecretSettingName] The app setting that contains the client secret for the custom Open ID Connect provider.
  /// [method] The method that should be used to authenticate the user.
  const OpenIdConnectClientCredentialV1({
    this.clientSecretSettingName,
    this.method,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecretSettingName': ?clientSecretSettingName,
      'method': ?pulumi.Input.mapOptionalInputValue<Method, String>(method, (value) => value.wireValue),
    };
  }

  factory OpenIdConnectClientCredentialV1.fromMap(Map<String, dynamic> map) {
    return OpenIdConnectClientCredentialV1(
      clientSecretSettingName: (() { final guardedValue = map['clientSecretSettingName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      method: (() { final guardedValue = map['method']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Method.fromValue(guardedValue as String)); })(),
    );
  }
}
