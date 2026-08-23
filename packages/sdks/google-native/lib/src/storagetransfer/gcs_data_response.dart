// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// In a GcsData resource, an object's name is the Cloud Storage object's name and its "last modification time" refers to the object's `updated` property of Cloud Storage objects, which changes when the content or the metadata of the object is updated.
class GcsDataResponse {
  /// Cloud Storage bucket name. Must meet [Bucket Name Requirements](/storage/docs/naming#requirements).
  final pulumi.Input<String> bucketName;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'. The root path value must meet [Object Name Requirements](/storage/docs/naming#objectnames).
  final pulumi.Input<String> path;

  /// Creates a new [GcsDataResponse].
  /// [bucketName] Cloud Storage bucket name. Must meet [Bucket Name Requirements](/storage/docs/naming#requirements).
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'. The root path value must meet [Object Name Requirements](/storage/docs/naming#objectnames).
  const GcsDataResponse({
    required this.bucketName,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'path': path,
    };
  }

  factory GcsDataResponse.fromMap(Map<String, dynamic> map) {
    return GcsDataResponse(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
