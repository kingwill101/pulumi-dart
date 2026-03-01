// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AndroidApp resources.
class AndroidAppState {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final pulumi.Input<String>? appId;
  final pulumi.Input<String>? deletionPolicy;
  /// The user-assigned display name of the AndroidApp.
  final pulumi.Input<String>? displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent
  /// with update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String>? etag;
  /// The fully qualified resource name of the AndroidApp, for example:
  /// projects/projectId/androidApps/appId
  final pulumi.Input<String>? name;
  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  final pulumi.Input<String>? packageName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The SHA1 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha1Hashes;
  /// The SHA256 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha256Hashes;

  /// Creates a new [AndroidAppState].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// [appId] The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the AndroidApp.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent
  /// [name] The fully qualified resource name of the AndroidApp, for example:
  /// [packageName] The canonical package name of the Android app as would appear in the Google Play
  /// [project] The ID of the project in which the resource belongs.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  AndroidAppState({
    pulumi.Output<String>? apiKeyId,
    pulumi.Output<String>? appId,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? name,
    pulumi.Output<String>? packageName,
    pulumi.Output<String>? project,
    pulumi.Output<List<String>>? sha1Hashes,
    pulumi.Output<List<String>>? sha256Hashes,
  }) :
      apiKeyId = pulumi.Input.asOptionalInput<String>(apiKeyId),
      appId = pulumi.Input.asOptionalInput<String>(appId),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      name = pulumi.Input.asOptionalInput<String>(name),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      project = pulumi.Input.asOptionalInput<String>(project),
      sha1Hashes = pulumi.Input.asOptionalInput<List<String>>(sha1Hashes),
      sha256Hashes = pulumi.Input.asOptionalInput<List<String>>(sha256Hashes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'appId': ?appId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'etag': ?etag,
      'name': ?name,
      'packageName': ?packageName,
      'project': ?project,
      'sha1Hashes': ?sha1Hashes,
      'sha256Hashes': ?sha256Hashes,
    };
  }

  factory AndroidAppState.fromMap(Map<String, dynamic> map) {
    return AndroidAppState(
      apiKeyId: map['apiKeyId'] == null ? null : pulumi.Output.create<String>(map['apiKeyId'] as String),
      appId: map['appId'] == null ? null : pulumi.Output.create<String>(map['appId'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sha1Hashes: map['sha1Hashes'] == null ? null : pulumi.Output.create<List<String>>((map['sha1Hashes'] as List).cast<String>()),
      sha256Hashes: map['sha256Hashes'] == null ? null : pulumi.Output.create<List<String>>((map['sha256Hashes'] as List).cast<String>()),
    );
  }
}

