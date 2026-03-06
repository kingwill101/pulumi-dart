// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecTransferManifest {
  /// The **GCS URI** to the manifest file (CSV or line-delimited). Example: `gs://my-bucket/manifest.csv`
  final pulumi.Input<String> location;

  /// Creates a new [TransferJobTransferSpecTransferManifest].
  /// [location] The **GCS URI** to the manifest file (CSV or line-delimited). Example: `gs://my-bucket/manifest.csv`
  const TransferJobTransferSpecTransferManifest({
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
    };
  }

  factory TransferJobTransferSpecTransferManifest.fromMap(Map<String, dynamic> map) {
    return TransferJobTransferSpecTransferManifest(
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

