// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assets_export_job_recent_execution_result_signed_uri_signed_uri.dart';

class AssetsExportJobRecentExecutionResultSignedUri {
  /// (Output)
  /// List of signed URIs.
  /// Structure is documented below.
  final pulumi.Input<List<AssetsExportJobRecentExecutionResultSignedUriSignedUri>?>? signedUris;

  /// Creates a new [AssetsExportJobRecentExecutionResultSignedUri].
  /// [signedUris] (Output)
  const AssetsExportJobRecentExecutionResultSignedUri({
    this.signedUris,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'signedUris': ?pulumi.Input.mapOptionalInputValue<List<AssetsExportJobRecentExecutionResultSignedUriSignedUri>, List<Map<String, dynamic>>>(signedUris, (value) => pulumi.Input.encodeList<AssetsExportJobRecentExecutionResultSignedUriSignedUri, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AssetsExportJobRecentExecutionResultSignedUri.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobRecentExecutionResultSignedUri(
      signedUris: (() { final guardedValue = map['signedUris']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssetsExportJobRecentExecutionResultSignedUriSignedUri>(guardedValue, (value) => AssetsExportJobRecentExecutionResultSignedUriSignedUri.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
