// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython {
  /// Optional. Whether to enable Python analysis. Defaults to false.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython].
  /// [enabled] Optional. Whether to enable Python analysis. Defaults to false.
  const DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython.fromMap(Map<String, dynamic> map) {
    return DataAnalyticsDataAgentDataAnalyticsAgentStagingContextOptionsAnalysisPython(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
