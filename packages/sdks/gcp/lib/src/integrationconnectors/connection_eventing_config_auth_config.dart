// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_eventing_config_auth_config_additional_variable.dart';
import 'connection_eventing_config_auth_config_user_password.dart';

class ConnectionEventingConfigAuthConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionEventingConfigAuthConfigAdditionalVariable>>? additionalVariables;
  /// The type of authentication configured.
  final pulumi.Input<String>? authKey;
  /// authType of the Connection
  /// Possible values are: `USER_PASSWORD`.
  final pulumi.Input<String> authType;
  /// User password for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionEventingConfigAuthConfigUserPassword> userPassword;

  /// Creates a new [ConnectionEventingConfigAuthConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] The type of authentication configured.
  /// [authType] authType of the Connection
  /// [userPassword] User password for Authentication.
  const ConnectionEventingConfigAuthConfig({
    this.additionalVariables,
    this.authKey,
    required this.authType,
    required this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionEventingConfigAuthConfigAdditionalVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConnectionEventingConfigAuthConfigAdditionalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authKey': ?authKey,
      'authType': authType,
      'userPassword': pulumi.Input.mapInputValue<ConnectionEventingConfigAuthConfigUserPassword, Map<String, dynamic>>(userPassword, (value) => value.toMap()),
    };
  }

  factory ConnectionEventingConfigAuthConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionEventingConfigAuthConfig(
      additionalVariables: (() { final guardedValue = map['additionalVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionEventingConfigAuthConfigAdditionalVariable>(guardedValue, (value) => ConnectionEventingConfigAuthConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      authKey: (() { final guardedValue = map['authKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      userPassword: pulumi.Input.fromValue(ConnectionEventingConfigAuthConfigUserPassword.fromMap((map['userPassword']! as Map).cast<String, dynamic>())),
    );
  }
}

