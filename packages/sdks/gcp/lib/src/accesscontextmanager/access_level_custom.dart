// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_level_custom_expr.dart';

class AccessLevelCustom {
  /// Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  /// This page details the objects and attributes that are used to the build the CEL expressions for
  /// custom access levels - https://cloud.google.com/access-context-manager/docs/custom-access-level-spec.
  /// Structure is documented below.
  final pulumi.Input<AccessLevelCustomExpr> expr;

  /// Creates a new [AccessLevelCustom].
  /// [expr] Represents a textual expression in the Common Expression Language (CEL) syntax. CEL is a C-like expression language.
  const AccessLevelCustom({
    required this.expr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expr': pulumi.Input.mapInputValue<AccessLevelCustomExpr, Map<String, dynamic>>(expr, (value) => value.toMap()),
    };
  }

  factory AccessLevelCustom.fromMap(Map<String, dynamic> map) {
    return AccessLevelCustom(
      expr: pulumi.Input.fromValue(AccessLevelCustomExpr.fromMap((map['expr']! as Map).cast<String, dynamic>())),
    );
  }
}

