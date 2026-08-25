// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecGcsDataSink {
  /// Google Cloud Storage bucket name.
  final pulumi.Input<String> bucketName;
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final pulumi.Input<String?>? path;

  /// Creates a new [TransferJobTransferSpecGcsDataSink].
  /// [bucketName] Google Cloud Storage bucket name.
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  const TransferJobTransferSpecGcsDataSink({
    required this.bucketName,
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': bucketName,
      'path': ?path,
    };
  }

  factory TransferJobTransferSpecGcsDataSink.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecGcsDataSink(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
