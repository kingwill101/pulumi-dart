// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClusterFileSystemConfiguration {
  /// The mount path of the file system.
  final pulumi.Input<String> mountPoint;
  /// The size of the virtual machine's file system.
  final pulumi.Input<int> sizeInGb;

  /// Creates a new [GetCloudVmClusterFileSystemConfiguration].
  /// [mountPoint] The mount path of the file system.
  /// [sizeInGb] The size of the virtual machine's file system.
  const GetCloudVmClusterFileSystemConfiguration({
    required this.mountPoint,
    required this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoint': mountPoint,
      'sizeInGb': sizeInGb,
    };
  }

  factory GetCloudVmClusterFileSystemConfiguration.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClusterFileSystemConfiguration(
      mountPoint: pulumi.Input.fromValue(map['mountPoint'] as String),
      sizeInGb: pulumi.Input.fromValue((map['sizeInGb'] as num).toInt()),
    );
  }
}
