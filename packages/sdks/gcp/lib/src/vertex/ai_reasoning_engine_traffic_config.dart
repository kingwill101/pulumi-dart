// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_traffic_config_traffic_split_manual.dart';

class AiReasoningEngineTrafficConfig {
  /// Optional. Traffic distribution configuration, where all traffic is sent to the
  /// latest Runtime Revision.
  final pulumi.Input<Map<String, dynamic>?>? trafficSplitAlwaysLatest;
  /// Optional. Manual traffic distribution configuration, where the user specifies the
  /// Runtime Revision IDs and the percentage of traffic to send to each.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineTrafficConfigTrafficSplitManual?>? trafficSplitManual;

  /// Creates a new [AiReasoningEngineTrafficConfig].
  /// [trafficSplitAlwaysLatest] Optional. Traffic distribution configuration, where all traffic is sent to the
  /// [trafficSplitManual] Optional. Manual traffic distribution configuration, where the user specifies the
  const AiReasoningEngineTrafficConfig({
    this.trafficSplitAlwaysLatest,
    this.trafficSplitManual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trafficSplitAlwaysLatest': ?trafficSplitAlwaysLatest,
      'trafficSplitManual': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineTrafficConfigTrafficSplitManual, Map<String, dynamic>>(trafficSplitManual, (value) => value.toMap()),
    };
  }

  factory AiReasoningEngineTrafficConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineTrafficConfig(
      trafficSplitAlwaysLatest: (() { final guardedValue = map['trafficSplitAlwaysLatest']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      trafficSplitManual: (() { final guardedValue = map['trafficSplitManual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineTrafficConfigTrafficSplitManual.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
