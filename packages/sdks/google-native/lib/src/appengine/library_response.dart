// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Third-party Python runtime library that is required by the application.
class LibraryResponse {
  /// Name of the library. Example: "django".
  final pulumi.Input<String> name;
  /// Version of the library to select, or "latest".
  final pulumi.Input<String> version;

  /// Creates a new [LibraryResponse].
  /// [name] Name of the library. Example: "django".
  /// [version] Version of the library to select, or "latest".
  const LibraryResponse({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory LibraryResponse.fromMap(Map<String, dynamic> map) {
    return LibraryResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

