// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterFileSystemConfiguration {
  /// The mount path of the file system.
  final pulumi.Input<String>? mountPoint;
  /// The size of the virtual machine's file system.
  final pulumi.Input<int>? sizeInGb;

  /// Creates a new [CloudVmClusterFileSystemConfiguration].
  /// [mountPoint] The mount path of the file system.
  /// [sizeInGb] The size of the virtual machine's file system.
  const CloudVmClusterFileSystemConfiguration({
    this.mountPoint,
    this.sizeInGb,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountPoint': ?mountPoint,
      'sizeInGb': ?sizeInGb,
    };
  }

  factory CloudVmClusterFileSystemConfiguration.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterFileSystemConfiguration(
      mountPoint: (() { final guardedValue = map['mountPoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sizeInGb: (() { final guardedValue = map['sizeInGb']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
