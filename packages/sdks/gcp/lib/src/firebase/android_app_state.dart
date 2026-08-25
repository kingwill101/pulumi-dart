// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AndroidApp resources.
class AndroidAppState {
  /// The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// If apiKeyId is not set during creation, then Firebase automatically associates an apiKeyId with the AndroidApp.
  /// This auto-associated key may be an existing valid key or, if no valid key exists, a new one will be provisioned.
  final pulumi.Input<String?>? apiKeyId;
  /// The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// This identifier should be treated as an opaque token, as the data format is not specified.
  final pulumi.Input<String?>? appId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The user-assigned display name of the AndroidApp.
  final pulumi.Input<String?>? displayName;
  /// This checksum is computed by the server based on the value of other fields, and it may be sent
  /// with update requests to ensure the client has an up-to-date value before proceeding.
  final pulumi.Input<String?>? etag;
  /// The fully qualified resource name of the AndroidApp, for example:
  /// projects/projectId/androidApps/appId
  final pulumi.Input<String?>? name;
  /// The canonical package name of the Android app as would appear in the Google Play
  /// Developer Console.
  final pulumi.Input<String?>? packageName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The SHA1 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>?>? sha1Hashes;
  /// The SHA256 certificate hashes for the AndroidApp.
  final pulumi.Input<List<String>?>? sha256Hashes;

  /// Creates a new [AndroidAppState].
  /// [apiKeyId] The globally unique, Google-assigned identifier (UID) for the Firebase API key associated with the AndroidApp.
  /// [appId] The globally unique, Firebase-assigned identifier of the AndroidApp.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user-assigned display name of the AndroidApp.
  /// [etag] This checksum is computed by the server based on the value of other fields, and it may be sent
  /// [name] The fully qualified resource name of the AndroidApp, for example:
  /// [packageName] The canonical package name of the Android app as would appear in the Google Play
  /// [project] The ID of the project in which the resource belongs.
  /// [sha1Hashes] The SHA1 certificate hashes for the AndroidApp.
  /// [sha256Hashes] The SHA256 certificate hashes for the AndroidApp.
  const AndroidAppState({
    this.apiKeyId,
    this.appId,
    this.deletionPolicy,
    this.displayName,
    this.etag,
    this.name,
    this.packageName,
    this.project,
    this.sha1Hashes,
    this.sha256Hashes,
  });

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
      apiKeyId: (() { final guardedValue = map['apiKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sha1Hashes: (() { final guardedValue = map['sha1Hashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sha256Hashes: (() { final guardedValue = map['sha256Hashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
