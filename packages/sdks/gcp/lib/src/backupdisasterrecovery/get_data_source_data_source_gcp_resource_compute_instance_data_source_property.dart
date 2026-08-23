// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty {
  /// The description of the Compute Engine instance.
  final pulumi.Input<String> description;
  /// The machine type of the instance.
  final pulumi.Input<String> machineType;
  /// Name of the compute instance backed up by the datasource.
  final pulumi.Input<String> name;
  /// The total number of disks attached to the Instance.
  final pulumi.Input<String> totalDiskCount;
  /// The sum of all the disk sizes.
  final pulumi.Input<String> totalDiskSizeGb;

  /// Creates a new [GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty].
  /// [description] The description of the Compute Engine instance.
  /// [machineType] The machine type of the instance.
  /// [name] Name of the compute instance backed up by the datasource.
  /// [totalDiskCount] The total number of disks attached to the Instance.
  /// [totalDiskSizeGb] The sum of all the disk sizes.
  const GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty({
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

  factory GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty.fromMap(Map<String, dynamic> map) {
    return GetDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty(
      description: pulumi.Input.fromValue(map['description'] as String),
      machineType: pulumi.Input.fromValue(map['machineType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      totalDiskCount: pulumi.Input.fromValue(map['totalDiskCount'] as String),
      totalDiskSizeGb: pulumi.Input.fromValue(map['totalDiskSizeGb'] as String),
    );
  }
}
