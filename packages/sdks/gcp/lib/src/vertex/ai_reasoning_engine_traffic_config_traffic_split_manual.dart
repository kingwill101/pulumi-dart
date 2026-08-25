// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_traffic_config_traffic_split_manual_target.dart';

class AiReasoningEngineTrafficConfigTrafficSplitManual {
  /// Optional. A list of traffic targets for the Runtimes Revisions. The sum of
  /// percentages must equal to 100.
  /// Structure is documented below.
  final pulumi.Input<List<AiReasoningEngineTrafficConfigTrafficSplitManualTarget>?>? targets;

  /// Creates a new [AiReasoningEngineTrafficConfigTrafficSplitManual].
  /// [targets] Optional. A list of traffic targets for the Runtimes Revisions. The sum of
  const AiReasoningEngineTrafficConfigTrafficSplitManual({
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targets': ?pulumi.Input.mapOptionalInputValue<List<AiReasoningEngineTrafficConfigTrafficSplitManualTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<AiReasoningEngineTrafficConfigTrafficSplitManualTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AiReasoningEngineTrafficConfigTrafficSplitManual.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineTrafficConfigTrafficSplitManual(
      targets: (() { final guardedValue = map['targets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AiReasoningEngineTrafficConfigTrafficSplitManualTarget>(guardedValue, (value) => AiReasoningEngineTrafficConfigTrafficSplitManualTarget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
