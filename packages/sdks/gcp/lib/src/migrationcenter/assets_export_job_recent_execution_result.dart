// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result_error.dart';
import 'assets_export_job_recent_execution_result_output_file.dart';
import 'assets_export_job_recent_execution_result_signed_uri.dart';

class AssetsExportJobRecentExecutionResult {
  /// (Output)
  /// The `Status` type defines a logical error model that is suitable for
  /// different programming environments, including REST APIs and RPC APIs. It is
  /// used by [gRPC](https://github.com/grpc). Each `Status` message contains
  /// three pieces of data: error code, error message, and error details.
  /// You can find out more about this error model and how to work with it in the
  /// [API Design Guide](https://cloud.google.com/apis/design/errors).
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultError>?>? errors;
  /// (Output)
  /// Contains a list of output files.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultOutputFile>?>? outputFiles;
  /// (Output)
  /// List of signed URIs.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultSignedUri>?>? signedUris;

  /// Creates a new [AssetsExportJobRecentExecutionResult].
  /// [errors] (Output)
  /// [outputFiles] (Output)
  /// [signedUris] (Output)
  const AssetsExportJobRecentExecutionResult({
    this.errors,
    this.outputFiles,
    this.signedUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'errors': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultError>, List<Map<String, dynamic>>>(errors, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultError, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputFiles': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultOutputFile>, List<Map<String, dynamic>>>(outputFiles, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultOutputFile, Map<String, dynamic>>(value, (value) => value.toMap())),
      'signedUris': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultSignedUri>, List<Map<String, dynamic>>>(signedUris, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultSignedUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetsExportJobRecentExecutionResult.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResult(
      errors: (() { final guardedValue = map['errors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultError>(guardedValue, (value) => AssetsExportJobRecentExecutionResultError.fromMap((value as Map).cast<String, dynamic>()))); })(),
      outputFiles: (() { final guardedValue = map['outputFiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultOutputFile>(guardedValue, (value) => AssetsExportJobRecentExecutionResultOutputFile.fromMap((value as Map).cast<String, dynamic>()))); })(),
      signedUris: (() { final guardedValue = map['signedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultSignedUri>(guardedValue, (value) => AssetsExportJobRecentExecutionResultSignedUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
