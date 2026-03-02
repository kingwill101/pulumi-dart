// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_site_config_virtual_application_virtual_directory.dart';

class WindowsWebAppSiteConfigVirtualApplication {
  /// The physical path for the Virtual Application.
  final pulumi.Input<String> physicalPath;
  /// Should pre-loading be enabled.
  final pulumi.Input<bool> preload;
  /// One or more `virtual_directory` blocks as defined below.
  final pulumi.Input<List<WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory>>? virtualDirectories;
  /// The Virtual Path for the Virtual Application.
  final pulumi.Input<String> virtualPath;

  /// Creates a new [WindowsWebAppSiteConfigVirtualApplication].
  /// [physicalPath] The physical path for the Virtual Application.
  /// [preload] Should pre-loading be enabled.
  /// [virtualDirectories] One or more `virtual_directory` blocks as defined below.
  /// [virtualPath] The Virtual Path for the Virtual Application.
  WindowsWebAppSiteConfigVirtualApplication({
    required this.physicalPath,
    required this.preload,
    this.virtualDirectories,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': physicalPath,
      'preload': preload,
      'virtualDirectories': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory>, List<Map<String, dynamic>>>(virtualDirectories, (value) => pulumi.Input.encodeList<WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualPath': virtualPath,
    };
  }

  factory WindowsWebAppSiteConfigVirtualApplication.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSiteConfigVirtualApplication(
      physicalPath: (map['physicalPath'] as String).input(),
      preload: (map['preload'] as bool).input(),
      virtualDirectories: map['virtualDirectories'] == null ? null : (pulumi.Input.decodeList<WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory>(map['virtualDirectories']!, (value) => WindowsWebAppSiteConfigVirtualApplicationVirtualDirectory.fromMap((value as Map).cast<String, dynamic>()))).input(),
      virtualPath: (map['virtualPath'] as String).input(),
    );
  }
}

