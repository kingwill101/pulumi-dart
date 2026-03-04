// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_folder_big_query_export_args_doc}
/// Arguments for getFolderBigQueryExport.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_folder_big_query_export_args_doc}
class GetFolderBigQueryExportArgs {
  final pulumi.Input<String> bigQueryExportId;
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderBigQueryExportArgs].
  /// [bigQueryExportId] Required.
  /// [folderId] Required.
  GetFolderBigQueryExportArgs({
    required this.bigQueryExportId,
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bigQueryExportId': bigQueryExportId,
      'folderId': folderId,
    };
  }

  factory GetFolderBigQueryExportArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderBigQueryExportArgs(
      bigQueryExportId: pulumi.Input.fromValue(
        map['bigQueryExportId'] as String,
      ),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
    );
  }
}
