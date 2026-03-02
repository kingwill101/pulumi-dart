// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GalleryApplicationVersionTargetRegion {
  /// Specifies whether this Gallery Application Version should be excluded from the `latest` filter. If set to `true`, this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`.
  final pulumi.Input<bool>? excludeFromLatest;
  /// The Azure Region in which the Gallery Application Version exists.
  final pulumi.Input<String> name;
  /// The number of replicas of the Gallery Application Version to be created per region. Possible values are between `1` and `10`.
  final pulumi.Input<int> regionalReplicaCount;
  /// The storage account type for the Gallery Application Version. Possible values are `Standard_LRS`, `Premium_LRS` and `Standard_ZRS`. Defaults to `Standard_LRS`.
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [GalleryApplicationVersionTargetRegion].
  /// [excludeFromLatest] Specifies whether this Gallery Application Version should be excluded from the `latest` filter. If set to `true`, this Gallery Application Version won't be returned for the `latest` version. Defaults to `false`.
  /// [name] The Azure Region in which the Gallery Application Version exists.
  /// [regionalReplicaCount] The number of replicas of the Gallery Application Version to be created per region. Possible values are between `1` and `10`.
  /// [storageAccountType] The storage account type for the Gallery Application Version. Possible values are `Standard_LRS`, `Premium_LRS` and `Standard_ZRS`. Defaults to `Standard_LRS`.
  GalleryApplicationVersionTargetRegion({
    this.excludeFromLatest,
    required this.name,
    required this.regionalReplicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeFromLatest': ?excludeFromLatest,
      'name': name,
      'regionalReplicaCount': regionalReplicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory GalleryApplicationVersionTargetRegion.fromMap(Map<String, dynamic> map) {
    return GalleryApplicationVersionTargetRegion(
      excludeFromLatest: map['excludeFromLatest'] == null ? null : (map['excludeFromLatest']! as bool).input(),
      name: (map['name'] as String).input(),
      regionalReplicaCount: (map['regionalReplicaCount'] as int).input(),
      storageAccountType: map['storageAccountType'] == null ? null : (map['storageAccountType']! as String).input(),
    );
  }
}

