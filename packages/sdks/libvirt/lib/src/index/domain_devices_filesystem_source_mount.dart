// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemSourceMount {
  /// Sets the directory used as the mount point for the filesystem source.
  final pulumi.Input<String?>? dir;
  /// Indicates if the mount point is a socket.
  final pulumi.Input<String?>? socket;

  /// Creates a new [DomainDevicesFilesystemSourceMount].
  /// [dir] Sets the directory used as the mount point for the filesystem source.
  /// [socket] Indicates if the mount point is a socket.
  const DomainDevicesFilesystemSourceMount({
    this.dir,
    this.socket,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': ?dir,
      'socket': ?socket,
    };
  }

  factory DomainDevicesFilesystemSourceMount.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceMount(
      dir: (() { final guardedValue = map['dir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      socket: (() { final guardedValue = map['socket']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
