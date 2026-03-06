// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Third-party Python runtime library that is required by the application.
class LibraryResponseAppengineV1beta {
  /// Name of the library. Example: "django".
  final pulumi.Input<String> name;
  /// Version of the library to select, or "latest".
  final pulumi.Input<String> version;

  /// Creates a new [LibraryResponseAppengineV1beta].
  /// [name] Name of the library. Example: "django".
  /// [version] Version of the library to select, or "latest".
  const LibraryResponseAppengineV1beta({
    required this.name,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': version,
    };
  }

  factory LibraryResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return LibraryResponseAppengineV1beta(
      name: pulumi.Input.fromValue(map['name'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

