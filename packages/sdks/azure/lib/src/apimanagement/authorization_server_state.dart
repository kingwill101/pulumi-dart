// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_server_token_body_parameter.dart';

/// Input properties used for looking up and filtering AuthorizationServer resources.
class AuthorizationServerState {
  /// The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? apiManagementName;
  /// The OAUTH Authorization Endpoint.
  final pulumi.Input<String>? authorizationEndpoint;
  /// The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`.
  ///
  /// &gt; **Note:** `GET` must always be present.
  final pulumi.Input<List<String>>? authorizationMethods;
  /// The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`.
  final pulumi.Input<List<String>>? bearerTokenSendingMethods;
  /// The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`.
  final pulumi.Input<List<String>>? clientAuthenticationMethods;
  /// The Client/App ID registered with this Authorization Server.
  final pulumi.Input<String>? clientId;
  /// The URI of page where Client/App Registration is performed for this Authorization Server.
  final pulumi.Input<String>? clientRegistrationEndpoint;
  /// The Client/App Secret registered with this Authorization Server.
  final pulumi.Input<String>? clientSecret;
  /// The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values.
  final pulumi.Input<String>? defaultScope;
  /// A description of the Authorization Server, which may contain HTML formatting tags.
  final pulumi.Input<String>? description;
  /// The user-friendly name of this Authorization Server.
  final pulumi.Input<String>? displayName;
  /// Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`.
  final pulumi.Input<List<String>>? grantTypes;
  /// The name of this Authorization Server. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The password associated with the Resource Owner.
  ///
  /// &gt; **Note:** This can only be specified when `grant_type` includes `resourceOwnerPassword`.
  final pulumi.Input<String>? resourceOwnerPassword;
  /// The username associated with the Resource Owner.
  ///
  /// &gt; **Note:** This can only be specified when `grant_type` includes `resourceOwnerPassword`.
  final pulumi.Input<String>? resourceOwnerUsername;
  /// Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security.
  final pulumi.Input<bool>? supportState;
  /// A `token_body_parameter` block as defined below.
  final pulumi.Input<List<AuthorizationServerTokenBodyParameter>>? tokenBodyParameters;
  /// The OAUTH Token Endpoint.
  final pulumi.Input<String>? tokenEndpoint;

  /// Creates a new [AuthorizationServerState].
  /// [apiManagementName] The name of the API Management Service in which this Authorization Server should be created. Changing this forces a new resource to be created.
  /// [authorizationEndpoint] The OAUTH Authorization Endpoint.
  /// [authorizationMethods] The HTTP Verbs supported by the Authorization Endpoint. Possible values are `DELETE`, `GET`, `HEAD`, `OPTIONS`, `PATCH`, `POST`, `PUT` and `TRACE`.
  /// [bearerTokenSendingMethods] The mechanism by which Access Tokens are passed to the API. Possible values are `authorizationHeader` and `query`.
  /// [clientAuthenticationMethods] The Authentication Methods supported by the Token endpoint of this Authorization Server.. Possible values are `Basic` and `Body`.
  /// [clientId] The Client/App ID registered with this Authorization Server.
  /// [clientRegistrationEndpoint] The URI of page where Client/App Registration is performed for this Authorization Server.
  /// [clientSecret] The Client/App Secret registered with this Authorization Server.
  /// [defaultScope] The Default Scope used when requesting an Access Token, specified as a string containing space-delimited values.
  /// [description] A description of the Authorization Server, which may contain HTML formatting tags.
  /// [displayName] The user-friendly name of this Authorization Server.
  /// [grantTypes] Form of Authorization Grants required when requesting an Access Token. Possible values are `authorizationCode`, `clientCredentials`, `implicit` and `resourceOwnerPassword`.
  /// [name] The name of this Authorization Server. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group in which the API Management Service exists. Changing this forces a new resource to be created.
  /// [resourceOwnerPassword] The password associated with the Resource Owner.
  /// [resourceOwnerUsername] The username associated with the Resource Owner.
  /// [supportState] Does this Authorization Server support State? If this is set to `true` the client may use the state parameter to raise protocol security.
  /// [tokenBodyParameters] A `token_body_parameter` block as defined below.
  /// [tokenEndpoint] The OAUTH Token Endpoint.
  AuthorizationServerState({
    this.apiManagementName,
    this.authorizationEndpoint,
    this.authorizationMethods,
    this.bearerTokenSendingMethods,
    this.clientAuthenticationMethods,
    this.clientId,
    this.clientRegistrationEndpoint,
    this.clientSecret,
    this.defaultScope,
    this.description,
    this.displayName,
    this.grantTypes,
    this.name,
    this.resourceGroupName,
    this.resourceOwnerPassword,
    this.resourceOwnerUsername,
    this.supportState,
    this.tokenBodyParameters,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementName': ?apiManagementName,
      'authorizationEndpoint': ?authorizationEndpoint,
      'authorizationMethods': ?authorizationMethods,
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'clientAuthenticationMethods': ?clientAuthenticationMethods,
      'clientId': ?clientId,
      'clientRegistrationEndpoint': ?clientRegistrationEndpoint,
      'clientSecret': ?clientSecret,
      'defaultScope': ?defaultScope,
      'description': ?description,
      'displayName': ?displayName,
      'grantTypes': ?grantTypes,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceOwnerPassword': ?resourceOwnerPassword,
      'resourceOwnerUsername': ?resourceOwnerUsername,
      'supportState': ?supportState,
      'tokenBodyParameters': ?pulumi.Input.mapOptionalInputValue<List<AuthorizationServerTokenBodyParameter>, List<Map<String, dynamic>>>(tokenBodyParameters, (value) => pulumi.Input.encodeList<AuthorizationServerTokenBodyParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory AuthorizationServerState.fromMap(Map<String, dynamic> map) {
    return AuthorizationServerState(
      apiManagementName: (() { final guardedValue = map['apiManagementName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationEndpoint: (() { final guardedValue = map['authorizationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      authorizationMethods: (() { final guardedValue = map['authorizationMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      bearerTokenSendingMethods: (() { final guardedValue = map['bearerTokenSendingMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientAuthenticationMethods: (() { final guardedValue = map['clientAuthenticationMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientRegistrationEndpoint: (() { final guardedValue = map['clientRegistrationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultScope: (() { final guardedValue = map['defaultScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grantTypes: (() { final guardedValue = map['grantTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOwnerPassword: (() { final guardedValue = map['resourceOwnerPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceOwnerUsername: (() { final guardedValue = map['resourceOwnerUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportState: (() { final guardedValue = map['supportState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tokenBodyParameters: (() { final guardedValue = map['tokenBodyParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthorizationServerTokenBodyParameter>(guardedValue, (value) => AuthorizationServerTokenBodyParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

