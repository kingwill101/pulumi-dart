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
  final pulumi.Input<String>? clientSecret;
  /// Whether the OauthClientCredential is disabled. You cannot use a
  /// disabled OauthClientCredential.
  final pulumi.Input<bool>? disabled;
  /// A user-specified display name of the OauthClientCredential.
  /// Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Immutable. Identifier. The resource name of the OauthClientCredential.
  /// Format:
  /// `projects/{project}/locations/{location}/oauthClients/{oauth_client}/credentials/{credential}`
  final pulumi.Input<String>? name;
  /// Required. The ID to use for the OauthClientCredential, which becomes the
  /// final component of the resource name. This value should be 4-32 characters,
  /// and may contain the characters [a-z0-9-]. The prefix `gcp-` is
  /// reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? oauthClientCredentialId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? oauthclient;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [OauthClientCredentialState].
  /// [clientSecret] The system-generated OAuth client secret.
  /// [disabled] Whether the OauthClientCredential is disabled. You cannot use a
  /// [displayName] A user-specified display name of the OauthClientCredential.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Immutable. Identifier. The resource name of the OauthClientCredential.
  /// [oauthClientCredentialId] Required. The ID to use for the OauthClientCredential, which becomes the
  /// [oauthclient] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  OauthClientCredentialState({
    this.clientSecret,
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
      clientSecret: map['clientSecret'] == null ? null : (map['clientSecret']! as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled']! as bool).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      oauthClientCredentialId: map['oauthClientCredentialId'] == null ? null : (map['oauthClientCredentialId']! as String).input(),
      oauthclient: map['oauthclient'] == null ? null : (map['oauthclient']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

