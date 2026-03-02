// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Ifile resources.
class IfileState {
  /// The system iFile name to reference (e.g., `/Common/my-sys-ifile`). This should reference an existing system iFile created with `f5bigip.sys.Ifile`.
  final pulumi.Input<String>? fileName;
  /// The complete path of the LTM iFile on the BIG-IP system.
  final pulumi.Input<String>? fullPath;
  /// Name of the LTM iFile to be created on BIG-IP.
  final pulumi.Input<String>? name;
  /// Partition where the LTM iFile will be created. Defaults to `Common`.
  final pulumi.Input<String>? partition;
  /// Subdirectory within the partition for organizing iFiles.
  final pulumi.Input<String>? subPath;

  /// Creates a new [IfileState].
  /// [fileName] The system iFile name to reference (e.g., `/Common/my-sys-ifile`). This should reference an existing system iFile created with `f5bigip.sys.Ifile`.
  /// [fullPath] The complete path of the LTM iFile on the BIG-IP system.
  /// [name] Name of the LTM iFile to be created on BIG-IP.
  /// [partition] Partition where the LTM iFile will be created. Defaults to `Common`.
  /// [subPath] Subdirectory within the partition for organizing iFiles.
  IfileState({
    this.fileName,
    this.fullPath,
    this.name,
    this.partition,
    this.subPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileName': ?fileName,
      'fullPath': ?fullPath,
      'name': ?name,
      'partition': ?partition,
      'subPath': ?subPath,
    };
  }

  factory IfileState.fromMap(Map<String, dynamic> map) {
    return IfileState(
      fileName: map['fileName'] == null ? null : (map['fileName']! as String).input(),
      fullPath: map['fullPath'] == null ? null : (map['fullPath']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      partition: map['partition'] == null ? null : (map['partition']! as String).input(),
      subPath: map['subPath'] == null ? null : (map['subPath']! as String).input(),
    );
  }
}

