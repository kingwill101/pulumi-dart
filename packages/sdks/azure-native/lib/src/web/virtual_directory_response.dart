// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Directory for virtual application.
class VirtualDirectoryResponse {
  /// Physical path.
  final pulumi.Input<String>? physicalPath;
  /// Path to virtual application.
  final pulumi.Input<String>? virtualPath;

  /// Creates a new [VirtualDirectoryResponse].
  /// [physicalPath] Physical path.
  /// [virtualPath] Path to virtual application.
  VirtualDirectoryResponse({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDirectoryResponse(
      physicalPath: (() { final guardedValue = map['physicalPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualPath: (() { final guardedValue = map['virtualPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

