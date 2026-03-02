// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OauthClient resources.
class OauthClientState {
  /// Required. The list of OAuth grant types is allowed for the OauthClient.
  final pulumi.Input<List<String>>? allowedGrantTypes;
  /// Required. The list of redirect uris that is allowed to redirect back
  /// when authorization process is completed.
  final pulumi.Input<List<String>>? allowedRedirectUris;
  /// Required. The list of scopes that the OauthClient is allowed to request during
  /// OAuth flows.
  /// The following scopes are supported:
  /// * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure,
  /// and delete your Google Cloud data and see the email address for your Google
  /// Account.
  final pulumi.Input<List<String>>? allowedScopes;
  /// Output only. The system-generated OauthClient id.
  final pulumi.Input<String>? clientId;
  /// Immutable. The type of OauthClient. Either public or private.
  /// For private clients, the client secret can be managed using the dedicated
  /// OauthClientCredential resource.
  /// Possible values:
  /// CLIENT_TYPE_UNSPECIFIED
  /// PUBLIC_CLIENT
  /// CONFIDENTIAL_CLIENT
  final pulumi.Input<String>? clientType;
  /// A user-specified description of the OauthClient.
  /// Cannot exceed 256 characters.
  final pulumi.Input<String>? description;
  /// Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// client.
  final pulumi.Input<bool>? disabled;
  /// A user-specified display name of the OauthClient.
  /// Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// Time after which the OauthClient will be permanently purged and cannot
  /// be recovered.
  final pulumi.Input<String>? expireTime;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Immutable. Identifier. The resource name of the OauthClient.
  /// Format:`projects/{project}/locations/{location}/oauthClients/{oauth_client}`.
  final pulumi.Input<String>? name;
  /// Required. The ID to use for the OauthClient, which becomes the final component of
  /// the resource name. This value should be a string of 6 to 63 lowercase
  /// letters, digits, or hyphens. It must start with a letter, and cannot have a
  /// trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may
  /// not be specified.
  final pulumi.Input<String>? oauthClientId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The state of the OauthClient.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// DELETED
  final pulumi.Input<String>? state;

  /// Creates a new [OauthClientState].
  /// [allowedGrantTypes] Required. The list of OAuth grant types is allowed for the OauthClient.
  /// [allowedRedirectUris] Required. The list of redirect uris that is allowed to redirect back
  /// [allowedScopes] Required. The list of scopes that the OauthClient is allowed to request during
  /// [clientId] Output only. The system-generated OauthClient id.
  /// [clientType] Immutable. The type of OauthClient. Either public or private.
  /// [description] A user-specified description of the OauthClient.
  /// [disabled] Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// [displayName] A user-specified display name of the OauthClient.
  /// [expireTime] Time after which the OauthClient will be permanently purged and cannot
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Immutable. Identifier. The resource name of the OauthClient.
  /// [oauthClientId] Required. The ID to use for the OauthClient, which becomes the final component of
  /// [project] The ID of the project in which the resource belongs.
  /// [state] The state of the OauthClient.
  OauthClientState({
    this.allowedGrantTypes,
    this.allowedRedirectUris,
    this.allowedScopes,
    this.clientId,
    this.clientType,
    this.description,
    this.disabled,
    this.displayName,
    this.expireTime,
    this.location,
    this.name,
    this.oauthClientId,
    this.project,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedGrantTypes': ?allowedGrantTypes,
      'allowedRedirectUris': ?allowedRedirectUris,
      'allowedScopes': ?allowedScopes,
      'clientId': ?clientId,
      'clientType': ?clientType,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'expireTime': ?expireTime,
      'location': ?location,
      'name': ?name,
      'oauthClientId': ?oauthClientId,
      'project': ?project,
      'state': ?state,
    };
  }

  factory OauthClientState.fromMap(Map<String, dynamic> map) {
    return OauthClientState(
      allowedGrantTypes: map['allowedGrantTypes'] == null ? null : ((map['allowedGrantTypes'] as List).cast<String>()).input(),
      allowedRedirectUris: map['allowedRedirectUris'] == null ? null : ((map['allowedRedirectUris'] as List).cast<String>()).input(),
      allowedScopes: map['allowedScopes'] == null ? null : ((map['allowedScopes'] as List).cast<String>()).input(),
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      clientType: map['clientType'] == null ? null : (map['clientType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      expireTime: map['expireTime'] == null ? null : (map['expireTime'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      oauthClientId: map['oauthClientId'] == null ? null : (map['oauthClientId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
    );
  }
}

