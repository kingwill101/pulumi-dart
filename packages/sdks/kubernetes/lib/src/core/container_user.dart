// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linux_container_user.dart';

/// ContainerUser represents user identity information
class ContainerUser {
  /// Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  final pulumi.Input<LinuxContainerUser>? linux;

  /// Creates a new [ContainerUser].
  /// [linux] Linux holds user identity information initially attached to the first process of the containers in Linux. Note that the actual running identity can be changed if the process has enough privilege to do so.
  const ContainerUser({
    this.linux,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linux': ?pulumi.Input.mapOptionalInputValue<LinuxContainerUser, Map<String, dynamic>>(linux, (value) => value.toMap()),
    };
  }

  factory ContainerUser.fromMap(Map<String, dynamic> map) {
    return ContainerUser(
      linux: (() { final guardedValue = map['linux']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxContainerUser.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
