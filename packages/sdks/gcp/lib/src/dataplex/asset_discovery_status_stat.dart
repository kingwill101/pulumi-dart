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
  const AssetDiscoveryStatusStat({
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
      dataItems: (() { final guardedValue = map['dataItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataSize: (() { final guardedValue = map['dataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      filesets: (() { final guardedValue = map['filesets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
