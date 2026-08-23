// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_money.dart';

/// API call volume range and the fees charged when the total number of API calls is within the range.
class GoogleCloudApigeeV1RateRange {
  /// Ending value of the range. Set to 0 or `null` for the last range of values.
  final pulumi.Input<String>? end;
  /// Fee to charge when total number of API calls falls within this range.
  final pulumi.Input<GoogleTypeMoney>? fee;
  /// Starting value of the range. Set to 0 or `null` for the initial range of values.
  final pulumi.Input<String>? start;

  /// Creates a new [GoogleCloudApigeeV1RateRange].
  /// [end] Ending value of the range. Set to 0 or `null` for the last range of values.
  /// [fee] Fee to charge when total number of API calls falls within this range.
  /// [start] Starting value of the range. Set to 0 or `null` for the initial range of values.
  const GoogleCloudApigeeV1RateRange({
    this.end,
    this.fee,
    this.start,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'fee': ?pulumi.Input.mapOptionalInputValue<GoogleTypeMoney, Map<String, dynamic>>(fee, (value) => value.toMap()),
      'start': ?start,
    };
  }

  factory GoogleCloudApigeeV1RateRange.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1RateRange(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fee: (() { final guardedValue = map['fee']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleTypeMoney.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      start: (() { final guardedValue = map['start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
