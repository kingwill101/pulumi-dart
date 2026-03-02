// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata for a File connector used by the job.
class FileIODetails {
  /// File Pattern used to access files by the connector.
  final pulumi.Input<String>? filePattern;

  /// Creates a new [FileIODetails].
  /// [filePattern] File Pattern used to access files by the connector.
  FileIODetails({
    this.filePattern,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePattern': ?filePattern,
    };
  }

  factory FileIODetails.fromMap(Map<String, dynamic> map) {
    return FileIODetails(
      filePattern: map['filePattern'] == null ? null : (map['filePattern']! as String).input(),
    );
  }
}

