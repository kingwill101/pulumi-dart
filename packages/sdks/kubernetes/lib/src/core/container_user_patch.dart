// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_container_user_patch.dart';

/// ContainerUser represents user identity information
class ContainerUserPatch {
  /// Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  final pulumi.Input<LinuxContainerUserPatch>? linux;

  /// Creates a new [ContainerUserPatch].
  /// [linux] Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  const ContainerUserPatch({
    this.linux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linux': ?pulumi.Input.mapOptionalInputValue<LinuxContainerUserPatch, Map<String, dynamic>>(linux, (value) => value.toMap()),
    };
  }

  factory ContainerUserPatch.fromMap(Map<String, dynamic> map) {
    return ContainerUserPatch(
      linux: (() { final guardedValue = map['linux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxContainerUserPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

