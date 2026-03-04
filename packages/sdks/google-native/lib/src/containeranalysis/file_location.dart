// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Indicates the location at which a package was found.
class FileLocation {
  /// For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  final pulumi.Input<String>? filePath;

  /// Creates a new [FileLocation].
  /// [filePath] For jars that are contained inside .war files, this filepath can indicate the path to war file combined with the path to jar file.
  FileLocation({this.filePath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filePath': ?filePath};
  }

  factory FileLocation.fromMap(Map<String, dynamic> map) {
    return FileLocation(
      filePath: (() {
        final guardedValue = map['filePath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
