// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';

/// An opaque binary blob file to install on the device before the test starts.
class ObbFile {
  /// Opaque Binary Blob (OBB) file(s) to install on the device.
  final pulumi.Input<FileReference> obb;
  /// OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \/Android/obb/\/ on the device.
  final pulumi.Input<String> obbFileName;

  /// Creates a new [ObbFile].
  /// [obb] Opaque Binary Blob (OBB) file(s) to install on the device.
  /// [obbFileName] OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \/Android/obb/\/ on the device.
  const ObbFile({
    required this.obb,
    required this.obbFileName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'obb': pulumi.Input.mapInputValue<FileReference, Map<String, dynamic>>(obb, (value) => value.toMap()),
      'obbFileName': obbFileName,
    };
  }

  factory ObbFile.fromMap(Map<String, dynamic> map) {
    return ObbFile(
      obb: pulumi.Input.fromValue(FileReference.fromMap((map['obb']! as Map).cast<String, dynamic>())),
      obbFileName: pulumi.Input.fromValue(map['obbFileName'] as String),
    );
  }
}
