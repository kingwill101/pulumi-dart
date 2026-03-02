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
  VirtualDirectory({
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
      physicalPath: map['physicalPath'] == null ? null : (map['physicalPath']! as String).input(),
      virtualPath: map['virtualPath'] == null ? null : (map['virtualPath']! as String).input(),
    );
  }
}

