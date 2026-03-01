// ignore_for_file: unused_element, unnecessary_cast


class GetExadataInfrastructureDefinedFileSystemConfiguration {
  /// Whether the backup partition is enabled.
  final bool backupPartitionEnabled;
  /// The minimum size of the file system in GB.
  final int minimumSizeInGb;
  /// Mount path for the file system.
  final String mountPoint;
  /// Whether the resizable is enabled.
  final bool resizableEnabled;

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

  factory GetExadataInfrastructureDefinedFileSystemConfiguration.fromMap(Map<String, dynamic> map) {
    return GetExadataInfrastructureDefinedFileSystemConfiguration(
      backupPartitionEnabled: map['backupPartitionEnabled'] as bool,
      minimumSizeInGb: map['minimumSizeInGb'] as int,
      mountPoint: map['mountPoint'] as String,
      resizableEnabled: map['resizableEnabled'] as bool,
    );
  }
}

