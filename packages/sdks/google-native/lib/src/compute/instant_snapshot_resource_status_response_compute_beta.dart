// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstantSnapshotResourceStatusResponseComputeBeta {
  /// The storage size of this instant snapshot.
  final pulumi.Input<String> storageSizeBytes;

  /// Creates a new [InstantSnapshotResourceStatusResponseComputeBeta].
  /// [storageSizeBytes] The storage size of this instant snapshot.
  const InstantSnapshotResourceStatusResponseComputeBeta({
    required this.storageSizeBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageSizeBytes': storageSizeBytes,
    };
  }

  factory InstantSnapshotResourceStatusResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return InstantSnapshotResourceStatusResponseComputeBeta(
      storageSizeBytes: pulumi.Input.fromValue(map['storageSizeBytes'] as String),
    );
  }
}

