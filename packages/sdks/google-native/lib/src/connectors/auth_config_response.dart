// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_variable_response.dart';
import 'oauth2_auth_code_flow_response.dart';
import 'oauth2_client_credentials_response.dart';
import 'oauth2_jwt_bearer_response.dart';
import 'ssh_public_key_response.dart';
import 'user_password_response.dart';

/// AuthConfig defines details of a authentication type.
class AuthConfigResponse {
  /// List containing additional auth configs.
  final pulumi.Input<List<ConfigVariableResponse>> additionalVariables;
  /// Identifier key for auth config
  final pulumi.Input<String> authKey;
  /// The type of authentication configured.
  final pulumi.Input<String> authType;
  /// Oauth2AuthCodeFlow.
  final pulumi.Input<Oauth2AuthCodeFlowResponse> oauth2AuthCodeFlow;
  /// Oauth2ClientCredentials.
  final pulumi.Input<Oauth2ClientCredentialsResponse> oauth2ClientCredentials;
  /// Oauth2JwtBearer.
  final pulumi.Input<Oauth2JwtBearerResponse> oauth2JwtBearer;
  /// SSH Public Key.
  final pulumi.Input<SshPublicKeyResponse> sshPublicKey;
  /// UserPassword.
  final pulumi.Input<UserPasswordResponse> userPassword;

  /// Creates a new [AuthConfigResponse].
  /// [additionalVariables] List containing additional auth configs.
  /// [authKey] Identifier key for auth config
  /// [authType] The type of authentication configured.
  /// [oauth2AuthCodeFlow] Oauth2AuthCodeFlow.
  /// [oauth2ClientCredentials] Oauth2ClientCredentials.
  /// [oauth2JwtBearer] Oauth2JwtBearer.
  /// [sshPublicKey] SSH Public Key.
  /// [userPassword] UserPassword.
  const AuthConfigResponse({
    required this.additionalVariables,
    required this.authKey,
    required this.authType,
    required this.oauth2AuthCodeFlow,
    required this.oauth2ClientCredentials,
    required this.oauth2JwtBearer,
    required this.sshPublicKey,
    required this.userPassword,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalVariables': pulumi.Input.mapInputValue<List<ConfigVariableResponse>, List<Map<String, dynamic>>>(additionalVariables, (value) => pulumi.Input.encodeList<ConfigVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authKey': authKey,
      'authType': authType,
      'oauth2AuthCodeFlow': pulumi.Input.mapInputValue<Oauth2AuthCodeFlowResponse, Map<String, dynamic>>(oauth2AuthCodeFlow, (value) => value.toMap()),
      'oauth2ClientCredentials': pulumi.Input.mapInputValue<Oauth2ClientCredentialsResponse, Map<String, dynamic>>(oauth2ClientCredentials, (value) => value.toMap()),
      'oauth2JwtBearer': pulumi.Input.mapInputValue<Oauth2JwtBearerResponse, Map<String, dynamic>>(oauth2JwtBearer, (value) => value.toMap()),
      'sshPublicKey': pulumi.Input.mapInputValue<SshPublicKeyResponse, Map<String, dynamic>>(sshPublicKey, (value) => value.toMap()),
      'userPassword': pulumi.Input.mapInputValue<UserPasswordResponse, Map<String, dynamic>>(userPassword, (value) => value.toMap()),
    };
  }

  factory AuthConfigResponse.fromMap(Map<String, dynamic> map) {
    return AuthConfigResponse(
      additionalVariables: pulumi.Input.fromValue(pulumi.Input.decodeList<ConfigVariableResponse>(map['additionalVariables']!, (value) => ConfigVariableResponse.fromMap((value as Map).cast<String, dynamic>()))),
      authKey: pulumi.Input.fromValue(map['authKey'] as String),
      authType: pulumi.Input.fromValue(map['authType'] as String),
      oauth2AuthCodeFlow: pulumi.Input.fromValue(Oauth2AuthCodeFlowResponse.fromMap((map['oauth2AuthCodeFlow']! as Map).cast<String, dynamic>())),
      oauth2ClientCredentials: pulumi.Input.fromValue(Oauth2ClientCredentialsResponse.fromMap((map['oauth2ClientCredentials']! as Map).cast<String, dynamic>())),
      oauth2JwtBearer: pulumi.Input.fromValue(Oauth2JwtBearerResponse.fromMap((map['oauth2JwtBearer']! as Map).cast<String, dynamic>())),
      sshPublicKey: pulumi.Input.fromValue(SshPublicKeyResponse.fromMap((map['sshPublicKey']! as Map).cast<String, dynamic>())),
      userPassword: pulumi.Input.fromValue(UserPasswordResponse.fromMap((map['userPassword']! as Map).cast<String, dynamic>())),
    );
  }
}

