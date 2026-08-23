// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecPosixDataSource {
  /// Root directory path to the filesystem.
  final pulumi.Input<String> rootDirectory;

  /// Creates a new [TransferJobTransferSpecPosixDataSource].
  /// [rootDirectory] Root directory path to the filesystem.
  const TransferJobTransferSpecPosixDataSource({
    required this.rootDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rootDirectory': rootDirectory,
    };
  }

  factory TransferJobTransferSpecPosixDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecPosixDataSource(
      rootDirectory: pulumi.Input.fromValue(map['rootDirectory'] as String),
    );
  }
}
