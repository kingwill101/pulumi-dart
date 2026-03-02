// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckDebugToken resources.
class AppCheckDebugTokenState {
  /// The ID of a
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
  /// or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
  final pulumi.Input<String>? appId;
  /// The last segment of the resource name of the debug token.
  final pulumi.Input<String>? debugTokenId;
  /// A human readable display name used to identify this debug token.
  final pulumi.Input<String>? displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The secret token itself. Must be provided during creation, and must be a UUID4,
  /// case insensitive. You may use a method of your choice such as random/random_uuid
  /// to generate the token.
  /// This field is immutable once set, and cannot be updated. You can, however, delete
  /// this debug token to revoke it.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? token;

  /// Creates a new [AppCheckDebugTokenState].
  /// [appId] The ID of a
  /// [debugTokenId] The last segment of the resource name of the debug token.
  /// [displayName] A human readable display name used to identify this debug token.
  /// [project] The ID of the project in which the resource belongs.
  /// [token] The secret token itself. Must be provided during creation, and must be a UUID4,
  AppCheckDebugTokenState({
    this.appId,
    this.debugTokenId,
    this.displayName,
    this.project,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'debugTokenId': ?debugTokenId,
      'displayName': ?displayName,
      'project': ?project,
      'token': ?token,
    };
  }

  factory AppCheckDebugTokenState.fromMap(Map<String, dynamic> map) {
    return AppCheckDebugTokenState(
      appId: map['appId'] == null ? null : (map['appId']! as String).input(),
      debugTokenId: map['debugTokenId'] == null ? null : (map['debugTokenId']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
    );
  }
}

