// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_auth_config_additional_variable.dart';
import 'connection_auth_config_oauth2_auth_code_flow.dart';
import 'connection_auth_config_oauth2_client_credentials.dart';
import 'connection_auth_config_oauth2_jwt_bearer.dart';
import 'connection_auth_config_ssh_public_key.dart';
import 'connection_auth_config_user_password.dart';

class ConnectionAuthConfig {
  /// List containing additional auth configs.
  /// Structure is documented below.
  final pulumi.Input<List<ConnectionAuthConfigAdditionalVariable>>? additionalVariables;
  /// The type of authentication configured.
  final pulumi.Input<String>? authKey;
  /// authType of the Connection
  /// Possible values are: `USER_PASSWORD`.
  final pulumi.Input<String> authType;
  /// Parameters to support Oauth 2.0 Auth Code Grant Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigOauth2AuthCodeFlow>? oauth2AuthCodeFlow;
  /// OAuth3 Client Credentials for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigOauth2ClientCredentials>? oauth2ClientCredentials;
  /// OAuth2 JWT Bearer for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigOauth2JwtBearer>? oauth2JwtBearer;
  /// SSH Public Key for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigSshPublicKey>? sshPublicKey;
  /// User password for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigUserPassword>? userPassword;

  /// Creates a new [ConnectionAuthConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] The type of authentication configured.
  /// [authType] authType of the Connection
  /// [oauth2AuthCodeFlow] Parameters to support Oauth 2.0 Auth Code Grant Authentication.
  /// [oauth2ClientCredentials] OAuth3 Client Credentials for Authentication.
  /// [oauth2JwtBearer] OAuth2 JWT Bearer for Authentication.
  /// [sshPublicKey] SSH Public Key for Authentication.
  /// [userPassword] User password for Authentication.
  ConnectionAuthConfig({
    this.additionalVariables,
    this.authKey,
    required this.authType,
    this.oauth2AuthCodeFlow,
    this.oauth2ClientCredentials,
    this.oauth2JwtBearer,
    this.sshPublicKey,
    this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': ?pulumi.Input.mapOptionalInputValue<List<ConnectionAuthConfigAdditionalVariable>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConnectionAuthConfigAdditionalVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authKey': ?authKey,
      'authType': authType,
      'oauth2AuthCodeFlow': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2AuthCodeFlow, Map<String, dynamic>>(oauth2AuthCodeFlow, (value) => value.toMap()),
      'oauth2ClientCredentials': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2ClientCredentials, Map<String, dynamic>>(oauth2ClientCredentials, (value) => value.toMap()),
      'oauth2JwtBearer': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigOauth2JwtBearer, Map<String, dynamic>>(oauth2JwtBearer, (value) => value.toMap()),
      'sshPublicKey': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigSshPublicKey, Map<String, dynamic>>(sshPublicKey, (value) => value.toMap()),
      'userPassword': ?pulumi.Input.mapOptionalInputValue<ConnectionAuthConfigUserPassword, Map<String, dynamic>>(userPassword, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfig(
      additionalVariables: map['additionalVariables'] == null ? null : (pulumi.Input.decodeList<ConnectionAuthConfigAdditionalVariable>(map['additionalVariables'], (value) => ConnectionAuthConfigAdditionalVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authKey: map['authKey'] == null ? null : (map['authKey'] as String).input(),
      authType: (map['authType'] as String).input(),
      oauth2AuthCodeFlow: map['oauth2AuthCodeFlow'] == null ? null : (ConnectionAuthConfigOauth2AuthCodeFlow.fromMap((map['oauth2AuthCodeFlow'] as Map).cast<String, dynamic>())).input(),
      oauth2ClientCredentials: map['oauth2ClientCredentials'] == null ? null : (ConnectionAuthConfigOauth2ClientCredentials.fromMap((map['oauth2ClientCredentials'] as Map).cast<String, dynamic>())).input(),
      oauth2JwtBearer: map['oauth2JwtBearer'] == null ? null : (ConnectionAuthConfigOauth2JwtBearer.fromMap((map['oauth2JwtBearer'] as Map).cast<String, dynamic>())).input(),
      sshPublicKey: map['sshPublicKey'] == null ? null : (ConnectionAuthConfigSshPublicKey.fromMap((map['sshPublicKey'] as Map).cast<String, dynamic>())).input(),
      userPassword: map['userPassword'] == null ? null : (ConnectionAuthConfigUserPassword.fromMap((map['userPassword'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

