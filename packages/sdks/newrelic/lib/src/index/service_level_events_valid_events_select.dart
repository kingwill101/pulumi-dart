// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceLevelEventsValidEventsSelect {
  /// The event attribute to use in the SELECT clause.
  final pulumi.Input<String>? attribute;
  /// The function to use in the SELECT clause. Valid values are `COUNT`, `SUM`, `GET_FIELD`, and `GET_CDF_COUNT`.
  final pulumi.Input<String> function;
  /// Limit for values to be counter by `GET_CDF_COUNT` function.
  final pulumi.Input<double>? threshold;

  /// Creates a new [ServiceLevelEventsValidEventsSelect].
  /// [attribute] The event attribute to use in the SELECT clause.
  /// [function] The function to use in the SELECT clause. Valid values are `COUNT`, `SUM`, `GET_FIELD`, and `GET_CDF_COUNT`.
  /// [threshold] Limit for values to be counter by `GET_CDF_COUNT` function.
  ServiceLevelEventsValidEventsSelect({
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

  factory ServiceLevelEventsValidEventsSelect.fromMap(Map<String, dynamic> map) {
    return ServiceLevelEventsValidEventsSelect(
      attribute: map['attribute'] == null ? null : (map['attribute'] as String).input(),
      function: (map['function'] as String).input(),
      threshold: map['threshold'] == null ? null : (map['threshold'] as double).input(),
    );
  }
}

