// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfaceDownScript {
  /// Defines the path to the down script that will be executed when the interface is brought down.
  final pulumi.Input<String> path;

  /// Creates a new [DomainDevicesInterfaceDownScript].
  /// [path] Defines the path to the down script that will be executed when the interface is brought down.
  DomainDevicesInterfaceDownScript({
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
    };
  }

  factory DomainDevicesInterfaceDownScript.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceDownScript(
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

