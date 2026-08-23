// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecHdfsDataSource {
  /// Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  final pulumi.Input<String> path;

  /// Creates a new [TransferJobTransferSpecHdfsDataSource].
  /// [path] Root path to transfer objects. Must be an empty string or full path name that ends with a '/'. This field is treated as an object prefix. As such, it should generally not begin with a '/'.
  const TransferJobTransferSpecHdfsDataSource({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory TransferJobTransferSpecHdfsDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecHdfsDataSource(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
