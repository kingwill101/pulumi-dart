// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'file_reference.dart';

/// A file or directory to install on the device before the test starts.
class IosDeviceFile {
  /// The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  final pulumi.Input<String>? bundleId;
  /// The source file
  final pulumi.Input<FileReference>? content;
  /// Location of the file on the device, inside the app's sandboxed filesystem
  final pulumi.Input<String>? devicePath;

  /// Creates a new [IosDeviceFile].
  /// [bundleId] The bundle id of the app where this file lives. iOS apps sandbox their own filesystem, so app files must specify which app installed on the device.
  /// [content] The source file
  /// [devicePath] Location of the file on the device, inside the app's sandboxed filesystem
  IosDeviceFile({
    this.bundleId,
    this.content,
    this.devicePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bundleId': ?bundleId,
      'content': ?pulumi.Input.mapOptionalInputValue<FileReference, Map<String, dynamic>>(content, (value) => value.toMap()),
      'devicePath': ?devicePath,
    };
  }

  factory IosDeviceFile.fromMap(Map<String, dynamic> map) {
    return IosDeviceFile(
      bundleId: (() { final guardedValue = map['bundleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      devicePath: (() { final guardedValue = map['devicePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

