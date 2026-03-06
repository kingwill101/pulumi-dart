// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesFilesystemSourceFile {
  /// Specifies the file path for the filesystem source.
  final pulumi.Input<String> file;

  /// Creates a new [DomainDevicesFilesystemSourceFile].
  /// [file] Specifies the file path for the filesystem source.
  const DomainDevicesFilesystemSourceFile({
    required this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': file,
    };
  }

  factory DomainDevicesFilesystemSourceFile.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemSourceFile(
      file: pulumi.Input.fromValue(map['file'] as String),
    );
  }
}

