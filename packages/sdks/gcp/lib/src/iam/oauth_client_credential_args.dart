// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iam_oauth_client_credential_oauth_client_credential_args_doc}
/// The set of arguments for OauthClientCredential.
/// {@endtemplate}
/// {@macro pulumi_iam_oauth_client_credential_oauth_client_credential_args_doc}
class OauthClientCredentialArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Whether the OauthClientCredential is disabled. You cannot use a
  /// [displayName] A user-specified display name of the OauthClientCredential.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [oauthClientCredentialId] Required. The ID to use for the OauthClientCredential, which becomes the
  /// [oauthclient] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const OauthClientCredentialArgs({
    this.deletionPolicy,
    this.disabled,
    this.displayName,
    required this.location,
    required this.oauthClientCredentialId,
    required this.oauthclient,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
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
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      oauthClientCredentialId: pulumi.Input.fromValue(map['oauthClientCredentialId'] as String),
      oauthclient: pulumi.Input.fromValue(map['oauthclient'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
