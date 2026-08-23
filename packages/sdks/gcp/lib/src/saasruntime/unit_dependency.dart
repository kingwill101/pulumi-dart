// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitDependency {
  /// (Output)
  /// Alias for the name of the dependency.
  final pulumi.Input<String>? alias;
  /// (Output)
  /// A reference to the Unit object.
  final pulumi.Input<String>? unit;

  /// Creates a new [UnitDependency].
  /// [alias] (Output)
  /// [unit] (Output)
  const UnitDependency({
    this.alias,
    this.unit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'unit': ?unit,
    };
  }

  factory UnitDependency.fromMap(Map<String, dynamic> map) {
    return UnitDependency(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
