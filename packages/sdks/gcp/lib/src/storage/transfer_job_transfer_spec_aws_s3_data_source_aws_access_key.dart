// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecAwsS3DataSourceAwsAccessKey {
  /// AWS Key ID.
  final pulumi.Input<String> accessKeyId;
  /// AWS Secret Access Key.
  final pulumi.Input<String> secretAccessKey;

  /// Creates a new [TransferJobTransferSpecAwsS3DataSourceAwsAccessKey].
  /// [accessKeyId] AWS Key ID.
  /// [secretAccessKey] AWS Secret Access Key.
  const TransferJobTransferSpecAwsS3DataSourceAwsAccessKey({
    required this.accessKeyId,
    required this.secretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'secretAccessKey': secretAccessKey,
    };
  }

  factory TransferJobTransferSpecAwsS3DataSourceAwsAccessKey.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecAwsS3DataSourceAwsAccessKey(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      secretAccessKey: pulumi.Input.fromValue(map['secretAccessKey'] as String),
    );
  }
}

