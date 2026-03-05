// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BuilderConfig {
  /// Name of an existing buildx builder to use.
  ///
  /// Only `docker-container`, `kubernetes`, or `remote` drivers are
  /// supported. The legacy `docker` driver is not supported.
  ///
  /// Equivalent to Docker's `--builder` flag.
  final pulumi.Input<String>? name;

  /// Creates a new [BuilderConfig].
  /// [name] Name of an existing buildx builder to use.
  BuilderConfig({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory BuilderConfig.fromMap(Map<String, dynamic> map) {
    return BuilderConfig(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

