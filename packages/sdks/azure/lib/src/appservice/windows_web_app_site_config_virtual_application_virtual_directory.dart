// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory {
  /// The physical path for the Virtual Application.
  final pulumi.Input<String>? physicalPath;
  /// The Virtual Path for the Virtual Application.
  final pulumi.Input<String>? virtualPath;

  /// Creates a new [WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory].
  /// [physicalPath] The physical path for the Virtual Application.
  /// [virtualPath] The Virtual Path for the Virtual Application.
  const WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory(
      physicalPath: (() { final guardedValue = map['physicalPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      virtualPath: (() { final guardedValue = map['virtualPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

