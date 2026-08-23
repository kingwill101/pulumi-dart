// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Function app site update strategy configuration for deployments and site config updates.
class FunctionsSiteUpdateStrategyResponse {
  /// Function app site update strategy type. Available options: Recreate, RollingUpdate
  final pulumi.Input<String>? type;

  /// Creates a new [FunctionsSiteUpdateStrategyResponse].
  /// [type] Function app site update strategy type. Available options: Recreate, RollingUpdate
  const FunctionsSiteUpdateStrategyResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory FunctionsSiteUpdateStrategyResponse.fromMap(Map<String, dynamic> map) {
    return FunctionsSiteUpdateStrategyResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
