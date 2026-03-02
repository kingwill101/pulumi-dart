// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'idrange_patch.dart';

/// FSGroupStrategyOptions defines the strategy type and options used to create the strategy. Deprecated: use FSGroupStrategyOptions from policy API Group instead.
class FSGroupStrategyOptionsPatch {
  /// ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.
  final pulumi.Input<List<IDRangePatch>>? ranges;
  /// rule is the strategy that will dictate what FSGroup is used in the SecurityContext.
  final pulumi.Input<String>? rule;

  /// Creates a new [FSGroupStrategyOptionsPatch].
  /// [ranges] ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.
  /// [rule] rule is the strategy that will dictate what FSGroup is used in the SecurityContext.
  FSGroupStrategyOptionsPatch({
    this.ranges,
    this.rule,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ranges': ?pulumi.Input.mapOptionalInputValue<List<IDRangePatch>, List<Map<String, dynamic>>>(ranges, (value) => pulumi.Input.encodeList<IDRangePatch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'rule': ?rule,
    };
  }

  factory FSGroupStrategyOptionsPatch.fromMap(Map<String, dynamic> map) {
    return FSGroupStrategyOptionsPatch(
      ranges: map['ranges'] == null ? null : (pulumi.Input.decodeList<IDRangePatch>(map['ranges'], (value) => IDRangePatch.fromMap((value as Map).cast<String, dynamic>()))).input(),
      rule: map['rule'] == null ? null : (map['rule'] as String).input(),
    );
  }
}

