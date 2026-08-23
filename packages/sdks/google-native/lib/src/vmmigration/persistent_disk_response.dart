// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of a created Persistent Disk.
class PersistentDiskResponse {
  /// The URI of the Persistent Disk.
  final pulumi.Input<String> diskUri;
  /// The ordinal number of the source VM disk.
  final pulumi.Input<int> sourceDiskNumber;

  /// Creates a new [PersistentDiskResponse].
  /// [diskUri] The URI of the Persistent Disk.
  /// [sourceDiskNumber] The ordinal number of the source VM disk.
  const PersistentDiskResponse({
    required this.diskUri,
    required this.sourceDiskNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskUri': diskUri,
      'sourceDiskNumber': sourceDiskNumber,
    };
  }

  factory PersistentDiskResponse.fromMap(Map<String, dynamic> map) {
    return PersistentDiskResponse(
      diskUri: pulumi.Input.fromValue(map['diskUri'] as String),
      sourceDiskNumber: pulumi.Input.fromValue(map['sourceDiskNumber'] as int),
    );
  }
}
