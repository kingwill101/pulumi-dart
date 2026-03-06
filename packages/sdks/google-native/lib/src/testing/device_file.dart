// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'obb_file.dart';
import 'regular_file.dart';

/// A single device file description.
class DeviceFile {
  /// A reference to an opaque binary blob file.
  final pulumi.Input<ObbFile>? obbFile;
  /// A reference to a regular file.
  final pulumi.Input<RegularFile>? regularFile;

  /// Creates a new [DeviceFile].
  /// [obbFile] A reference to an opaque binary blob file.
  /// [regularFile] A reference to a regular file.
  const DeviceFile({
    this.obbFile,
    this.regularFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'obbFile': ?pulumi.Input.mapOptionalInputValue<ObbFile, Map<String, dynamic>>(obbFile, (value) => value.toMap()),
      'regularFile': ?pulumi.Input.mapOptionalInputValue<RegularFile, Map<String, dynamic>>(regularFile, (value) => value.toMap()),
    };
  }

  factory DeviceFile.fromMap(Map<String, dynamic> map) {
    return DeviceFile(
      obbFile: (() { final guardedValue = map['obbFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ObbFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regularFile: (() { final guardedValue = map['regularFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegularFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

