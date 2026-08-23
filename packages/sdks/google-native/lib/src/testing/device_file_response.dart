// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'obb_file_response.dart';
import 'regular_file_response.dart';

/// A single device file description.
class DeviceFileResponse {
  /// A reference to an opaque binary blob file.
  final pulumi.Input<ObbFileResponse> obbFile;
  /// A reference to a regular file.
  final pulumi.Input<RegularFileResponse> regularFile;

  /// Creates a new [DeviceFileResponse].
  /// [obbFile] A reference to an opaque binary blob file.
  /// [regularFile] A reference to a regular file.
  const DeviceFileResponse({
    required this.obbFile,
    required this.regularFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'obbFile': pulumi.Input.mapInputValue<ObbFileResponse, Map<String, dynamic>>(obbFile, (value) => value.toMap()),
      'regularFile': pulumi.Input.mapInputValue<RegularFileResponse, Map<String, dynamic>>(regularFile, (value) => value.toMap()),
    };
  }

  factory DeviceFileResponse.fromMap(Map<String, dynamic> map) {
    return DeviceFileResponse(
      obbFile: pulumi.Input.fromValue(ObbFileResponse.fromMap((map['obbFile']! as Map).cast<String, dynamic>())),
      regularFile: pulumi.Input.fromValue(RegularFileResponse.fromMap((map['regularFile']! as Map).cast<String, dynamic>())),
    );
  }
}
