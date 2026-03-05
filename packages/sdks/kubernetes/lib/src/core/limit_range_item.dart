// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
class LimitRangeItem {
  /// Default resource requirement limit value by resource name if resource limit is omitted.
  final pulumi.Input<Map<String, String>>? default_;
  /// DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  final pulumi.Input<Map<String, String>>? defaultRequest;
  /// Max usage constraints on this kind by resource name.
  final pulumi.Input<Map<String, String>>? max;
  /// MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  final pulumi.Input<Map<String, String>>? maxLimitRequestRatio;
  /// Min usage constraints on this kind by resource name.
  final pulumi.Input<Map<String, String>>? min;
  /// Type of resource that this limit applies to.
  final pulumi.Input<String> type;

  /// Creates a new [LimitRangeItem].
  /// [default_] Default resource requirement limit value by resource name if resource limit is omitted.
  /// [defaultRequest] DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  /// [max] Max usage constraints on this kind by resource name.
  /// [maxLimitRequestRatio] MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  /// [min] Min usage constraints on this kind by resource name.
  /// [type] Type of resource that this limit applies to.
  LimitRangeItem({
    this.default_,
    this.defaultRequest,
    this.max,
    this.maxLimitRequestRatio,
    this.min,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'defaultRequest': ?defaultRequest,
      'max': ?max,
      'maxLimitRequestRatio': ?maxLimitRequestRatio,
      'min': ?min,
      'type': type,
    };
  }

  factory LimitRangeItem.fromMap(Map<String, dynamic> map) {
    return LimitRangeItem(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      defaultRequest: (() { final guardedValue = map['defaultRequest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maxLimitRequestRatio: (() { final guardedValue = map['maxLimitRequestRatio']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

