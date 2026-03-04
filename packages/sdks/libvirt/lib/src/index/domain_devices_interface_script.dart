// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceScript {
  /// Defines the path to the down script that will be executed when the interface is brought down.
  final pulumi.Input<String> path;

  /// Creates a new [DomainDevicesInterfaceScript].
  /// [path] Defines the path to the down script that will be executed when the interface is brought down.
  DomainDevicesInterfaceScript({required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'path': path};
  }

  factory DomainDevicesInterfaceScript.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceScript(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
