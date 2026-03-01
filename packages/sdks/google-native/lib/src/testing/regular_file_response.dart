// ignore_for_file: unused_element, unnecessary_cast

import 'file_reference_response.dart';

/// A file or directory to install on the device before the test starts.
class RegularFileResponse {
  /// The source file.
  final FileReferenceResponse content;
  /// Where to put the content on the device. Must be an absolute, allowlisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are allowlisted: ${EXTERNAL_STORAGE}, /sdcard, or /storage ${ANDROID_DATA}/local/tmp, or /data/local/tmp Specifying a path outside of these directory trees is invalid. The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there. It is strongly advised to use the Environment API in app and test code to access files on the device in a portable way.
  final String devicePath;

  /// Creates a new [RegularFileResponse].
  /// [content] The source file.
  /// [devicePath] Where to put the content on the device. Must be an absolute, allowlisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are allowlisted: ${EXTERNAL_STORAGE}, /sdcard, or /storage ${ANDROID_DATA}/local/tmp, or /data/local/tmp Specifying a path outside of these directory trees is invalid. The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there. It is strongly advised to use the Environment API in app and test code to access files on the device in a portable way.
  RegularFileResponse({
    required this.content,
    required this.devicePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': content.toMap(),
      'devicePath': devicePath,
    };
  }

  factory RegularFileResponse.fromMap(Map<String, dynamic> map) {
    return RegularFileResponse(
      content: FileReferenceResponse.fromMap((map['content'] as Map).cast<String, dynamic>()),
      devicePath: map['devicePath'] as String,
    );
  }
}

