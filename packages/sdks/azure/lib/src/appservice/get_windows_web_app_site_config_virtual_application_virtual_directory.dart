// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory {
  /// The path on disk to the Virtual Directory
  final pulumi.Input<String> physicalPath;
  /// The Virtual Path of the Virtual Directory.
  final pulumi.Input<String> virtualPath;

  /// Creates a new [GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory].
  /// [physicalPath] The path on disk to the Virtual Directory
  /// [virtualPath] The Virtual Path of the Virtual Directory.
  const GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory({
    required this.physicalPath,
    required this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': physicalPath,
      'virtualPath': virtualPath,
    };
  }

  factory GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory.fromMap(Map<String, dynamic> map) {
    return GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory(
      physicalPath: pulumi.Input.fromValue(map['physicalPath'] as String),
      virtualPath: pulumi.Input.fromValue(map['virtualPath'] as String),
    );
  }
}

