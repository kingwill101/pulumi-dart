// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_acl.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// One or more acl blocks as defined below.
  final List<GetShareAcl>? acls;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A map of custom file share metadata.
  final Map<String, String> metadata;
  final String name;

  /// The quota of the File Share in GB.
  final int quota;
  final String resourceManagerId;
  final String? storageAccountId;
  final String? storageAccountName;

  /// Creates a new [GetShareResult].
  /// [acls] One or more acl blocks as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [metadata] A map of custom file share metadata.
  /// [name] Required.
  /// [quota] The quota of the File Share in GB.
  /// [resourceManagerId] Required.
  /// [storageAccountId] Optional.
  /// [storageAccountName] Optional.
  GetShareResult({
    this.acls,
    required this.id,
    required this.metadata,
    required this.name,
    required this.quota,
    required this.resourceManagerId,
    this.storageAccountId,
    this.storageAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acls': ?(() {
        final guardedValue = acls;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetShareAcl, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'id': id,
      'metadata': metadata,
      'name': name,
      'quota': quota,
      'resourceManagerId': resourceManagerId,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      acls: (() {
        final guardedValue = map['acls'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetShareAcl>(
          guardedValue,
          (value) =>
              GetShareAcl.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      id: map['id'] as String,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      quota: map['quota'] as int,
      resourceManagerId: map['resourceManagerId'] as String,
      storageAccountId: (() {
        final guardedValue = map['storageAccountId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      storageAccountName: (() {
        final guardedValue = map['storageAccountName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
