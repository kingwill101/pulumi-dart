// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataLakeGen2FilesystemAce {
  /// Specifies the Object ID of the Azure Active Directory User or Group that the entry relates to. Only valid for `user` or `group` entries.
  final pulumi.Input<String>? id;
  /// Specifies the permissions for the entry in `rwx` form. For example, `rwx` gives full permissions but `r--` only gives read permissions.
  ///
  /// More details on ACLs can be found here: &lt;https://docs.microsoft.com/azure/storage/blobs/data-lake-storage-access-control#access-control-lists-on-files-and-directories&gt;
  final pulumi.Input<String> permissions;
  /// Specifies whether the ACE represents an `access` entry or a `default` entry. Default value is `access`.
  final pulumi.Input<String>? scope;
  /// Specifies the type of entry. Can be `user`, `group`, `mask` or `other`.
  final pulumi.Input<String> type;

  /// Creates a new [DataLakeGen2FilesystemAce].
  /// [id] Specifies the Object ID of the Azure Active Directory User or Group that the entry relates to. Only valid for `user` or `group` entries.
  /// [permissions] Specifies the permissions for the entry in `rwx` form. For example, `rwx` gives full permissions but `r--` only gives read permissions.
  /// [scope] Specifies whether the ACE represents an `access` entry or a `default` entry. Default value is `access`.
  /// [type] Specifies the type of entry. Can be `user`, `group`, `mask` or `other`.
  const DataLakeGen2FilesystemAce({
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

  factory DataLakeGen2FilesystemAce.fromMap(Map<String, dynamic> map) {
    return DataLakeGen2FilesystemAce(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      permissions: pulumi.Input.fromValue(map['permissions'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
