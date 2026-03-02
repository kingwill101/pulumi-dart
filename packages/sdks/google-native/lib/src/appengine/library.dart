// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Third-party Python runtime library that is required by the application.
class Library {
  /// Name of the library. Example: "django".
  final pulumi.Input<String>? name;
  /// Version of the library to select, or "latest".
  final pulumi.Input<String>? version;

  /// Creates a new [Library].
  /// [name] Name of the library. Example: "django".
  /// [version] Version of the library to select, or "latest".
  Library({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory Library.fromMap(Map<String, dynamic> map) {
    return Library(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

