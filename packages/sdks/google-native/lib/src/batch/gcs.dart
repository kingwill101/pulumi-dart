// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Google Cloud Storage volume.
class GCS {
  /// Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  final pulumi.Input<String>? remotePath;

  /// Creates a new [GCS].
  /// [remotePath] Remote path, either a bucket name or a subdirectory of a bucket, e.g.: bucket_name, bucket_name/subdirectory/
  GCS({this.remotePath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'remotePath': ?remotePath};
  }

  factory GCS.fromMap(Map<String, dynamic> map) {
    return GCS(
      remotePath: (() {
        final guardedValue = map['remotePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
