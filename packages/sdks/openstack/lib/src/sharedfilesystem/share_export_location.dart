// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShareExportLocation {
  final pulumi.Input<String>? path;
  final pulumi.Input<String>? preferred;

  /// Creates a new [ShareExportLocation].
  /// [path] Optional.
  /// [preferred] Optional.
  ShareExportLocation({
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
      path: map['path'] == null ? null : (map['path']! as String).input(),
      preferred: map['preferred'] == null ? null : (map['preferred']! as String).input(),
    );
  }
}

