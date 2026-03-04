// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetExadataInfrastructureDefinedFileSystemConfiguration {
  /// Whether the backup partition is enabled.
  final pulumi.Input<bool> backupPartitionEnabled;

  /// The minimum size of the file system in GB.
  final pulumi.Input<int> minimumSizeInGb;

  /// Mount path for the file system.
  final pulumi.Input<String> mountPoint;

  /// Whether the resizable is enabled.
  final pulumi.Input<bool> resizableEnabled;

  /// Creates a new [GetExadataInfrastructureDefinedFileSystemConfiguration].
  /// [backupPartitionEnabled] Whether the backup partition is enabled.
  /// [minimumSizeInGb] The minimum size of the file system in GB.
  /// [mountPoint] Mount path for the file system.
  /// [resizableEnabled] Whether the resizable is enabled.
  GetExadataInfrastructureDefinedFileSystemConfiguration({
    required this.backupPartitionEnabled,
    required this.minimumSizeInGb,
    required this.mountPoint,
    required this.resizableEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPartitionEnabled': backupPartitionEnabled,
      'minimumSizeInGb': minimumSizeInGb,
      'mountPoint': mountPoint,
      'resizableEnabled': resizableEnabled,
    };
  }

  factory GetExadataInfrastructureDefinedFileSystemConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetExadataInfrastructureDefinedFileSystemConfiguration(
      backupPartitionEnabled: pulumi.Input.fromValue(
        map['backupPartitionEnabled'] as bool,
      ),
      minimumSizeInGb: pulumi.Input.fromValue(map['minimumSizeInGb'] as int),
      mountPoint: pulumi.Input.fromValue(map['mountPoint'] as String),
      resizableEnabled: pulumi.Input.fromValue(map['resizableEnabled'] as bool),
    );
  }
}
