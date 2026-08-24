// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionBindingSimple {
  /// The limit (requests per period).
  final pulumi.Input<double> limit;
  /// Duration in seconds to apply the mitigation action after the rate limit is exceeded. Valid values are 0 (disabled), 10, or multiples of 60 up to 86400. Must be greater than or equal to the period when non-zero.
  final pulumi.Input<int> mitigationTimeout;
  /// The period in seconds.
  final pulumi.Input<int> period;

  /// Creates a new [GetWorkerVersionBindingSimple].
  /// [limit] The limit (requests per period).
  /// [mitigationTimeout] Duration in seconds to apply the mitigation action after the rate limit is exceeded. Valid values are 0 (disabled), 10, or multiples of 60 up to 86400. Must be greater than or equal to the period when non-zero.
  /// [period] The period in seconds.
  const GetWorkerVersionBindingSimple({
    required this.limit,
    required this.mitigationTimeout,
    required this.period,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limit': limit,
      'mitigationTimeout': mitigationTimeout,
      'period': period,
    };
  }

  factory GetWorkerVersionBindingSimple.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionBindingSimple(
      limit: pulumi.Input.fromValue((map['limit'] as num).toDouble()),
      mitigationTimeout: pulumi.Input.fromValue((map['mitigationTimeout'] as num).toInt()),
      period: pulumi.Input.fromValue((map['period'] as num).toInt()),
    );
  }
}
