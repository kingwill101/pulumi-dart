// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstantSnapshotResourceStatusResponse {
  /// The storage size of this instant snapshot.
  final pulumi.Input<String> storageSizeBytes;

  /// Creates a new [InstantSnapshotResourceStatusResponse].
  /// [storageSizeBytes] The storage size of this instant snapshot.
  InstantSnapshotResourceStatusResponse({required this.storageSizeBytes});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'storageSizeBytes': storageSizeBytes};
  }

  factory InstantSnapshotResourceStatusResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InstantSnapshotResourceStatusResponse(
      storageSizeBytes: pulumi.Input.fromValue(
        map['storageSizeBytes'] as String,
      ),
    );
  }
}
