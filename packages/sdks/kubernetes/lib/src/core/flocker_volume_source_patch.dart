// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
class FlockerVolumeSourcePatch {
  /// datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
  final pulumi.Input<String>? datasetName;
  /// datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
  final pulumi.Input<String>? datasetUUID;

  /// Creates a new [FlockerVolumeSourcePatch].
  /// [datasetName] datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated
  /// [datasetUUID] datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
  FlockerVolumeSourcePatch({
    this.datasetName,
    this.datasetUUID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetName': ?datasetName,
      'datasetUUID': ?datasetUUID,
    };
  }

  factory FlockerVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return FlockerVolumeSourcePatch(
      datasetName: map['datasetName'] == null ? null : (map['datasetName']! as String).input(),
      datasetUUID: map['datasetUUID'] == null ? null : (map['datasetUUID']! as String).input(),
    );
  }
}

