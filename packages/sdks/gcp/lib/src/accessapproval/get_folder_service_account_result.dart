// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFolderServiceAccount.
class GetFolderServiceAccountResult {
  /// The email address of the service account. This value is
  /// often used to refer to the service account in order to grant IAM permissions.
  final String? accountEmail;
  final String? folderId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Access Approval service account resource name. Format is "folders/{folder_id}/serviceAccount".
  final String? name;

  /// Creates a new [GetFolderServiceAccountResult].
  /// [accountEmail] The email address of the service account. This value is
  /// [folderId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The Access Approval service account resource name. Format is "folders/{folder_id}/serviceAccount".
  const GetFolderServiceAccountResult({
    this.accountEmail,
    this.folderId,
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEmail': ?accountEmail,
      'folderId': ?folderId,
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetFolderServiceAccountResult.fromMap(Map<String, dynamic> map) {
    return GetFolderServiceAccountResult(
      accountEmail: (() { final guardedValue = map['accountEmail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
