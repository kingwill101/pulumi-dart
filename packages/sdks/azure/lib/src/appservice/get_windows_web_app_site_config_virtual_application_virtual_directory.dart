// ignore_for_file: unused_element, unnecessary_cast


class GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory {
  /// The path on disk to the Virtual Directory
  final String physicalPath;
  /// The Virtual Path of the Virtual Directory.
  final String virtualPath;

  /// Creates a new [GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory].
  /// [physicalPath] The path on disk to the Virtual Directory
  /// [virtualPath] The Virtual Path of the Virtual Directory.
  GetWindowsWebAppSiteConfigVirtualApplicationVirtualDirectory({
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
      physicalPath: map['physicalPath'] as String,
      virtualPath: map['virtualPath'] as String,
    );
  }
}

