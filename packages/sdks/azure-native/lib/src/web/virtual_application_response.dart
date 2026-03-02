// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_directory_response.dart';

/// Virtual application in an app.
class VirtualApplicationResponse {
  /// Physical path.
  final pulumi.Input<String>? physicalPath;
  /// <code>true</code> if preloading is enabled; otherwise, <code>false</code>.
  final pulumi.Input<bool>? preloadEnabled;
  /// Virtual directories for virtual application.
  final pulumi.Input<List<VirtualDirectoryResponse>>? virtualDirectories;
  /// Virtual path.
  final pulumi.Input<String>? virtualPath;

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
      'virtualDirectories': ?pulumi.Input.mapOptionalInputValue<List<VirtualDirectoryResponse>, List<Map<String, dynamic>>>(virtualDirectories, (value) => pulumi.Input.encodeList<VirtualDirectoryResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualApplicationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualApplicationResponse(
      physicalPath: map['physicalPath'] == null ? null : (map['physicalPath']! as String).input(),
      preloadEnabled: map['preloadEnabled'] == null ? null : (map['preloadEnabled']! as bool).input(),
      virtualDirectories: map['virtualDirectories'] == null ? null : (pulumi.Input.decodeList<VirtualDirectoryResponse>(map['virtualDirectories']!, (value) => VirtualDirectoryResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualPath: map['virtualPath'] == null ? null : (map['virtualPath']! as String).input(),
    );
  }
}

