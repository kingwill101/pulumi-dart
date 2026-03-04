// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_export_response_metastore_v1alpha.dart';
import 'restore_response_metastore_v1alpha.dart';

/// The metadata management activities of the metastore service.
class MetadataManagementActivityResponseMetastoreV1alpha {
  /// The latest metadata exports of the metastore service.
  final pulumi.Input<List<MetadataExportResponseMetastoreV1alpha>>
  metadataExports;

  /// The latest restores of the metastore service.
  final pulumi.Input<List<RestoreResponseMetastoreV1alpha>> restores;

  /// Creates a new [MetadataManagementActivityResponseMetastoreV1alpha].
  /// [metadataExports] The latest metadata exports of the metastore service.
  /// [restores] The latest restores of the metastore service.
  MetadataManagementActivityResponseMetastoreV1alpha({
    required this.metadataExports,
    required this.restores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataExports':
          pulumi.Input.mapInputValue<
            List<MetadataExportResponseMetastoreV1alpha>,
            List<Map<String, dynamic>>
          >(
            metadataExports,
            (value) =>
                pulumi.Input.encodeList<
                  MetadataExportResponseMetastoreV1alpha,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'restores':
          pulumi.Input.mapInputValue<
            List<RestoreResponseMetastoreV1alpha>,
            List<Map<String, dynamic>>
          >(
            restores,
            (value) =>
                pulumi.Input.encodeList<
                  RestoreResponseMetastoreV1alpha,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory MetadataManagementActivityResponseMetastoreV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetadataManagementActivityResponseMetastoreV1alpha(
      metadataExports: pulumi.Input.fromValue(
        pulumi.Input.decodeList<MetadataExportResponseMetastoreV1alpha>(
          map['metadataExports']!,
          (value) => MetadataExportResponseMetastoreV1alpha.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      restores: pulumi.Input.fromValue(
        pulumi.Input.decodeList<RestoreResponseMetastoreV1alpha>(
          map['restores']!,
          (value) => RestoreResponseMetastoreV1alpha.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
