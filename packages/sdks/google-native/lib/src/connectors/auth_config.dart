// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_auth_type.dart';
import 'config_variable.dart';
import 'oauth2_auth_code_flow.dart';
import 'oauth2_client_credentials.dart';
import 'oauth2_jwt_bearer.dart';
import 'ssh_public_key.dart';
import 'user_password.dart';

/// AuthConfig defines details of a authentication type.
class AuthConfig {
  /// List containing additional auth configs.
  final pulumi.Input<List<ConfigVariable>>? additionalVariables;

  /// Identifier key for auth config
  final pulumi.Input<String>? authKey;

  /// The type of authentication configured.
  final pulumi.Input<AuthConfigAuthType>? authType;

  /// Oauth2AuthCodeFlow.
  final pulumi.Input<Oauth2AuthCodeFlow>? oauth2AuthCodeFlow;

  /// Oauth2ClientCredentials.
  final pulumi.Input<Oauth2ClientCredentials>? oauth2ClientCredentials;

  /// Oauth2JwtBearer.
  final pulumi.Input<Oauth2JwtBearer>? oauth2JwtBearer;

  /// SSH Public Key.
  final pulumi.Input<SshPublicKey>? sshPublicKey;

  /// UserPassword.
  final pulumi.Input<UserPassword>? userPassword;

  /// Creates a new [AuthConfig].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] Identifier key for auth config
  /// [authType] The type of authentication configured.
  /// [oauth2AuthCodeFlow] Oauth2AuthCodeFlow.
  /// [oauth2ClientCredentials] Oauth2ClientCredentials.
  /// [oauth2JwtBearer] Oauth2JwtBearer.
  /// [sshPublicKey] SSH Public Key.
  /// [userPassword] UserPassword.
  AuthConfig({
    this.additionalVariables,
    this.authKey,
    this.authType,
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
            List<ConfigVariable>,
            List<Map<String, dynamic>>
          >(
            additionalVariables,
            (value) =>
                pulumi.Input.encodeList<ConfigVariable, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'authKey': ?authKey,
      'authType':
          ?pulumi.Input.mapOptionalInputValue<AuthConfigAuthType, String>(
            authType,
            (value) => value.wireValue,
          ),
      'oauth2AuthCodeFlow':
          ?pulumi.Input.mapOptionalInputValue<
            Oauth2AuthCodeFlow,
            Map<String, dynamic>
          >(oauth2AuthCodeFlow, (value) => value.toMap()),
      'oauth2ClientCredentials':
          ?pulumi.Input.mapOptionalInputValue<
            Oauth2ClientCredentials,
            Map<String, dynamic>
          >(oauth2ClientCredentials, (value) => value.toMap()),
      'oauth2JwtBearer':
          ?pulumi.Input.mapOptionalInputValue<
            Oauth2JwtBearer,
            Map<String, dynamic>
          >(oauth2JwtBearer, (value) => value.toMap()),
      'sshPublicKey':
          ?pulumi.Input.mapOptionalInputValue<
            SshPublicKey,
            Map<String, dynamic>
          >(sshPublicKey, (value) => value.toMap()),
      'userPassword':
          ?pulumi.Input.mapOptionalInputValue<
            UserPassword,
            Map<String, dynamic>
          >(userPassword, (value) => value.toMap()),
    };
  }

  factory AuthConfig.fromMap(Map<String, dynamic> map) {
    return AuthConfig(
      additionalVariables: (() {
        final guardedValue = map['additionalVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ConfigVariable>(
            guardedValue,
            (value) =>
                ConfigVariable.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      authKey: (() {
        final guardedValue = map['authKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      authType: (() {
        final guardedValue = map['authType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AuthConfigAuthType.fromValue(guardedValue as String),
        );
      })(),
      oauth2AuthCodeFlow: (() {
        final guardedValue = map['oauth2AuthCodeFlow'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Oauth2AuthCodeFlow.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2ClientCredentials: (() {
        final guardedValue = map['oauth2ClientCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Oauth2ClientCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      oauth2JwtBearer: (() {
        final guardedValue = map['oauth2JwtBearer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          Oauth2JwtBearer.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sshPublicKey: (() {
        final guardedValue = map['sshPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SshPublicKey.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      userPassword: (() {
        final guardedValue = map['userPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserPassword.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
