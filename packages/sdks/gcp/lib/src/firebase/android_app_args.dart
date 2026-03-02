// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_firebase_android_app_android_app_args_doc}
/// The set of arguments for AndroidApp.
/// {@endtemplate}
/// {@macro pulumi_firebase_android_app_android_app_args_doc}
class AndroidAppArgs {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String>? apiKeyId;
  final pulumi.Input<String>? deletionPolicy;
  /// The user-assigned display name of the AndroidApp.
  final pulumi.Input<String> displayName;
  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  final pulumi.Input<String> packageName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The SHA1 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha1Hashes;
  /// The SHA256 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>>? sha256Hashes;

  /// Creates a new [AndroidAppArgs].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// [deletionPolicy] Optional.
  /// [displayName] The user-assigned display name of the AndroidApp.
  /// [packageName] The canonical package name of the Android app as would appear in the Google Play
  /// [project] The ID of the project in which the resource belongs.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  AndroidAppArgs({
    this.apiKeyId,
    this.deletionPolicy,
    required this.displayName,
    required this.packageName,
    this.project,
    this.sha1Hashes,
    this.sha256Hashes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKeyId': ?apiKeyId,
      'deletionPolicy': ?deletionPolicy,
      'displayName': displayName,
      'packageName': packageName,
      'project': ?project,
      'sha1Hashes': ?sha1Hashes,
      'sha256Hashes': ?sha256Hashes,
    };
  }

  factory AndroidAppArgs.fromMap(Map<String, dynamic> map) {
    return AndroidAppArgs(
      apiKeyId: map['apiKeyId'] == null ? null : (map['apiKeyId'] as String).input(),
      deletionPolicy: map['deletionPolicy'] == null ? null : (map['deletionPolicy'] as String).input(),
      displayName: (map['displayName'] as String).input(),
      packageName: (map['packageName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      sha1Hashes: map['sha1Hashes'] == null ? null : ((map['sha1Hashes'] as List).cast<String>()).input(),
      sha256Hashes: map['sha256Hashes'] == null ? null : ((map['sha256Hashes'] as List).cast<String>()).input(),
    );
  }
}

