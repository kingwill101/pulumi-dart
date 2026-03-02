// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability {
  /// Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability].
  /// [enabled] Whether an availability SLI is enabled or not. Must be set to `true. Defaults to `true`.
  SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability.fromMap(Map<String, dynamic> map) {
    return SloWindowsBasedSliGoodTotalRatioThresholdBasicSliPerformanceAvailability(
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
    );
  }
}

