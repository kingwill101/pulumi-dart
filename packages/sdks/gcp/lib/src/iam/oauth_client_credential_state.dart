// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OauthClientCredential resources.
class OauthClientCredentialState {
  /// The system-generated OAuth client secret.
  /// The client secret must be stored securely. If the client secret is
  /// leaked, you must delete and re-create the client credential. To learn
  /// more, see [OAuth client and credential security risks and
  /// mitigations](https://cloud.google.com/iam/docs/workforce-oauth-app#security)
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether the OauthClientCredential is disabled. You cannot use a
  /// disabled OauthClientCredential.
  final pulumi.Input<bool?>? disabled;
  /// A user-specified display name of the OauthClientCredential.
  /// Cannot exceed 32 characters.
  final pulumi.Input<String?>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Immutable. Identifier. The resource name of the OauthClientCredential.
  /// Format:
  /// `projects/{project}/locations/{location}/oauthClients/{oauth_client}/credentials/{credential}`
  final pulumi.Input<String?>? name;
  /// Required. The ID to use for the OauthClientCredential, which becomes the
  /// final component of the resource name. This value should be 4-32 characters,
  /// and may contain the characters [a-z0-9-]. The prefix `gcp-` is
  /// reserved for use by Google, and may not be specified.
  final pulumi.Input<String?>? oauthClientCredentialId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? oauthclient;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [OauthClientCredentialState].
  /// [clientSecret] The system-generated OAuth client secret.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [disabled] Whether the OauthClientCredential is disabled. You cannot use a
  /// [displayName] A user-specified display name of the OauthClientCredential.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Immutable. Identifier. The resource name of the OauthClientCredential.
  /// [oauthClientCredentialId] Required. The ID to use for the OauthClientCredential, which becomes the
  /// [oauthclient] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  const OauthClientCredentialState({
    this.clientSecret,
    this.deletionPolicy,
    this.disabled,
    this.displayName,
    this.location,
    this.name,
    this.oauthClientCredentialId,
    this.oauthclient,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientSecret': ?clientSecret,
      'deletionPolicy': ?deletionPolicy,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'oauthClientCredentialId': ?oauthClientCredentialId,
      'oauthclient': ?oauthclient,
      'project': ?project,
    };
  }

  factory OauthClientCredentialState.fromMap(Map<String, dynamic> map) {
    return OauthClientCredentialState(
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthClientCredentialId: (() { final guardedValue = map['oauthClientCredentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oauthclient: (() { final guardedValue = map['oauthclient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
