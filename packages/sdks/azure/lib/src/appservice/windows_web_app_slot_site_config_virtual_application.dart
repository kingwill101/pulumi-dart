// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_web_app_slot_site_config_virtual_application_virtual_directory.dart';

class WindowsWebAppSlotSiteConfigVirtualApplication {
  /// The physical path for the Virtual Application.
  final pulumi.Input<String> physicalPath;
  /// Should pre-loading be enabled.
  final pulumi.Input<bool> preload;
  /// One or more `virtual_directory` blocks as defined below.
  final pulumi.Input<List<WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory>>? virtualDirectories;
  /// The Virtual Path for the Virtual Application.
  final pulumi.Input<String> virtualPath;

  /// Creates a new [WindowsWebAppSlotSiteConfigVirtualApplication].
  /// [physicalPath] The physical path for the Virtual Application.
  /// [preload] Should pre-loading be enabled.
  /// [virtualDirectories] One or more `virtual_directory` blocks as defined below.
  /// [virtualPath] The Virtual Path for the Virtual Application.
  WindowsWebAppSlotSiteConfigVirtualApplication({
    required this.physicalPath,
    required this.preload,
    this.virtualDirectories,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': physicalPath,
      'preload': preload,
      'virtualDirectories': ?pulumi.Input.mapOptionalInputValue<List<WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory>, List<Map<String, dynamic>>>(virtualDirectories, (value) => pulumi.Input.encodeList<WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualPath': virtualPath,
    };
  }

  factory WindowsWebAppSlotSiteConfigVirtualApplication.fromMap(Map<String, dynamic> map) {
    return WindowsWebAppSlotSiteConfigVirtualApplication(
      physicalPath: pulumi.Input.fromValue(map['physicalPath'] as String),
      preload: pulumi.Input.fromValue(map['preload'] as bool),
      virtualDirectories: (() { final guardedValue = map['virtualDirectories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory>(guardedValue, (value) => WindowsWebAppSlotSiteConfigVirtualApplicationVirtualDirectory.fromMap((value as Map).cast<String, dynamic>()))); })(),
      virtualPath: pulumi.Input.fromValue(map['virtualPath'] as String),
    );
  }
}

