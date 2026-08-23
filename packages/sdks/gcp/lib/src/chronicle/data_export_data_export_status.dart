// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataExportDataExportStatus {
  /// (Output)
  /// Indicates whether the data export is filtered by RBAC.
  final pulumi.Input<bool>? dataRbacFiltered;
  /// (Output)
  /// The error message if the stage is FINISHED_FAILURE.
  final pulumi.Input<String>? error;
  /// (Output)
  /// List of exported glob patterns.
  final pulumi.Input<List<String>>? exportedGlobPatterns;
  /// (Output)
  /// The stage/status of a given data export request.
  final pulumi.Input<String>? stage;

  /// Creates a new [DataExportDataExportStatus].
  /// [dataRbacFiltered] (Output)
  /// [error] (Output)
  /// [exportedGlobPatterns] (Output)
  /// [stage] (Output)
  const DataExportDataExportStatus({
    this.dataRbacFiltered,
    this.error,
    this.exportedGlobPatterns,
    this.stage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataRbacFiltered': ?dataRbacFiltered,
      'error': ?error,
      'exportedGlobPatterns': ?exportedGlobPatterns,
      'stage': ?stage,
    };
  }

  factory DataExportDataExportStatus.fromMap(Map<String, dynamic> map) {
    return DataExportDataExportStatus(
      dataRbacFiltered: (() { final guardedValue = map['dataRbacFiltered']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportedGlobPatterns: (() { final guardedValue = map['exportedGlobPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
