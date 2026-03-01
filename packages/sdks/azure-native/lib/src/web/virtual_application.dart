// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_directory.dart';

/// Virtual application in an app.
class VirtualApplication {
  /// Physical path.
  final String? physicalPath;
  /// <code>true</code> if preloading is enabled; otherwise, <code>false</code>.
  final bool? preloadEnabled;
  /// Virtual directories for virtual application.
  final List<VirtualDirectory>? virtualDirectories;
  /// Virtual path.
  final String? virtualPath;

  /// Creates a new [VirtualApplication].
  /// [physicalPath] Physical path.
  /// [preloadEnabled] <code>true</code> if preloading is enabled; otherwise, <code>false</code>.
  /// [virtualDirectories] Virtual directories for virtual application.
  /// [virtualPath] Virtual path.
  VirtualApplication({
    this.physicalPath,
    this.preloadEnabled,
    this.virtualDirectories,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'preloadEnabled': ?preloadEnabled,
      'virtualDirectories': ?virtualDirectories == null ? null : pulumi.Input.encodeList<VirtualDirectory, Map<String, dynamic>>(virtualDirectories!, (value) => value.toMap()),
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualApplication.fromMap(Map<String, dynamic> map) {
    return VirtualApplication(
      physicalPath: map['physicalPath'] == null ? null : map['physicalPath'] as String,
      preloadEnabled: map['preloadEnabled'] == null ? null : map['preloadEnabled'] as bool,
      virtualDirectories: map['virtualDirectories'] == null ? null : pulumi.Input.decodeList<VirtualDirectory>(map['virtualDirectories'], (value) => VirtualDirectory.fromMap((value as Map).cast<String, dynamic>())),
      virtualPath: map['virtualPath'] == null ? null : map['virtualPath'] as String,
    );
  }
}

