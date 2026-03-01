// ignore_for_file: unused_element, unnecessary_cast


class GetCloudVmClusterFileSystemConfiguration {
  /// The mount path of the file system.
  final String mountPoint;
  /// The size of the virtual machine's file system.
  final int sizeInGb;

  /// Creates a new [GetCloudVmClusterFileSystemConfiguration].
  /// [mountPoint] The mount path of the file system.
  /// [sizeInGb] The size of the virtual machine's file system.
  GetCloudVmClusterFileSystemConfiguration({
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
      mountPoint: map['mountPoint'] as String,
      sizeInGb: map['sizeInGb'] as int,
    );
  }
}

