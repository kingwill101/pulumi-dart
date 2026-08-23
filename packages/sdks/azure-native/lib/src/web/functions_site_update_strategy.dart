// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Function app site update strategy configuration for deployments and site config updates.
class FunctionsSiteUpdateStrategy {
  /// Function app site update strategy type. Available options: Recreate, RollingUpdate
  final pulumi.Input<String>? type;

  /// Creates a new [FunctionsSiteUpdateStrategy].
  /// [type] Function app site update strategy type. Available options: Recreate, RollingUpdate
  const FunctionsSiteUpdateStrategy({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FunctionsSiteUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return FunctionsSiteUpdateStrategy(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
