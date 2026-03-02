// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Dockerfile {
  /// Raw Dockerfile contents.
  ///
  /// Conflicts with `location`.
  ///
  /// Equivalent to invoking Docker with `-f -`.
  final pulumi.Input<String>? inline;
  /// Location of the Dockerfile to use.
  ///
  /// Can be a relative or absolute path to a local file, or a remote URL.
  ///
  /// Defaults to `${context.location}/Dockerfile` if context is on-disk.
  ///
  /// Conflicts with `inline`.
  final pulumi.Input<String>? location;

  /// Creates a new [Dockerfile].
  /// [inline] Raw Dockerfile contents.
  /// [location] Location of the Dockerfile to use.
  Dockerfile({
    this.inline,
    this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inline': ?inline,
      'location': ?location,
    };
  }

  factory Dockerfile.fromMap(Map<String, dynamic> map) {
    return Dockerfile(
      inline: map['inline'] == null ? null : (map['inline']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
    );
  }
}

