// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result_output_file_entry_csv_output_file_signed_uri.dart';

class AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile {
  /// (Output)
  /// Number of columns in the file.
  final pulumi.Input<int>? columnsCount;
  /// (Output)
  /// Number of rows in the file.
  final pulumi.Input<int>? rowCount;
  /// (Output)
  /// Contains a signed URI.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFileSignedUri>>? signedUris;

  /// Creates a new [AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile].
  /// [columnsCount] (Output)
  /// [rowCount] (Output)
  /// [signedUris] (Output)
  const AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile({
    this.columnsCount,
    this.rowCount,
    this.signedUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnsCount': ?columnsCount,
      'rowCount': ?rowCount,
      'signedUris': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFileSignedUri>, List<Map<String, dynamic>>>(signedUris, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFileSignedUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile(
      columnsCount: (() { final guardedValue = map['columnsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rowCount: (() { final guardedValue = map['rowCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      signedUris: (() { final guardedValue = map['signedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFileSignedUri>(guardedValue, (value) => AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFileSignedUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
