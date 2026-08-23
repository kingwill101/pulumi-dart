// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecHttpDataSource {
  /// The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.
  final pulumi.Input<String> listUrl;

  /// Creates a new [TransferJobTransferSpecHttpDataSource].
  /// [listUrl] The URL that points to the file that stores the object list entries. This file must allow public access. Currently, only URLs with HTTP and HTTPS schemes are supported.
  const TransferJobTransferSpecHttpDataSource({
    required this.listUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'listUrl': listUrl,
    };
  }

  factory TransferJobTransferSpecHttpDataSource.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecHttpDataSource(
      listUrl: pulumi.Input.fromValue(map['listUrl'] as String),
    );
  }
}
