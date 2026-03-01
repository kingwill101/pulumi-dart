// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AppleApp resources.
class AppleAppState {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AppleApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the App.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final pulumi.Input<String>? appId;
  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  final pulumi.Input<String>? appStoreId;
  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  final pulumi.Input<String>? bundleId;
  final pulumi.Input<String>? deletionPolicy;
  /// The user-assigned display name of the App.
  final pulumi.Input<String>? displayName;
  /// The fully qualified resource name of the App, for example:
  /// projects/projectId/iosApps/appId
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Apple Developer Team ID associated with the App in the App Store.
  final pulumi.Input<String>? teamId;

  /// Creates a new [AppleAppState].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// [appId] The globally unique, Firebase-assigned identifier of the App.
  /// [appStoreId] The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  /// [bundleId] The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the App.
  /// [name] The fully qualified resource name of the App, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [teamId] The Apple Developer Team ID associated with the App in the App Store.
  AppleAppState({
    pulumi.Output<String>? apiKeyId,
    pulumi.Output<String>? appId,
    pulumi.Output<String>? appStoreId,
    pulumi.Output<String>? bundleId,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? teamId,
  }) :
      apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      appStoreId = pulumi.Input.asOptionalInput<String>(appStoreId),
      bundleId = pulumi.Input.asOptionalInput<String>(bundleId),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      teamId = pulumi.Input.asOptionalInput<String>(teamId);

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
      apiKeyId: map['apiKeyId'] == null ? null : pulumi.Output.create<String>(map['apiKeyId'] as String),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      appStoreId: map['appStoreId'] == null ? null : pulumi.Output.create<String>(map['appStoreId'] as String),
      bundleId: map['bundleId'] == null ? null : pulumi.Output.create<String>(map['bundleId'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      teamId: map['teamId'] == null ? null : pulumi.Output.create<String>(map['teamId'] as String),
    );
  }
}

