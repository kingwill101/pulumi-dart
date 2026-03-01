// ignore_for_file: unused_element, unnecessary_cast


class DataLakeGen2PathAce {
  /// Specifies the Object ID of the Azure Active Directory User or Group that the entry relates to. Only valid for `user` or `group` entries.
  final String? id;
  /// Specifies the permissions for the entry in `rwx` form. For example, `rwx` gives full permissions but `r--` only gives read permissions.
  ///
  /// More details on ACLs can be found here: <https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-access-control#access-control-lists-on-files-and-directories>
  ///
  /// > **Note:** Using the service's ACE inheritance features will not work well with terraform since we cannot handle changes that are taking place out-of-band. Setting the path to inherit its permissions from its parent will result in terraform trying to revert them in the next apply operation.
  ///
  /// > **Note:** The Storage Account requires `account_kind` to be either `StorageV2` or `BlobStorage`. In addition, `is_hns_enabled` has to be set to `true`.
  final String permissions;
  /// Specifies whether the ACE represents an `access` entry or a `default` entry. Default value is `access`.
  final String? scope;
  /// Specifies the type of entry. Can be `user`, `group`, `mask` or `other`.
  final String type;

  /// Creates a new [DataLakeGen2PathAce].
  /// [id] Specifies the Object ID of the Azure Active Directory User or Group that the entry relates to. Only valid for `user` or `group` entries.
  /// [permissions] Specifies the permissions for the entry in `rwx` form. For example, `rwx` gives full permissions but `r--` only gives read permissions.
  /// [scope] Specifies whether the ACE represents an `access` entry or a `default` entry. Default value is `access`.
  /// [type] Specifies the type of entry. Can be `user`, `group`, `mask` or `other`.
  DataLakeGen2PathAce({
    this.id,
    required this.permissions,
    this.scope,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'permissions': permissions,
      'scope': ?scope,
      'type': type,
    };
  }

  factory DataLakeGen2PathAce.fromMap(Map<String, dynamic> map) {
    return DataLakeGen2PathAce(
      id: map['id'] == null ? null : map['id'] as String,
      permissions: map['permissions'] as String,
      scope: map['scope'] == null ? null : map['scope'] as String,
      type: map['type'] as String,
    );
  }
}

