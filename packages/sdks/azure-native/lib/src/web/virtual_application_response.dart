// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_directory_response.dart';

/// Virtual application in an app.
class VirtualApplicationResponse {
  /// Physical path.
  final pulumi.Input<String>? physicalPath;
  /// &lt;code&gt;true&lt;/code&gt; if preloading is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? preloadEnabled;
  /// Virtual directories for virtual application.
  final pulumi.Input<List<VirtualDirectoryResponse>>? virtualDirectories;
  /// Virtual path.
  final pulumi.Input<String>? virtualPath;

  /// Creates a new [VirtualApplicationResponse].
  /// [physicalPath] Physical path.
  /// [preloadEnabled] &lt;code&gt;true&lt;/code&gt; if preloading is enabled; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [virtualDirectories] Virtual directories for virtual application.
  /// [virtualPath] Virtual path.
  const VirtualApplicationResponse({
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
      physicalPath: (() { final guardedValue = map['physicalPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preloadEnabled: (() { final guardedValue = map['preloadEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      virtualDirectories: (() { final guardedValue = map['virtualDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualDirectoryResponse>(guardedValue, (value) => VirtualDirectoryResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualPath: (() { final guardedValue = map['virtualPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

