// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The aggregated data statistics for the asset reported by discovery.
class GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse {
  /// The count of data items within the referenced resource.
  final pulumi.Input<String> dataItems;
  /// The number of stored data bytes within the referenced resource.
  final pulumi.Input<String> dataSize;
  /// The count of fileset entities within the referenced resource.
  final pulumi.Input<String> filesets;
  /// The count of table entities within the referenced resource.
  final pulumi.Input<String> tables;

  /// Creates a new [GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse].
  /// [dataItems] The count of data items within the referenced resource.
  /// [dataSize] The number of stored data bytes within the referenced resource.
  /// [filesets] The count of fileset entities within the referenced resource.
  /// [tables] The count of table entities within the referenced resource.
  GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse({
    required this.dataItems,
    required this.dataSize,
    required this.filesets,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataItems': dataItems,
      'dataSize': dataSize,
      'filesets': filesets,
      'tables': tables,
    };
  }

  factory GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1AssetDiscoveryStatusStatsResponse(
      dataItems: (map['dataItems'] as String).input(),
      dataSize: (map['dataSize'] as String).input(),
      filesets: (map['filesets'] as String).input(),
      tables: (map['tables'] as String).input(),
    );
  }
}

