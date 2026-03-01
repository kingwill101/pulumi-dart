// ignore_for_file: unused_element, unnecessary_cast


/// Directory for virtual application.
class VirtualDirectory {
  /// Physical path.
  final String? physicalPath;
  /// Path to virtual application.
  final String? virtualPath;

  /// Creates a new [VirtualDirectory].
  /// [physicalPath] Physical path.
  /// [virtualPath] Path to virtual application.
  VirtualDirectory({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualDirectory.fromMap(Map<String, dynamic> map) {
    return VirtualDirectory(
      physicalPath: map['physicalPath'] == null ? null : map['physicalPath'] as String,
      virtualPath: map['virtualPath'] == null ? null : map['virtualPath'] as String,
    );
  }
}

