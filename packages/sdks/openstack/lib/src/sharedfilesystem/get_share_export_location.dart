// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetShareExportLocation {
  final pulumi.Input<String> path;
  final pulumi.Input<String> preferred;

  /// Creates a new [GetShareExportLocation].
  /// [path] Required.
  /// [preferred] Required.
  GetShareExportLocation({
    required this.path,
    required this.preferred,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': path,
      'preferred': preferred,
    };
  }

  factory GetShareExportLocation.fromMap(Map<String, dynamic> map) {
    return GetShareExportLocation(
      path: (map['path'] as String).input(),
      preferred: (map['preferred'] as String).input(),
    );
  }
}

