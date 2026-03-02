// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_range_item.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class LimitRangeSpec {
  /// Limits is the list of LimitRangeItem objects that are enforced.
  final pulumi.Input<List<LimitRangeItem>> limits;

  /// Creates a new [LimitRangeSpec].
  /// [limits] Limits is the list of LimitRangeItem objects that are enforced.
  LimitRangeSpec({
    required this.limits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': pulumi.Input.mapInputValue<List<LimitRangeItem>, List<Map<String, dynamic>>>(limits, (value) => pulumi.Input.encodeList<LimitRangeItem, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LimitRangeSpec.fromMap(Map<String, dynamic> map) {
    return LimitRangeSpec(
      limits: (pulumi.Input.decodeList<LimitRangeItem>(map['limits'], (value) => LimitRangeItem.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

