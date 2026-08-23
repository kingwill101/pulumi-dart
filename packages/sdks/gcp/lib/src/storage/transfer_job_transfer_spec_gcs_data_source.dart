// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecGcsDataSource {
  /// Google Cloud Storage bucket name.
  final pulumi.Input<String> bucketName;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final pulumi.Input<String>? path;

  /// Creates a new [TransferJobTransferSpecGcsDataSource].
  /// [bucketName] Google Cloud Storage bucket name.
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  const TransferJobTransferSpecGcsDataSource({
    required this.bucketName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'path': ?path,
    };
  }

  factory TransferJobTransferSpecGcsDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecGcsDataSource(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
