// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// LimitRangeItem defines a min/max usage limit for any resource that matches on kind.
class LimitRangeItemPatch {
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
  final pulumi.Input<String>? type;

  /// Creates a new [LimitRangeItemPatch].
  /// [default_] Default resource requirement limit value by resource name if resource limit is omitted.
  /// [defaultRequest] DefaultRequest is the default resource requirement request value by resource name if resource request is omitted.
  /// [max] Max usage constraints on this kind by resource name.
  /// [maxLimitRequestRatio] MaxLimitRequestRatio if specified, the named resource must have a request and limit that are both non-zero where limit divided by request is less than or equal to the enumerated value; this represents the max burst for the named resource.
  /// [min] Min usage constraints on this kind by resource name.
  /// [type] Type of resource that this limit applies to.
  LimitRangeItemPatch({
    this.default_,
    this.defaultRequest,
    this.max,
    this.maxLimitRequestRatio,
    this.min,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'defaultRequest': ?defaultRequest,
      'max': ?max,
      'maxLimitRequestRatio': ?maxLimitRequestRatio,
      'min': ?min,
      'type': ?type,
    };
  }

  factory LimitRangeItemPatch.fromMap(Map<String, dynamic> map) {
    return LimitRangeItemPatch(
      default_: map['default'] == null ? null : ((map['default']! as Map).cast<String, String>()).input(),
      defaultRequest: map['defaultRequest'] == null ? null : ((map['defaultRequest']! as Map).cast<String, String>()).input(),
      max: map['max'] == null ? null : ((map['max']! as Map).cast<String, String>()).input(),
      maxLimitRequestRatio: map['maxLimitRequestRatio'] == null ? null : ((map['maxLimitRequestRatio']! as Map).cast<String, String>()).input(),
      min: map['min'] == null ? null : ((map['min']! as Map).cast<String, String>()).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

