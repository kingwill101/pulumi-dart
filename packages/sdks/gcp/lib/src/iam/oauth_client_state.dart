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
    pulumi.Output<List<String>>? allowedGrantTypes,
    pulumi.Output<List<String>>? allowedRedirectUris,
    pulumi.Output<List<String>>? allowedScopes,
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? clientType,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? expireTime,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? oauthClientId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
  }) :
      allowedGrantTypes = pulumi.Input.asOptionalInput<List<String>>(allowedGrantTypes),
      allowedRedirectUris = pulumi.Input.asOptionalInput<List<String>>(allowedRedirectUris),
      allowedScopes = pulumi.Input.asOptionalInput<List<String>>(allowedScopes),
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      clientType = pulumi.Input.asOptionalInput<String>(clientType),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      expireTime = pulumi.Input.asOptionalInput<String>(expireTime),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      oauthClientId = pulumi.Input.asOptionalInput<String>(oauthClientId),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state);

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
      allowedGrantTypes: map['allowedGrantTypes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedGrantTypes'] as List).cast<String>()),
      allowedRedirectUris: map['allowedRedirectUris'] == null ? null : pulumi.Output.create<List<String>>((map['allowedRedirectUris'] as List).cast<String>()),
      allowedScopes: map['allowedScopes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedScopes'] as List).cast<String>()),
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      clientType: map['clientType'] == null ? null : pulumi.Output.create<String>(map['clientType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      expireTime: map['expireTime'] == null ? null : pulumi.Output.create<String>(map['expireTime'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      oauthClientId: map['oauthClientId'] == null ? null : pulumi.Output.create<String>(map['oauthClientId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}

