// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'limit_range_item_patch.dart';

/// LimitRangeSpec defines a min/max usage limit for resources that match on kind.
class LimitRangeSpecPatch {
  /// Limits is the list of LimitRangeItem objects that are enforced.
  final pulumi.Input<List<LimitRangeItemPatch>?>? limits;

  /// Creates a new [LimitRangeSpecPatch].
  /// [limits] Limits is the list of LimitRangeItem objects that are enforced.
  const LimitRangeSpecPatch({
    this.limits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'limits': ?pulumi.Input.mapOptionalInputValue<List<LimitRangeItemPatch>, List<Map<String, dynamic>>>(limits, (value) => pulumi.Input.encodeList<LimitRangeItemPatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LimitRangeSpecPatch.fromMap(Map<String, dynamic> map) {
    return LimitRangeSpecPatch(
      limits: (() { final guardedValue = map['limits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LimitRangeItemPatch>(guardedValue, (value) => LimitRangeItemPatch.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
