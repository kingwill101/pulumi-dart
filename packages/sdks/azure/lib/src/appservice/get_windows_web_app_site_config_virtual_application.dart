// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_web_app_site_config_virtual_application_virtual_directory.dart';

class GetWindowsWebAppSiteConfigVirtualApplication {
  /// The path on disk to the Virtual Directory
  final String physicalPath;
  /// Is this Application Pre-loaded at startup.
  final bool preload;
  /// A `virtual_directory` block as defined below.
  final List<GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory> virtualDirectories;
  /// The Virtual Path of the Virtual Directory.
  final String virtualPath;

  /// Creates a new [GetWindowsWebAppSiteConfigVirtualApplication].
  /// [physicalPath] The path on disk to the Virtual Directory
  /// [preload] Is this Application Pre-loaded at startup.
  /// [virtualDirectories] A `virtual_directory` block as defined below.
  /// [virtualPath] The Virtual Path of the Virtual Directory.
  GetWindowsWebAppSiteConfigVirtualApplication({
    required this.physicalPath,
    required this.preload,
    required this.virtualDirectories,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': physicalPath,
      'preload': preload,
      'virtualDirectories': pulumi.Input.encodeList<GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory, Map<String, dynamic>>(virtualDirectories, (value) => value.toMap()),
      'virtualPath': virtualPath,
    };
  }

  factory GetWindowsWebAppSiteConfigVirtualApplication.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigVirtualApplication(
      physicalPath: map['physicalPath'] as String,
      preload: map['preload'] as bool,
      virtualDirectories: pulumi.Input.decodeList<GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory>(map['virtualDirectories'], (value) => GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory.fromMap((value as Map).cast<String, dynamic>())),
      virtualPath: map['virtualPath'] as String,
    );
  }
}

