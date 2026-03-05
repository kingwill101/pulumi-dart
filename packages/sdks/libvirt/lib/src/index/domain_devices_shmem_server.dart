// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesShmemServer {
  /// Specifies the path for the server related to the shared memory device.
  final pulumi.Input<String>? path;

  /// Creates a new [DomainDevicesShmemServer].
  /// [path] Specifies the path for the server related to the shared memory device.
  DomainDevicesShmemServer({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainDevicesShmemServer.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemServer(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

