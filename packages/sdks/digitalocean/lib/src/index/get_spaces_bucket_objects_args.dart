// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spaces_bucket_objects_get_spaces_bucket_objects_args_doc}
/// Arguments for getSpacesBucketObjects.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_bucket_objects_get_spaces_bucket_objects_args_doc}
class GetSpacesBucketObjectsArgs {
  /// Lists object keys in this Spaces bucket
  final pulumi.Input<String> bucket;
  /// A character used to group keys (Default: none)
  final pulumi.Input<String>? delimiter;
  /// Encodes keys using this method (Default: none; besides none, only "url" can be used)
  final pulumi.Input<String>? encodingType;
  /// Maximum object keys to return (Default: 1000)
  final pulumi.Input<int>? maxKeys;
  /// Limits results to object keys with this prefix (Default: none)
  final pulumi.Input<String>? prefix;
  /// The slug of the region where the bucket is stored.
  final pulumi.Input<String> region;

  /// Creates a new [GetSpacesBucketObjectsArgs].
  /// [bucket] Lists object keys in this Spaces bucket
  /// [delimiter] A character used to group keys (Default: none)
  /// [encodingType] Encodes keys using this method (Default: none; besides none, only "url" can be used)
  /// [maxKeys] Maximum object keys to return (Default: 1000)
  /// [prefix] Limits results to object keys with this prefix (Default: none)
  /// [region] The slug of the region where the bucket is stored.
  const GetSpacesBucketObjectsArgs({
    required this.bucket,
    this.delimiter,
    this.encodingType,
    this.maxKeys,
    this.prefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'delimiter': ?delimiter,
      'encodingType': ?encodingType,
      'maxKeys': ?maxKeys,
      'prefix': ?prefix,
      'region': region,
    };
  }

  factory GetSpacesBucketObjectsArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketObjectsArgs(
      bucket: pulumi.Input.fromValue(map['bucket'] as String),
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encodingType: (() { final guardedValue = map['encodingType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxKeys: (() { final guardedValue = map['maxKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
