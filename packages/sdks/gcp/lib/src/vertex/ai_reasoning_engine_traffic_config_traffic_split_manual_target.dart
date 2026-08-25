// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineTrafficConfigTrafficSplitManualTarget {
  /// Required. Specifies percent of the traffic to this Runtime Revision.
  final pulumi.Input<int> percent;
  /// Required. The Runtime Revision name to which to send this portion of traffic. Accepts revision IDs, short names (e.g. `rev-1`), or keywords such as `LATEST` and `PREVIOUS`. Note: Keywords like `LATEST` and `PREVIOUS` resolve at apply time to the concrete underlying revision ID and remain pinned until `trafficConfig` is updated in Terraform.
  final pulumi.Input<String> runtimeRevisionName;

  /// Creates a new [AiReasoningEngineTrafficConfigTrafficSplitManualTarget].
  /// [percent] Required. Specifies percent of the traffic to this Runtime Revision.
  /// [runtimeRevisionName] Required. The Runtime Revision name to which to send this portion of traffic. Accepts revision IDs, short names (e.g. `rev-1`), or keywords such as `LATEST` and `PREVIOUS`. Note: Keywords like `LATEST` and `PREVIOUS` resolve at apply time to the concrete underlying revision ID and remain pinned until `trafficConfig` is updated in Terraform.
  const AiReasoningEngineTrafficConfigTrafficSplitManualTarget({
    required this.percent,
    required this.runtimeRevisionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'percent': percent,
      'runtimeRevisionName': runtimeRevisionName,
    };
  }

  factory AiReasoningEngineTrafficConfigTrafficSplitManualTarget.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineTrafficConfigTrafficSplitManualTarget(
      percent: pulumi.Input.fromValue((map['percent'] as num).toInt()),
      runtimeRevisionName: pulumi.Input.fromValue(map['runtimeRevisionName'] as String),
    );
  }
}
