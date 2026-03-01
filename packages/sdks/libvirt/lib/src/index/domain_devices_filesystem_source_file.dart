// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemSourceFile {
  /// Specifies the file path for the filesystem source.
  final String file;

  /// Creates a new [DomainDevicesFilesystemSourceFile].
  /// [file] Specifies the file path for the filesystem source.
  DomainDevicesFilesystemSourceFile({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesFilesystemSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceFile(
      file: map['file'] as String,
    );
  }
}

