// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes the target region information.
class TargetRegion {
  /// The name of the region.
  final pulumi.Input<String> name;
  /// The number of replicas of the Image Version to be created in this region. Omit to use the default (1).
  final pulumi.Input<int>? replicaCount;
  /// Specifies the storage account type to be used to store the image in this region. Omit to use the default (Standard_LRS).
  final pulumi.Input<String>? storageAccountType;

  /// Creates a new [TargetRegion].
  /// [name] The name of the region.
  /// [replicaCount] The number of replicas of the Image Version to be created in this region. Omit to use the default (1).
  /// [storageAccountType] Specifies the storage account type to be used to store the image in this region. Omit to use the default (Standard_LRS).
  TargetRegion({
    required this.name,
    this.replicaCount,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'replicaCount': ?replicaCount,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory TargetRegion.fromMap(Map<String, dynamic> map) {
    return TargetRegion(
      name: pulumi.Input.fromValue(map['name'] as String),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageAccountType: (() { final guardedValue = map['storageAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

