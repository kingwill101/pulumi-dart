// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Library/package information of a Big Data pool powered by Apache Spark
class LibraryInfo {
  /// Storage blob container name.
  final pulumi.Input<String>? containerName;
  /// Name of the library.
  final pulumi.Input<String>? name;
  /// Storage blob path of library.
  final pulumi.Input<String>? path;
  /// Type of the library.
  final pulumi.Input<String>? type;

  /// Creates a new [LibraryInfo].
  /// [containerName] Storage blob container name.
  /// [name] Name of the library.
  /// [path] Storage blob path of library.
  /// [type] Type of the library.
  LibraryInfo({
    this.containerName,
    this.name,
    this.path,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerName': ?containerName,
      'name': ?name,
      'path': ?path,
      'type': ?type,
    };
  }

  factory LibraryInfo.fromMap(Map<String, dynamic> map) {
    return LibraryInfo(
      containerName: map['containerName'] == null ? null : (map['containerName'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      path: map['path'] == null ? null : (map['path'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

