// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_key_bucket_access.dart';

/// {@template pulumi_index_object_storage_key_object_storage_key_args_doc}
/// The set of arguments for ObjectStorageKey.
/// {@endtemplate}
/// {@macro pulumi_index_object_storage_key_object_storage_key_args_doc}
class ObjectStorageKeyArgs {
  /// Defines this key as a Limited Access Key. Limited Access Keys restrict this Object Storage key’s access to only the bucket(s) declared in this array and define their bucket-level permissions. Not providing this block will not limit this Object Storage Key.
  final pulumi.Input<List<ObjectStorageKeyBucketAccess>>? bucketAccesses;

  /// The label given to this key. For display purposes only.
  final pulumi.Input<String> label;

  /// A set of regions where the key will grant access to create buckets.
  ///
  /// - - -
  final pulumi.Input<List<String>>? regions;

  /// Creates a new [ObjectStorageKeyArgs].
  /// [bucketAccesses] Defines this key as a Limited Access Key. Limited Access Keys restrict this Object Storage key’s access to only the bucket(s) declared in this array and define their bucket-level permissions. Not providing this block will not limit this Object Storage Key.
  /// [label] The label given to this key. For display purposes only.
  /// [regions] A set of regions where the key will grant access to create buckets.
  ObjectStorageKeyArgs({
    this.bucketAccesses,
    required this.label,
    this.regions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketAccesses':
          ?pulumi.Input.mapOptionalInputValue<
            List<ObjectStorageKeyBucketAccess>,
            List<Map<String, dynamic>>
          >(
            bucketAccesses,
            (value) =>
                pulumi.Input.encodeList<
                  ObjectStorageKeyBucketAccess,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'label': label,
      'regions': ?regions,
    };
  }

  factory ObjectStorageKeyArgs.fromMap(Map<String, dynamic> map) {
    return ObjectStorageKeyArgs(
      bucketAccesses: (() {
        final guardedValue = map['bucketAccesses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ObjectStorageKeyBucketAccess>(
            guardedValue,
            (value) => ObjectStorageKeyBucketAccess.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      label: pulumi.Input.fromValue(map['label'] as String),
      regions: (() {
        final guardedValue = map['regions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
