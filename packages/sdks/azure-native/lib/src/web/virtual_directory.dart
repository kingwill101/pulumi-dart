// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Directory for virtual application.
class VirtualDirectory {
  /// Physical path.
  final pulumi.Input<String>? physicalPath;
  /// Path to virtual application.
  final pulumi.Input<String>? virtualPath;

  /// Creates a new [VirtualDirectory].
  /// [physicalPath] Physical path.
  /// [virtualPath] Path to virtual application.
  const VirtualDirectory({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualDirectory.fromMap(Map<String, dynamic> map) {
    return VirtualDirectory(
      physicalPath: (() { final guardedValue = map['physicalPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualPath: (() { final guardedValue = map['virtualPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
