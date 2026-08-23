// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_keep_alive_probe_http_get.dart';

class AiReasoningEngineSpecDeploymentSpecKeepAliveProbe {
  /// Specifies the HTTP GET configuration for the probe.
  /// Structure is documented below.
  final pulumi.Input<AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet>? httpGet;
  /// Optional. Specifies the maximum duration (in seconds) to keep the instance alive via this probe. Can be a maximum of 3600 seconds (1 hour).
  final pulumi.Input<int>? maxSeconds;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpecKeepAliveProbe].
  /// [httpGet] Specifies the HTTP GET configuration for the probe.
  /// [maxSeconds] Optional. Specifies the maximum duration (in seconds) to keep the instance alive via this probe. Can be a maximum of 3600 seconds (1 hour).
  const AiReasoningEngineSpecDeploymentSpecKeepAliveProbe({
    this.httpGet,
    this.maxSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpGet': ?pulumi.Input.mapOptionalInputValue<AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet, Map<String, dynamic>>(httpGet, (value) => value.toMap()),
      'maxSeconds': ?maxSeconds,
    };
  }

  factory AiReasoningEngineSpecDeploymentSpecKeepAliveProbe.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpecKeepAliveProbe(
      httpGet: (() { final guardedValue = map['httpGet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiReasoningEngineSpecDeploymentSpecKeepAliveProbeHttpGet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxSeconds: (() { final guardedValue = map['maxSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
