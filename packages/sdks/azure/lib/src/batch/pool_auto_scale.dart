// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolAutoScale {
  /// The interval to wait before evaluating if the pool needs to be scaled. Defaults to `PT15M`.
  final pulumi.Input<String>? evaluationInterval;

  /// The autoscale formula that needs to be used for scaling the Batch pool.
  final pulumi.Input<String> formula;

  /// Creates a new [PoolAutoScale].
  /// [evaluationInterval] The interval to wait before evaluating if the pool needs to be scaled. Defaults to `PT15M`.
  /// [formula] The autoscale formula that needs to be used for scaling the Batch pool.
  PoolAutoScale({this.evaluationInterval, required this.formula});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evaluationInterval': ?evaluationInterval,
      'formula': formula,
    };
  }

  factory PoolAutoScale.fromMap(Map<String, dynamic> map) {
    return PoolAutoScale(
      evaluationInterval: (() {
        final guardedValue = map['evaluationInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      formula: pulumi.Input.fromValue(map['formula'] as String),
    );
  }
}
