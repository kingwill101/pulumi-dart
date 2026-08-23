// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AssetsExportJobSignedUriDestination {
  /// The file format to export.
  /// Possible values:
  /// CSV
  /// XLSX
  final pulumi.Input<String> fileFormat;

  /// Creates a new [AssetsExportJobSignedUriDestination].
  /// [fileFormat] The file format to export.
  const AssetsExportJobSignedUriDestination({
    required this.fileFormat,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileFormat': fileFormat,
    };
  }

  factory AssetsExportJobSignedUriDestination.fromMap(Map<String, dynamic> map) {
    return AssetsExportJobSignedUriDestination(
      fileFormat: pulumi.Input.fromValue(map['fileFormat'] as String),
    );
  }
}
