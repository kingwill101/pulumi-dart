// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Third-party Python runtime library that is required by the application.
class LibraryAppengineV1beta {
  /// Name of the library. Example: "django".
  final pulumi.Input<String>? name;
  /// Version of the library to select, or "latest".
  final pulumi.Input<String>? version;

  /// Creates a new [LibraryAppengineV1beta].
  /// [name] Name of the library. Example: "django".
  /// [version] Version of the library to select, or "latest".
  LibraryAppengineV1beta({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory LibraryAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LibraryAppengineV1beta(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

