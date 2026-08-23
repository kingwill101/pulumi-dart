// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceFilestore {
  /// Name of the Filestore instance, in the format
  /// 'projects/{project}/locations/{location}/instances/{instance}'
  final pulumi.Input<String>? filestore;

  /// Creates a new [ClusterStorageResourceFilestore].
  /// [filestore] Name of the Filestore instance, in the format
  const ClusterStorageResourceFilestore({
    this.filestore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filestore': ?filestore,
    };
  }

  factory ClusterStorageResourceFilestore.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceFilestore(
      filestore: (() { final guardedValue = map['filestore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
