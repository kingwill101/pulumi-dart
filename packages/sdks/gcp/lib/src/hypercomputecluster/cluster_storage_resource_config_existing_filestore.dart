// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStorageResourceConfigExistingFilestore {
  /// Name of the Filestore instance to import, in the format
  /// `projects/{project}/locations/{location}/instances/{instance}`
  final pulumi.Input<String> filestore;

  /// Creates a new [ClusterStorageResourceConfigExistingFilestore].
  /// [filestore] Name of the Filestore instance to import, in the format
  const ClusterStorageResourceConfigExistingFilestore({
    required this.filestore,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filestore': filestore,
    };
  }

  factory ClusterStorageResourceConfigExistingFilestore.fromMap(Map<String, dynamic> map) {
    return ClusterStorageResourceConfigExistingFilestore(
      filestore: pulumi.Input.fromValue(map['filestore'] as String),
    );
  }
}
