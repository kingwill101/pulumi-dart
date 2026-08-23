// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty {
  /// The description of the Compute Engine instance.
  final pulumi.Input<String> description;
  /// The machine type of the instance.
  final pulumi.Input<String> machineType;
  /// The full resource name of the DataSource, in the format projects/{project}/locations/{location}/backupVaults/{backupVaultId}/dataSources/{dataSourceId}.
  final pulumi.Input<String> name;
  /// The total number of disks attached to the Instance.
  final pulumi.Input<String> totalDiskCount;
  /// The sum of all the disk sizes.
  final pulumi.Input<String> totalDiskSizeGb;

  /// Creates a new [GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty].
  /// [description] The description of the Compute Engine instance.
  /// [machineType] The machine type of the instance.
  /// [name] The full resource name of the DataSource, in the format projects/{project}/locations/{location}/backupVaults/{backupVaultId}/dataSources/{dataSourceId}.
  /// [totalDiskCount] The total number of disks attached to the Instance.
  /// [totalDiskSizeGb] The sum of all the disk sizes.
  const GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty({
    required this.description,
    required this.machineType,
    required this.name,
    required this.totalDiskCount,
    required this.totalDiskSizeGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'machineType': machineType,
      'name': name,
      'totalDiskCount': totalDiskCount,
      'totalDiskSizeGb': totalDiskSizeGb,
    };
  }

  factory GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty(
      description: pulumi.Input.fromValue(map['description'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      totalDiskCount: pulumi.Input.fromValue(map['totalDiskCount'] as String),
      totalDiskSizeGb: pulumi.Input.fromValue(map['totalDiskSizeGb'] as String),
    );
  }
}
