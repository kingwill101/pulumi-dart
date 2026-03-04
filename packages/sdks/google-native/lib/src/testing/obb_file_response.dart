// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';

/// An opaque binary blob file to install on the device before the test starts.
class ObbFileResponse {
  /// Opaque Binary Blob (OBB) file(s) to install on the device.
  final pulumi.Input<FileReferenceResponse> obb;

  /// OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \/Android/obb/\/ on the device.
  final pulumi.Input<String> obbFileName;

  /// Creates a new [ObbFileResponse].
  /// [obb] Opaque Binary Blob (OBB) file(s) to install on the device.
  /// [obbFileName] OBB file name which must conform to the format as specified by Android e.g. [main|patch].0300110.com.example.android.obb which will be installed into \/Android/obb/\/ on the device.
  ObbFileResponse({required this.obb, required this.obbFileName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'obb':
          pulumi.Input.mapInputValue<
            FileReferenceResponse,
            Map<String, dynamic>
          >(obb, (value) => value.toMap()),
      'obbFileName': obbFileName,
    };
  }

  factory ObbFileResponse.fromMap(Map<String, dynamic> map) {
    return ObbFileResponse(
      obb: pulumi.Input.fromValue(
        FileReferenceResponse.fromMap(
          (map['obb']! as Map).cast<String, dynamic>(),
        ),
      ),
      obbFileName: pulumi.Input.fromValue(map['obbFileName'] as String),
    );
  }
}
