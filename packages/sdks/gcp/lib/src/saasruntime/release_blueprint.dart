// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReleaseBlueprint {
  /// (Output)
  /// Type of the engine used to actuate the blueprint. e.g. terraform, helm etc.
  final pulumi.Input<String>? engine;
  /// URI to a blueprint used by the Unit (required unless unitKind or release is
  /// set).
  final pulumi.Input<String>? package;
  /// (Output)
  /// Version metadata if present on the blueprint.
  final pulumi.Input<String>? version;

  /// Creates a new [ReleaseBlueprint].
  /// [engine] (Output)
  /// [package] URI to a blueprint used by the Unit (required unless unitKind or release is
  /// [version] (Output)
  const ReleaseBlueprint({
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
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      package: (() { final guardedValue = map['package']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
