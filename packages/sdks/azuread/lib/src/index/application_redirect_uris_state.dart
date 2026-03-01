// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationRedirectUris resources.
class ApplicationRedirectUrisState {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationId;
  /// A set of redirect URIs to assign to the application.
  final pulumi.Input<List<String>>? redirectUris;
  /// The type of redirect URIs to manage. Must be one of: `PublicClient`, `SPA`, or `Web`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? type;

  /// Creates a new [ApplicationRedirectUrisState].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [redirectUris] A set of redirect URIs to assign to the application.
  /// [type] The type of redirect URIs to manage. Must be one of: `PublicClient`, `SPA`, or `Web`. Changing this forces a new resource to be created.
  ApplicationRedirectUrisState({
    pulumi.Output<String>? applicationId,
    pulumi.Output<List<String>>? redirectUris,
    pulumi.Output<String>? type,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      redirectUris = pulumi.Input.asOptionalInput<List<String>>(redirectUris),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'redirectUris': ?redirectUris,
      'type': ?type,
    };
  }

  factory ApplicationRedirectUrisState.fromMap(Map<String, dynamic> map) {
    return ApplicationRedirectUrisState(
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      redirectUris: map['redirectUris'] == null ? null : pulumi.Output.create<List<String>>((map['redirectUris'] as List).cast<String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

