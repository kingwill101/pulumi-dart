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
    this.applicationId,
    this.redirectUris,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'redirectUris': ?redirectUris,
      'type': ?type,
    };
  }

  factory ApplicationRedirectUrisState.fromMap(Map<String, dynamic> map) {
    return ApplicationRedirectUrisState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      redirectUris: map['redirectUris'] == null ? null : ((map['redirectUris'] as List).cast<String>()).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

