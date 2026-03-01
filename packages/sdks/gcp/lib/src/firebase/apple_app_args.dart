// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_apple_app_apple_app_args_doc}
/// The set of arguments for AppleApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_apple_app_apple_app_args_doc}
class AppleAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AppleApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  /// The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  final pulumi.Input<String>? appStoreId;
  /// The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  final pulumi.Input<String> bundleId;
  final pulumi.Input<String>? deletionPolicy;
  /// The user-assigned display name of the App.
  final pulumi.Input<String> displayName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Apple Developer Team ID associated with the App in the App Store.
  final pulumi.Input<String>? teamId;

  /// Creates a new [AppleAppArgs].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AppleApp.
  /// [appStoreId] The automatically generated Apple ID assigned to the Apple app by Apple in the Apple App Store.
  /// [bundleId] The canonical bundle ID of the Apple app as it would appear in the Apple AppStore.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the App.
  /// [project] The ID of the project in which the resource belongs.
  /// [teamId] The Apple Developer Team ID associated with the App in the App Store.
  AppleAppArgs({
    pulumi.Output<String>? apiKeyId,
    pulumi.Output<String>? appStoreId,
    required pulumi.Output<String> bundleId,
    pulumi.Output<String>? deletionPolicy,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? project,
    pulumi.Output<String>? teamId,
  }) :
      apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
      appStoreId = pulumi.Input.asOptionalInput<String>(appStoreId),
      bundleId = pulumi.Input.asInput<String>(bundleId),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asInput<String>(displayName),
      project = pulumi.Input.asOptionalInput<String>(project),
      teamId = pulumi.Input.asOptionalInput<String>(teamId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appStoreId': ?appStoreId,
      'bundleId': bundleId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'project': ?project,
      'teamId': ?teamId,
    };
  }

  factory AppleAppArgs.fromMap(Map<String, dynamic> map) {
    return AppleAppArgs(
      apiKeyId: map['apiKeyId'] == null ? null : pulumi.Output.create<String>(map['apiKeyId'] as String),
      appStoreId: map['appStoreId'] == null ? null : pulumi.Output.create<String>(map['appStoreId'] as String),
      bundleId: pulumi.Output.create<String>(map['bundleId'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      teamId: map['teamId'] == null ? null : pulumi.Output.create<String>(map['teamId'] as String),
    );
  }
}

