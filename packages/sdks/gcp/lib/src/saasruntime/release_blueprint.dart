// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReleaseBlueprint {
  final pulumi.Input<String>? engine;
  /// URI to a blueprint used by the Unit (required unless unitKind or release is
  /// set).
  final pulumi.Input<String>? package;
  /// (Output)
  /// Version metadata if present on the blueprint.
  final pulumi.Input<String>? version;

  /// Creates a new [ReleaseBlueprint].
  /// [engine] Optional.
  /// [package] URI to a blueprint used by the Unit (required unless unitKind or release is
  /// [version] (Output)
  ReleaseBlueprint({
    this.engine,
    this.package,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': ?engine,
      'package': ?package,
      'version': ?version,
    };
  }

  factory ReleaseBlueprint.fromMap(Map<String, dynamic> map) {
    return ReleaseBlueprint(
      engine: map['engine'] == null ? null : (map['engine']! as String).input(),
      package: map['package'] == null ? null : (map['package']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

