// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppleApp resources.
class AppleAppState {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AppleApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String?>? apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final pulumi.Input<String?>? appId;
  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  final pulumi.Input<String?>? appStoreId;
  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  final pulumi.Input<String?>? bundleId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-assigned display name of the App.
  final pulumi.Input<String?>? displayName;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/iosApps/appId
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The Apple Developer Team ID associated with the App in the App Store.
  final pulumi.Input<String?>? teamId;

  /// Creates a new [AppleAppState].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// [appId] The globally unique, Firebase-assigned identifier of the App.
  /// [appStoreId] The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  /// [bundleId] The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-assigned display name of the App.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [teamId] The Apple Developer Team ID associated with the App in the App Store.
  const AppleAppState({
    this.apiKeyId,
    this.appId,
    this.appStoreId,
    this.bundleId,
    this.deletionPolicy,
    this.displayName,
    this.name,
    this.project,
    this.teamId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appId': ?appId,
      'appStoreId': ?appStoreId,
      'bundleId': ?bundleId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'name': ?name,
      'project': ?project,
      'teamId': ?teamId,
    };
  }

  factory AppleAppState.fromMap(Map<String, dynamic> map) {
    return AppleAppState(
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appStoreId: (() { final guardedValue = map['appStoreId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      teamId: (() { final guardedValue = map['teamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
