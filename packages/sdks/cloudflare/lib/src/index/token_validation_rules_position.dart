// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TokenValidationRulesPosition {
  /// Move rule to after rule with this ID.
  final pulumi.Input<String?>? after;
  /// Move rule to before rule with this ID.
  final pulumi.Input<String?>? before;
  /// Move rule to this position
  final pulumi.Input<int?>? index;

  /// Creates a new [TokenValidationRulesPosition].
  /// [after] Move rule to after rule with this ID.
  /// [before] Move rule to before rule with this ID.
  /// [index] Move rule to this position
  const TokenValidationRulesPosition({
    this.after,
    this.before,
    this.index,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'after': ?after,
      'before': ?before,
      'index': ?index,
    };
  }

  factory TokenValidationRulesPosition.fromMap(Map<String, dynamic> map) {
    return TokenValidationRulesPosition(
      after: (() { final guardedValue = map['after']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      before: (() { final guardedValue = map['before']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
