// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result_output_file_entry.dart';

class AssetsExportJobRecentExecutionResultOutputFile {
  /// (Output)
  /// List of output files.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultOutputFileEntry>?>? entries;

  /// Creates a new [AssetsExportJobRecentExecutionResultOutputFile].
  /// [entries] (Output)
  const AssetsExportJobRecentExecutionResultOutputFile({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultOutputFileEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultOutputFileEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetsExportJobRecentExecutionResultOutputFile.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResultOutputFile(
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultOutputFileEntry>(guardedValue, (value) => AssetsExportJobRecentExecutionResultOutputFileEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
