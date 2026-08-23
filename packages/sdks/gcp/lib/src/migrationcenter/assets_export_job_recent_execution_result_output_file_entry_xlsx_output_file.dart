// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result_output_file_entry_xlsx_output_file_signed_uri.dart';

class AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile {
  /// (Output)
  /// Contains a signed URI.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri>>? signedUris;

  /// Creates a new [AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile].
  /// [signedUris] (Output)
  const AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile({
    this.signedUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signedUris': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri>, List<Map<String, dynamic>>>(signedUris, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFile(
      signedUris: (() { final guardedValue = map['signedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri>(guardedValue, (value) => AssetsExportJobRecentExecutionResultOutputFileEntryXlsxOutputFileSignedUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
