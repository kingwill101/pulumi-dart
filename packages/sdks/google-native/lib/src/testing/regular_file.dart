// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';

/// A file or directory to install on the device before the test starts.
class RegularFile {
  /// The source file.
  final pulumi.Input<FileReference> content;
  /// Where to put the content on the device. Must be an absolute, allowlisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are allowlisted: ${EXTERNAL_STORAGE}, /sdcard, or /storage ${ANDROID_DATA}/local/tmp, or /data/local/tmp Specifying a path outside of these directory trees is invalid. The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there. It is strongly advised to use the Environment API in app and test code to access files on the device in a portable way.
  final pulumi.Input<String> devicePath;

  /// Creates a new [RegularFile].
  /// [content] The source file.
  /// [devicePath] Where to put the content on the device. Must be an absolute, allowlisted path. If the file exists, it will be replaced. The following device-side directories and any of their subdirectories are allowlisted: ${EXTERNAL_STORAGE}, /sdcard, or /storage ${ANDROID_DATA}/local/tmp, or /data/local/tmp Specifying a path outside of these directory trees is invalid. The paths /sdcard and /data will be made available and treated as implicit path substitutions. E.g. if /sdcard on a particular device does not map to external storage, the system will replace it with the external storage path prefix for that device and copy the file there. It is strongly advised to use the Environment API in app and test code to access files on the device in a portable way.
  const RegularFile({
    required this.content,
    required this.devicePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': pulumi.Input.mapInputValue<FileReference, Map<String, dynamic>>(content, (value) => value.toMap()),
      'devicePath': devicePath,
    };
  }

  factory RegularFile.fromMap(Map<String, dynamic> map) {
    return RegularFile(
      content: pulumi.Input.fromValue(FileReference.fromMap((map['content']! as Map).cast<String, dynamic>())),
      devicePath: pulumi.Input.fromValue(map['devicePath'] as String),
    );
  }
}

