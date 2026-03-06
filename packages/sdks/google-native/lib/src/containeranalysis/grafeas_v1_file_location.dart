// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the location at which a package was found.
class GrafeasV1FileLocation {
  /// For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  final pulumi.Input<String>? filePath;

  /// Creates a new [GrafeasV1FileLocation].
  /// [filePath] For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  const GrafeasV1FileLocation({
    this.filePath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filePath': ?filePath,
    };
  }

  factory GrafeasV1FileLocation.fromMap(Map<String, dynamic> map) {
    return GrafeasV1FileLocation(
      filePath: (() { final guardedValue = map['filePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

