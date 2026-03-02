// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_export_response_metastore_v1beta.dart';
import 'restore_response_metastore_v1beta.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponseMetastoreV1beta {
  /// The latest metadata exports of the metastore service.
  final pulumi.Input<List<MetadataExportResponseMetastoreV1beta>> metadataExports;
  /// The latest restores of the metastore service.
  final pulumi.Input<List<RestoreResponseMetastoreV1beta>> restores;

  /// Creates a new [MetadataManagementActivityResponseMetastoreV1beta].
  /// [metadataExports] The latest metadata exports of the metastore service.
  /// [restores] The latest restores of the metastore service.
  MetadataManagementActivityResponseMetastoreV1beta({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataExports': pulumi.Input.mapInputValue<List<MetadataExportResponseMetastoreV1beta>, List<Map<String, dynamic>>>(metadataExports, (value) => pulumi.Input.encodeList<MetadataExportResponseMetastoreV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
      'restores': pulumi.Input.mapInputValue<List<RestoreResponseMetastoreV1beta>, List<Map<String, dynamic>>>(restores, (value) => pulumi.Input.encodeList<RestoreResponseMetastoreV1beta, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory MetadataManagementActivityResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return MetadataManagementActivityResponseMetastoreV1beta(
      metadataExports: (pulumi.Input.decodeList<MetadataExportResponseMetastoreV1beta>(map['metadataExports'], (value) => MetadataExportResponseMetastoreV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
      restores: (pulumi.Input.decodeList<RestoreResponseMetastoreV1beta>(map['restores'], (value) => RestoreResponseMetastoreV1beta.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

