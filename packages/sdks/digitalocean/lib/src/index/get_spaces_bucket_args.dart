// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_spaces_bucket_get_spaces_bucket_args_doc}
/// Arguments for getSpacesBucket.
/// {@endtemplate}
/// {@macro pulumi_index_get_spaces_bucket_get_spaces_bucket_args_doc}
class GetSpacesBucketArgs {
  /// The name of the Spaces bucket.
  final pulumi.Input<String> name;
  /// The slug of the region where the bucket is stored.
  final pulumi.Input<String> region;

  /// Creates a new [GetSpacesBucketArgs].
  /// [name] The name of the Spaces bucket.
  /// [region] The slug of the region where the bucket is stored.
  const GetSpacesBucketArgs({
    required this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'region': region,
    };
  }

  factory GetSpacesBucketArgs.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

