// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_type_decimal.dart';

/// An adjustment that applies a flat markup or markdown to an entire bill.
class GoogleCloudChannelV1PercentageAdjustment {
  /// The percentage of the bill to adjust. For example: Mark down by 1% =&gt; "-1.00" Mark up by 1% =&gt; "1.00" Pass-Through =&gt; "0.00"
  final pulumi.Input<GoogleTypeDecimal>? percentage;

  /// Creates a new [GoogleCloudChannelV1PercentageAdjustment].
  /// [percentage] The percentage of the bill to adjust. For example: Mark down by 1% =&gt; "-1.00" Mark up by 1% =&gt; "1.00" Pass-Through =&gt; "0.00"
  GoogleCloudChannelV1PercentageAdjustment({this.percentage});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percentage':
          ?pulumi.Input.mapOptionalInputValue<
            GoogleTypeDecimal,
            Map<String, dynamic>
          >(percentage, (value) => value.toMap()),
    };
  }

  factory GoogleCloudChannelV1PercentageAdjustment.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudChannelV1PercentageAdjustment(
      percentage: (() {
        final guardedValue = map['percentage'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GoogleTypeDecimal.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
