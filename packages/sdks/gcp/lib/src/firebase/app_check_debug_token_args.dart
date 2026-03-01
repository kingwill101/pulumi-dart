// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_app_check_debug_token_app_check_debug_token_args_doc}
/// The set of arguments for AppCheckDebugToken.
/// {@endtemplate}
/// {@macro pulumi_firebase_app_check_debug_token_app_check_debug_token_args_doc}
class AppCheckDebugTokenArgs {
  /// The ID of a
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
  /// or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
  final pulumi.Input<String> appId;
  /// A human readable display name used to identify this debug token.
  final pulumi.Input<String> displayName;
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
  final pulumi.Input<String> token;

  /// Creates a new [AppCheckDebugTokenArgs].
  /// [appId] The ID of a
  /// [displayName] A human readable display name used to identify this debug token.
  /// [project] The ID of the project in which the resource belongs.
  /// [token] The secret token itself. Must be provided during creation, and must be a UUID4,
  AppCheckDebugTokenArgs({
    required pulumi.Output<String> appId,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? project,
    required pulumi.Output<String> token,
  }) :
      appId = pulumi.Input.asInput<String>(appId),
      displayName = pulumi.Input.asInput<String>(displayName),
      project = pulumi.Input.asOptionalInput<String>(project),
      token = pulumi.Input.asInput<String>(token);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'displayName': displayName,
      'project': ?project,
      'token': token,
    };
  }

  factory AppCheckDebugTokenArgs.fromMap(Map<String, dynamic> map) {
    return AppCheckDebugTokenArgs(
      appId: pulumi.Output.create<String>(map['appId'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      token: pulumi.Output.create<String>(map['token'] as String),
    );
  }
}

