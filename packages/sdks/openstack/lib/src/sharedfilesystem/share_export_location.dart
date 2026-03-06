// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareExportLocation {
  final pulumi.Input<String>? path;
  final pulumi.Input<String>? preferred;

  /// Creates a new [ShareExportLocation].
  /// [path] Optional.
  /// [preferred] Optional.
  const ShareExportLocation({
    this.path,
    this.preferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'preferred': ?preferred,
    };
  }

  factory ShareExportLocation.fromMap(Map<String, dynamic> map) {
    return ShareExportLocation(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferred: (() { final guardedValue = map['preferred']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

