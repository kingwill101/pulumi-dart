// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppCheckDebugToken resources.
class AppCheckDebugTokenState {
  /// The ID of a
  /// [Web App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.webApps#WebApp.FIELDS.app_id),
  /// [Apple App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.iosApps#IosApp.FIELDS.app_id),
  /// or [Android App](https://firebase.google.com/docs/reference/firebase-management/rest/v1beta1/projects.androidApps#AndroidApp.FIELDS.app_id)
  final pulumi.Input<String?>? appId;
  /// The last segment of the resource name of the debug token.
  final pulumi.Input<String?>? debugTokenId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// A human readable display name used to identify this debug token.
  final pulumi.Input<String?>? displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The secret token itself. Must be provided during creation, and must be a UUID4,
  /// case insensitive. You may use a method of your choice such as random/random_uuid
  /// to generate the token.
  /// This field is immutable once set, and cannot be updated. You can, however, delete
  /// this debug token to revoke it.
  /// For security reasons, this field will never be populated in any response.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String?>? token;

  /// Creates a new [AppCheckDebugTokenState].
  /// [appId] The ID of a
  /// [debugTokenId] The last segment of the resource name of the debug token.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A human readable display name used to identify this debug token.
  /// [project] The ID of the project in which the resource belongs.
  /// [token] The secret token itself. Must be provided during creation, and must be a UUID4,
  const AppCheckDebugTokenState({
    this.appId,
    this.debugTokenId,
    this.deletionPolicy,
    this.displayName,
    this.project,
    this.token,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'debugTokenId': ?debugTokenId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'project': ?project,
      'token': ?token,
    };
  }

  factory AppCheckDebugTokenState.fromMap(Map<String, dynamic> map) {
    return AppCheckDebugTokenState(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      debugTokenId: (() { final guardedValue = map['debugTokenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      token: (() { final guardedValue = map['token']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
