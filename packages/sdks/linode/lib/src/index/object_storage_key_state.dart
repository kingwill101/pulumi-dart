// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_storage_key_bucket_access.dart';
import 'object_storage_key_regions_detail.dart';

/// Input properties used for looking up and filtering ObjectStorageKey resources.
class ObjectStorageKeyState {
  /// This keypair's access key. This is not secret.
  final pulumi.Input<String>? accessKey;
  /// Defines this key as a Limited Access Key. Limited Access Keys restrict this Object Storage key’s access to only the bucket(s) declared in this array and define their bucket-level permissions. Not providing this block will not limit this Object Storage Key.
  final pulumi.Input<List<ObjectStorageKeyBucketAccess>>? bucketAccesses;
  /// The label given to this key. For display purposes only.
  final pulumi.Input<String>? label;
  /// Whether or not this key is a limited access key.
  final pulumi.Input<bool>? limited;
  /// A set of regions where the key will grant access to create buckets.
  ///
  /// - - -
  final pulumi.Input<List<String>>? regions;
  /// A set of objects containing the detailed info of the regions where this key can access.
  final pulumi.Input<List<ObjectStorageKeyRegionsDetail>>? regionsDetails;
  /// This keypair's secret key.
  final pulumi.Input<String>? secretKey;

  /// Creates a new [ObjectStorageKeyState].
  /// [accessKey] This keypair's access key. This is not secret.
  /// [bucketAccesses] Defines this key as a Limited Access Key. Limited Access Keys restrict this Object Storage key’s access to only the bucket(s) declared in this array and define their bucket-level permissions. Not providing this block will not limit this Object Storage Key.
  /// [label] The label given to this key. For display purposes only.
  /// [limited] Whether or not this key is a limited access key.
  /// [regions] A set of regions where the key will grant access to create buckets.
  /// [regionsDetails] A set of objects containing the detailed info of the regions where this key can access.
  /// [secretKey] This keypair's secret key.
  ObjectStorageKeyState({
    this.accessKey,
    this.bucketAccesses,
    this.label,
    this.limited,
    this.regions,
    this.regionsDetails,
    this.secretKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'bucketAccesses': ?pulumi.Input.mapOptionalInputValue<List<ObjectStorageKeyBucketAccess>, List<Map<String, dynamic>>>(bucketAccesses, (value) => pulumi.Input.encodeList<ObjectStorageKeyBucketAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
      'label': ?label,
      'limited': ?limited,
      'regions': ?regions,
      'regionsDetails': ?pulumi.Input.mapOptionalInputValue<List<ObjectStorageKeyRegionsDetail>, List<Map<String, dynamic>>>(regionsDetails, (value) => pulumi.Input.encodeList<ObjectStorageKeyRegionsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secretKey': ?secretKey,
    };
  }

  factory ObjectStorageKeyState.fromMap(Map<String, dynamic> map) {
    return ObjectStorageKeyState(
      accessKey: (() { final guardedValue = map['accessKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bucketAccesses: (() { final guardedValue = map['bucketAccesses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectStorageKeyBucketAccess>(guardedValue, (value) => ObjectStorageKeyBucketAccess.fromMap((value as Map).cast<String, dynamic>()))); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limited: (() { final guardedValue = map['limited']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regions: (() { final guardedValue = map['regions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      regionsDetails: (() { final guardedValue = map['regionsDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ObjectStorageKeyRegionsDetail>(guardedValue, (value) => ObjectStorageKeyRegionsDetail.fromMap((value as Map).cast<String, dynamic>()))); })(),
      secretKey: (() { final guardedValue = map['secretKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

