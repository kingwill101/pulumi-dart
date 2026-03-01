// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_oauth_client_oauth_client_args_doc}
/// The set of arguments for OauthClient.
/// {@endtemplate}
/// {@macro pulumi_iam_oauth_client_oauth_client_args_doc}
class OauthClientArgs {
  /// Required. The list of OAuth grant types is allowed for the OauthClient.
  final pulumi.Input<List<String>> allowedGrantTypes;
  /// Required. The list of redirect uris that is allowed to redirect back
  /// when authorization process is completed.
  final pulumi.Input<List<String>> allowedRedirectUris;
  /// Required. The list of scopes that the OauthClient is allowed to request during
  /// OAuth flows.
  /// The following scopes are supported:
  /// * `https://www.googleapis.com/auth/cloud-platform`: See, edit, configure,
  /// and delete your Google Cloud data and see the email address for your Google
  /// Account.
  final pulumi.Input<List<String>> allowedScopes;
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
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Required. The ID to use for the OauthClient, which becomes the final component of
  /// the resource name. This value should be a string of 6 to 63 lowercase
  /// letters, digits, or hyphens. It must start with a letter, and cannot have a
  /// trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may
  /// not be specified.
  final pulumi.Input<String> oauthClientId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [OauthClientArgs].
  /// [allowedGrantTypes] Required. The list of OAuth grant types is allowed for the OauthClient.
  /// [allowedRedirectUris] Required. The list of redirect uris that is allowed to redirect back
  /// [allowedScopes] Required. The list of scopes that the OauthClient is allowed to request during
  /// [clientType] Immutable. The type of OauthClient. Either public or private.
  /// [description] A user-specified description of the OauthClient.
  /// [disabled] Whether the OauthClient is disabled. You cannot use a disabled OAuth
  /// [displayName] A user-specified display name of the OauthClient.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [oauthClientId] Required. The ID to use for the OauthClient, which becomes the final component of
  /// [project] The ID of the project in which the resource belongs.
  OauthClientArgs({
    required pulumi.Output<List<String>> allowedGrantTypes,
    required pulumi.Output<List<String>> allowedRedirectUris,
    required pulumi.Output<List<String>> allowedScopes,
    pulumi.Output<String>? clientType,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> location,
    required pulumi.Output<String> oauthClientId,
    pulumi.Output<String>? project,
  }) :
      allowedGrantTypes = pulumi.Input.asInput<List<String>>(allowedGrantTypes),
      allowedRedirectUris = pulumi.Input.asInput<List<String>>(allowedRedirectUris),
      allowedScopes = pulumi.Input.asInput<List<String>>(allowedScopes),
      clientType = pulumi.Input.asOptionalInput<String>(clientType),
      description = pulumi.Input.asOptionalInput<String>(description),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      oauthClientId = pulumi.Input.asInput<String>(oauthClientId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedGrantTypes': allowedGrantTypes,
      'allowedRedirectUris': allowedRedirectUris,
      'allowedScopes': allowedScopes,
      'clientType': ?clientType,
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': location,
      'oauthClientId': oauthClientId,
      'project': ?project,
    };
  }

  factory OauthClientArgs.fromMap(Map<String, dynamic> map) {
    return OauthClientArgs(
      allowedGrantTypes: pulumi.Output.create<List<String>>((map['allowedGrantTypes'] as List).cast<String>()),
      allowedRedirectUris: pulumi.Output.create<List<String>>((map['allowedRedirectUris'] as List).cast<String>()),
      allowedScopes: pulumi.Output.create<List<String>>((map['allowedScopes'] as List).cast<String>()),
      clientType: map['clientType'] == null ? null : pulumi.Output.create<String>(map['clientType'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      oauthClientId: pulumi.Output.create<String>(map['oauthClientId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

