// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UnitKindDependency {
  /// An alias for the dependency. Used for input variable mapping.
  final pulumi.Input<String> alias;
  /// The unit kind of the dependency.
  final pulumi.Input<String> unitKind;

  /// Creates a new [UnitKindDependency].
  /// [alias] An alias for the dependency. Used for input variable mapping.
  /// [unitKind] The unit kind of the dependency.
  const UnitKindDependency({
    required this.alias,
    required this.unitKind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': alias,
      'unitKind': unitKind,
    };
  }

  factory UnitKindDependency.fromMap(Map<String, dynamic> map) {
    return UnitKindDependency(
      alias: pulumi.Input.fromValue(map['alias'] as String),
      unitKind: pulumi.Input.fromValue(map['unitKind'] as String),
    );
  }
}

