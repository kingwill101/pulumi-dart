// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference_response.dart';

/// A file or directory to install on the device before the test starts.
class IosDeviceFileResponse {
  /// The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  final pulumi.Input<String> bundleId;

  /// The source file
  final pulumi.Input<FileReferenceResponse> content;

  /// Location of the file on the device, inside the app's sandboxed filesystem
  final pulumi.Input<String> devicePath;

  /// Creates a new [IosDeviceFileResponse].
  /// [bundleId] The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  /// [content] The source file
  /// [devicePath] Location of the file on the device, inside the app's sandboxed filesystem
  IosDeviceFileResponse({
    required this.bundleId,
    required this.content,
    required this.devicePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': bundleId,
      'content':
          pulumi.Input.mapInputValue<
            FileReferenceResponse,
            Map<String, dynamic>
          >(content, (value) => value.toMap()),
      'devicePath': devicePath,
    };
  }

  factory IosDeviceFileResponse.fromMap(Map<String, dynamic> map) {
    return IosDeviceFileResponse(
      bundleId: pulumi.Input.fromValue(map['bundleId'] as String),
      content: pulumi.Input.fromValue(
        FileReferenceResponse.fromMap(
          (map['content']! as Map).cast<String, dynamic>(),
        ),
      ),
      devicePath: pulumi.Input.fromValue(map['devicePath'] as String),
    );
  }
}
