// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetDiscoveryStatusStat {
  /// The count of data items within the referenced resource.
  final pulumi.Input<int>? dataItems;
  /// The number of stored data bytes within the referenced resource.
  final pulumi.Input<int>? dataSize;
  /// The count of fileset entities within the referenced resource.
  final pulumi.Input<int>? filesets;
  /// The count of table entities within the referenced resource.
  final pulumi.Input<int>? tables;

  /// Creates a new [AssetDiscoveryStatusStat].
  /// [dataItems] The count of data items within the referenced resource.
  /// [dataSize] The number of stored data bytes within the referenced resource.
  /// [filesets] The count of fileset entities within the referenced resource.
  /// [tables] The count of table entities within the referenced resource.
  AssetDiscoveryStatusStat({
    this.dataItems,
    this.dataSize,
    this.filesets,
    this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataItems': ?dataItems,
      'dataSize': ?dataSize,
      'filesets': ?filesets,
      'tables': ?tables,
    };
  }

  factory AssetDiscoveryStatusStat.fromMap(Map<String, dynamic> map) {
    return AssetDiscoveryStatusStat(
      dataItems: map['dataItems'] == null ? null : (map['dataItems'] as int).input(),
      dataSize: map['dataSize'] == null ? null : (map['dataSize'] as int).input(),
      filesets: map['filesets'] == null ? null : (map['filesets'] as int).input(),
      tables: map['tables'] == null ? null : (map['tables'] as int).input(),
    );
  }
}

