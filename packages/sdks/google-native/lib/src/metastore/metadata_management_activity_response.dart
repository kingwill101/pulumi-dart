// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_export_response.dart';
import 'restore_response.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponse {
  /// The latest metadata exports of the metastore service.
  final pulumi.Input<List<MetadataExportResponse>> metadataExports;
  /// The latest restores of the metastore service.
  final pulumi.Input<List<RestoreResponse>> restores;

  /// Creates a new [MetadataManagementActivityResponse].
  /// [metadataExports] The latest metadata exports of the metastore service.
  /// [restores] The latest restores of the metastore service.
  MetadataManagementActivityResponse({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataExports': pulumi.Input.mapInputValue<List<MetadataExportResponse>, List<Map<String, dynamic>>>(metadataExports, (value) => pulumi.Input.encodeList<MetadataExportResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restores': pulumi.Input.mapInputValue<List<RestoreResponse>, List<Map<String, dynamic>>>(restores, (value) => pulumi.Input.encodeList<RestoreResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetadataManagementActivityResponse.fromMap(Map<String, dynamic> map) {
    return MetadataManagementActivityResponse(
      metadataExports: pulumi.Input.fromValue(pulumi.Input.decodeList<MetadataExportResponse>(map['metadataExports']!, (value) => MetadataExportResponse.fromMap((value as Map).cast<String, dynamic>()))),
      restores: pulumi.Input.fromValue(pulumi.Input.decodeList<RestoreResponse>(map['restores']!, (value) => RestoreResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

