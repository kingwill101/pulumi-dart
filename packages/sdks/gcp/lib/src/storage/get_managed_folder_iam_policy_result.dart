// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedFolderIamPolicy.
class GetManagedFolderIamPolicyResult {
  final String? bucket;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? managedFolder;
  final String? policyData;

  /// Creates a new [GetManagedFolderIamPolicyResult].
  /// [bucket] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [managedFolder] Optional.
  /// [policyData] Optional.
  const GetManagedFolderIamPolicyResult({
    this.bucket,
    this.etag,
    this.id,
    this.managedFolder,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'etag': ?etag,
      'id': ?id,
      'managedFolder': ?managedFolder,
      'policyData': ?policyData,
    };
  }

  factory GetManagedFolderIamPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetManagedFolderIamPolicyResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedFolder: (() { final guardedValue = map['managedFolder']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
