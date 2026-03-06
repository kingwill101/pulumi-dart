// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_levels_access_level_custom_expr.dart';

class AccessLevelsAccessLevelCustom {
  /// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  /// This page details the objects and attributes that are used to the build the CEL expressions for
  /// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelsAccessLevelCustomExpr> expr;

  /// Creates a new [AccessLevelsAccessLevelCustom].
  /// [expr] Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  const AccessLevelsAccessLevelCustom({
    required this.expr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expr': pulumi.Input.mapInputValue<AccessLevelsAccessLevelCustomExpr, Map<String, dynamic>>(expr, (value) => value.toMap()),
    };
  }

  factory AccessLevelsAccessLevelCustom.fromMap(Map<String, dynamic> map) {
    return AccessLevelsAccessLevelCustom(
      expr: pulumi.Input.fromValue(AccessLevelsAccessLevelCustomExpr.fromMap((map['expr']! as Map).cast<String, dynamic>())),
    );
  }
}

