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
      fileName: (() { final guardedValue = map['fileName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fullPath: (() { final guardedValue = map['fullPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subPath: (() { final guardedValue = map['subPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

