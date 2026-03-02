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
  DeviceFile({
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
      obbFile: map['obbFile'] == null ? null : (ObbFile.fromMap((map['obbFile'] as Map).cast<String, dynamic>())).input(),
      regularFile: map['regularFile'] == null ? null : (RegularFile.fromMap((map['regularFile'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

