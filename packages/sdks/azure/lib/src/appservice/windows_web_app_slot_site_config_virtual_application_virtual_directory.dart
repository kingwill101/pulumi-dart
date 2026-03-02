// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory {
  /// The physical path for the Virtual Application.
  final pulumi.Input<String>? physicalPath;
  /// The Virtual Path for the Virtual Application.
  final pulumi.Input<String>? virtualPath;

  /// Creates a new [WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory].
  /// [physicalPath] The physical path for the Virtual Application.
  /// [virtualPath] The Virtual Path for the Virtual Application.
  WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory(
      physicalPath: map['physicalPath'] == null ? null : (map['physicalPath'] as String).input(),
      virtualPath: map['virtualPath'] == null ? null : (map['virtualPath'] as String).input(),
    );
  }
}

