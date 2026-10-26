// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'class_item_response.dart';

/// Result data returned by getCustomClass.
class GetCustomClassResult {
  /// Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  final Map<String, String>? annotations;
  /// If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Case sensitive.
  final String? customClassId;
  /// The time at which this resource was requested for deletion. This field is not used.
  final String? deleteTime;
  /// User-settable, human-readable name for the CustomClass. Must be 63 characters or less. This field is not used.
  final String? displayName;
  /// This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  final String? etag;
  /// The time at which this resource will be purged. This field is not used.
  final String? expireTime;
  /// A collection of class items.
  final List<ClassItemResponse>? items;
  /// The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  final String? kmsKeyName;
  /// The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  final String? kmsKeyVersionName;
  /// The resource name of the custom class.
  final String? name;
  /// Whether or not this CustomClass is in the process of being updated. This field is not used.
  final bool? reconciling;
  /// The CustomClass lifecycle state. This field is not used.
  final String? state;
  /// System-assigned unique identifier for the CustomClass. This field is not used.
  final String? uid;

  /// Creates a new [GetCustomClassResult].
  /// [annotations] Allows users to store small amounts of arbitrary data. Both the key and the value must be 63 characters or less each. At most 100 annotations. This field is not used.
  /// [customClassId] If this custom class is a resource, the custom_class_id is the resource id of the CustomClass. Case sensitive.
  /// [deleteTime] The time at which this resource was requested for deletion. This field is not used.
  /// [displayName] User-settable, human-readable name for the CustomClass. Must be 63 characters or less. This field is not used.
  /// [etag] This checksum is computed by the server based on the value of other fields. This may be sent on update, undelete, and delete requests to ensure the client has an up-to-date value before proceeding. This field is not used.
  /// [expireTime] The time at which this resource will be purged. This field is not used.
  /// [items] A collection of class items.
  /// [kmsKeyName] The [KMS key name](https://cloud.google.com/kms/docs/resource-hierarchy#keys) with which the content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}`.
  /// [kmsKeyVersionName] The [KMS key version name](https://cloud.google.com/kms/docs/resource-hierarchy#key_versions) with which content of the ClassItem is encrypted. The expected format is `projects/{project}/locations/{location}/keyRings/{key_ring}/cryptoKeys/{crypto_key}/cryptoKeyVersions/{crypto_key_version}`.
  /// [name] The resource name of the custom class.
  /// [reconciling] Whether or not this CustomClass is in the process of being updated. This field is not used.
  /// [state] The CustomClass lifecycle state. This field is not used.
  /// [uid] System-assigned unique identifier for the CustomClass. This field is not used.
  const GetCustomClassResult({
    this.annotations,
    this.customClassId,
    this.deleteTime,
    this.displayName,
    this.etag,
    this.expireTime,
    this.items,
    this.kmsKeyName,
    this.kmsKeyVersionName,
    this.name,
    this.reconciling,
    this.state,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'customClassId': ?customClassId,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'items': ?(() { final guardedValue = items; if (guardedValue == null) return null; return pulumi.Input.encodeList<ClassItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kmsKeyName': ?kmsKeyName,
      'kmsKeyVersionName': ?kmsKeyVersionName,
      'name': ?name,
      'reconciling': ?reconciling,
      'state': ?state,
      'uid': ?uid,
    };
  }

  factory GetCustomClassResult.fromMap(Map<String, dynamic> map) {
    return GetCustomClassResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      customClassId: (() { final guardedValue = map['customClassId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      items: (() { final guardedValue = map['items']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ClassItemResponse>(guardedValue, (value) => ClassItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kmsKeyName: (() { final guardedValue = map['kmsKeyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyVersionName: (() { final guardedValue = map['kmsKeyVersionName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
