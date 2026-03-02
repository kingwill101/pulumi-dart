// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLevelEventsGoodEventsSelect {
  /// The event attribute to use in the SELECT clause.
  final pulumi.Input<String>? attribute;
  /// The function to use in the SELECT clause. Valid values are `COUNT`, `SUM`, `GET_FIELD`, and `GET_CDF_COUNT`.
  final pulumi.Input<String> function;
  /// Limit for values to be counter by `GET_CDF_COUNT` function.
  final pulumi.Input<double>? threshold;

  /// Creates a new [ServiceLevelEventsGoodEventsSelect].
  /// [attribute] The event attribute to use in the SELECT clause.
  /// [function] The function to use in the SELECT clause. Valid values are `COUNT`, `SUM`, `GET_FIELD`, and `GET_CDF_COUNT`.
  /// [threshold] Limit for values to be counter by `GET_CDF_COUNT` function.
  ServiceLevelEventsGoodEventsSelect({
    this.attribute,
    required this.function,
    this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attribute': ?attribute,
      'function': function,
      'threshold': ?threshold,
    };
  }

  factory ServiceLevelEventsGoodEventsSelect.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEventsGoodEventsSelect(
      attribute: map['attribute'] == null ? null : (map['attribute'] as String).input(),
      function: (map['function'] as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold'] as double).input(),
    );
  }
}

