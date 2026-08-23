// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The details of a metadata export operation.
class MetadataExportResponseMetastoreV1alpha {
  /// The type of the database dump.
  final pulumi.Input<String> databaseDumpType;
  /// A Cloud Storage URI of a folder that metadata are exported to, in the form of gs:////, where is automatically generated.
  final pulumi.Input<String> destinationGcsUri;
  /// The time when the export ended.
  final pulumi.Input<String> endTime;
  /// The time when the export started.
  final pulumi.Input<String> startTime;
  /// The current state of the export.
  final pulumi.Input<String> state;

  /// Creates a new [MetadataExportResponseMetastoreV1alpha].
  /// [databaseDumpType] The type of the database dump.
  /// [destinationGcsUri] A Cloud Storage URI of a folder that metadata are exported to, in the form of gs:////, where is automatically generated.
  /// [endTime] The time when the export ended.
  /// [startTime] The time when the export started.
  /// [state] The current state of the export.
  const MetadataExportResponseMetastoreV1alpha({
    required this.databaseDumpType,
    required this.destinationGcsUri,
    required this.endTime,
    required this.startTime,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseDumpType': databaseDumpType,
      'destinationGcsUri': destinationGcsUri,
      'endTime': endTime,
      'startTime': startTime,
      'state': state,
    };
  }

  factory MetadataExportResponseMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return MetadataExportResponseMetastoreV1alpha(
      databaseDumpType: pulumi.Input.fromValue(map['databaseDumpType'] as String),
      destinationGcsUri: pulumi.Input.fromValue(map['destinationGcsUri'] as String),
      endTime: pulumi.Input.fromValue(map['endTime'] as String),
      startTime: pulumi.Input.fromValue(map['startTime'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
