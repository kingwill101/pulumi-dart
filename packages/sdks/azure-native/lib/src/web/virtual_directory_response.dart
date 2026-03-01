// ignore_for_file: unused_element, unnecessary_cast


/// Directory for virtual application.
class VirtualDirectoryResponse {
  /// Physical path.
  final String? physicalPath;
  /// Path to virtual application.
  final String? virtualPath;

  /// Creates a new [VirtualDirectoryResponse].
  /// [physicalPath] Physical path.
  /// [virtualPath] Path to virtual application.
  VirtualDirectoryResponse({
    this.physicalPath,
    this.virtualPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'physicalPath': ?physicalPath,
      'virtualPath': ?virtualPath,
    };
  }

  factory VirtualDirectoryResponse.fromMap(Map<String, dynamic> map) {
    return VirtualDirectoryResponse(
      physicalPath: map['physicalPath'] == null ? null : map['physicalPath'] as String,
      virtualPath: map['virtualPath'] == null ? null : map['virtualPath'] as String,
    );
  }
}

