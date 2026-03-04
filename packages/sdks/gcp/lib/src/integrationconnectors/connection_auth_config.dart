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
  final pulumi.Input<List<ConnectionAuthConfigAdditionalVariable>>?
  additionalVariables;

  /// The type of authentication configured.
  final pulumi.Input<String>? authKey;

  /// authType of the Connection
  /// Possible values are: `USER_PASSWORD`.
  final pulumi.Input<String> authType;

  /// Parameters to support Oauth 2.0 Auth Code Grant Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigOauth2AuthCodeFlow>?
  oauth2AuthCodeFlow;

  /// OAuth3 Client Credentials for Authentication.
  /// Structure is documented below.
  final pulumi.Input<ConnectionAuthConfigOauth2ClientCredentials>?
  oauth2ClientCredentials;

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
      'additionalVariables':
          ?pulumi.Input.mapOptionalInputValue<
            List<ConnectionAuthConfigAdditionalVariable>,
            List<Map<String, dynamic>>
          >(
            additionalVariables,
            (value) =>
                pulumi.Input.encodeList<
                  ConnectionAuthConfigAdditionalVariable,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'authKey': ?authKey,
      'authType': authType,
      'oauth2AuthCodeFlow':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthConfigOauth2AuthCodeFlow,
            Map<String, dynamic>
          >(oauth2AuthCodeFlow, (value) => value.toMap()),
      'oauth2ClientCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthConfigOauth2ClientCredentials,
            Map<String, dynamic>
          >(oauth2ClientCredentials, (value) => value.toMap()),
      'oauth2JwtBearer':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthConfigOauth2JwtBearer,
            Map<String, dynamic>
          >(oauth2JwtBearer, (value) => value.toMap()),
      'sshPublicKey':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthConfigSshPublicKey,
            Map<String, dynamic>
          >(sshPublicKey, (value) => value.toMap()),
      'userPassword':
          ?pulumi.Input.mapOptionalInputValue<
            ConnectionAuthConfigUserPassword,
            Map<String, dynamic>
          >(userPassword, (value) => value.toMap()),
    };
  }

  factory ConnectionAuthConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthConfig(
      additionalVariables: (() {
        final guardedValue = map['additionalVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConnectionAuthConfigAdditionalVariable>(
            guardedValue,
            (value) => ConnectionAuthConfigAdditionalVariable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      authKey: (() {
        final guardedValue = map['authKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      oauth2AuthCodeFlow: (() {
        final guardedValue = map['oauth2AuthCodeFlow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthConfigOauth2AuthCodeFlow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2ClientCredentials: (() {
        final guardedValue = map['oauth2ClientCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthConfigOauth2ClientCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2JwtBearer: (() {
        final guardedValue = map['oauth2JwtBearer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthConfigOauth2JwtBearer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sshPublicKey: (() {
        final guardedValue = map['sshPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthConfigSshPublicKey.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      userPassword: (() {
        final guardedValue = map['userPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ConnectionAuthConfigUserPassword.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
