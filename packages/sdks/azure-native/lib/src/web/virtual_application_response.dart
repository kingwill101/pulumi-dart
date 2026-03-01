// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_directory_response.dart';

/// Virtual application in an app.
class VirtualApplicationResponse {
  /// Physical path.
  final String? physicalPath;
  /// <code>true</code> if preloading is enabled; otherwise, <code>false</code>.
  final bool? preloadEnabled;
  /// Virtual directories for virtual application.
  final List<VirtualDirectoryResponse>? virtualDirectories;
  /// Virtual path.
  final String? virtualPath;

  /// Creates a new [VirtualApplicationResponse].
  /// [physicalPath] Physical path.
  /// [preloadEnabled] <code>true</code> if preloading is enabled; otherwise, <code>false</code>.
  /// [virtualDirectories] Virtual directories for virtual application.
  /// [virtualPath] Virtual path.
  VirtualApplicationResponse({
    this.physicalPath,
    this.preloadEnabled,
    this.virtualDirectories,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'preloadEnabled': ?preloadEnabled,
      'virtualDirectories': ?virtualDirectories == null ? null : pulumi.Input.encodeList<VirtualDirectoryResponse, Map<String, dynamic>>(virtualDirectories!, (value) => value.toMap()),
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualApplicationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplicationResponse(
      physicalPath: map['physicalPath'] == null ? null : map['physicalPath'] as String,
      preloadEnabled: map['preloadEnabled'] == null ? null : map['preloadEnabled'] as bool,
      virtualDirectories: map['virtualDirectories'] == null ? null : pulumi.Input.decodeList<VirtualDirectoryResponse>(map['virtualDirectories'], (value) => VirtualDirectoryResponse.fromMap((value as Map).cast<String, dynamic>())),
      virtualPath: map['virtualPath'] == null ? null : map['virtualPath'] as String,
    );
  }
}

