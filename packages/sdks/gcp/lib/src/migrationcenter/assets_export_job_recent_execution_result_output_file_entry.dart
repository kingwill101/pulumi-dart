// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result_output_file_entry_csv_output_file.dart';
import 'assets_export_job_recent_execution_result_output_file_entry_xlsx_output_file.dart';

class AssetsExportJobRecentExecutionResultOutputFileEntry {
  /// (Output)
  /// Contains a single output file of type CSV.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile>?>? csvOutputFiles;
  /// (Output)
  /// File size in bytes.
  final pulumi.Input<String?>? fileSizeBytes;
  /// (Output)
  /// Contains a single output file of type XLSX.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile>?>? xlsxOutputFiles;

  /// Creates a new [AssetsExportJobRecentExecutionResultOutputFileEntry].
  /// [csvOutputFiles] (Output)
  /// [fileSizeBytes] (Output)
  /// [xlsxOutputFiles] (Output)
  const AssetsExportJobRecentExecutionResultOutputFileEntry({
    this.csvOutputFiles,
    this.fileSizeBytes,
    this.xlsxOutputFiles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csvOutputFiles': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile>, List<Map<String, dynamic>>>(csvOutputFiles, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fileSizeBytes': ?fileSizeBytes,
      'xlsxOutputFiles': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile>, List<Map<String, dynamic>>>(xlsxOutputFiles, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetsExportJobRecentExecutionResultOutputFileEntry.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResultOutputFileEntry(
      csvOutputFiles: (() { final guardedValue = map['csvOutputFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile>(guardedValue, (value) => AssetsExportJobRecentExecutionResultOutputFileEntryCsvOutputFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      fileSizeBytes: (() { final guardedValue = map['fileSizeBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xlsxOutputFiles: (() { final guardedValue = map['xlsxOutputFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile>(guardedValue, (value) => AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
