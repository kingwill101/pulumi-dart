// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_oauth_client_credential_oauth_client_credential_args_doc}
/// The set of arguments for OauthClientCredential.
/// {@endtemplate}
/// {@macro pulumi_iam_oauth_client_credential_oauth_client_credential_args_doc}
class OauthClientCredentialArgs {
  /// Whether the OauthClientCredential is disabled. You cannot use a
  /// disabled OauthClientCredential.
  final pulumi.Input<bool>? disabled;
  /// A user-specified display name of the OauthClientCredential.
  /// Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Required. The ID to use for the OauthClientCredential, which becomes the
  /// final component of the resource name. This value should be 4-32 characters,
  /// and may contain the characters [a-z0-9-]. The prefix `gcp-` is
  /// reserved for use by Google, and may not be specified.
  final pulumi.Input<String> oauthClientCredentialId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> oauthclient;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [OauthClientCredentialArgs].
  /// [disabled] Whether the OauthClientCredential is disabled. You cannot use a
  /// [displayName] A user-specified display name of the OauthClientCredential.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [oauthClientCredentialId] Required. The ID to use for the OauthClientCredential, which becomes the
  /// [oauthclient] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  OauthClientCredentialArgs({
    pulumi.Output<bool>? disabled,
    pulumi.Output<String>? displayName,
    required pulumi.Output<String> location,
    required pulumi.Output<String> oauthClientCredentialId,
    required pulumi.Output<String> oauthclient,
    pulumi.Output<String>? project,
  }) :
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asInput<String>(location),
      oauthClientCredentialId = pulumi.Input.asInput<String>(oauthClientCredentialId),
      oauthclient = pulumi.Input.asInput<String>(oauthclient),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': location,
      'oauthClientCredentialId': oauthClientCredentialId,
      'oauthclient': oauthclient,
      'project': ?project,
    };
  }

  factory OauthClientCredentialArgs.fromMap(Map<String, dynamic> map) {
    return OauthClientCredentialArgs(
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      oauthClientCredentialId: pulumi.Output.create<String>(map['oauthClientCredentialId'] as String),
      oauthclient: pulumi.Output.create<String>(map['oauthclient'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

