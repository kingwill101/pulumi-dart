// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'telemetry_policy_tracing_configuration_custom_span_attribute.dart';
import 'telemetry_policy_tracing_configuration_parent_based_sampling.dart';

class TelemetryPolicyTracingConfiguration {
  /// Provides key-value pairs for adding context to spans. Supports literalValue (static) and fromHeaderValue (dynamic extraction).
  /// Structure is documented below.
  final pulumi.Input<List<TelemetryPolicyTracingConfigurationCustomSpanAttribute>?>? customSpanAttributes;
  /// Configures honoring a sampled bit in downstream traceparentID headers.
  /// Structure is documented below.
  final pulumi.Input<TelemetryPolicyTracingConfigurationParentBasedSampling?>? parentBasedSampling;
  /// Specifies the tracing sampling rate. The sampling rate is a float number in the interval [0, 1]. The sampling rate is applied to all requests to the targeted resources. The default value is 0.0.
  final pulumi.Input<double?>? samplingRate;

  /// Creates a new [TelemetryPolicyTracingConfiguration].
  /// [customSpanAttributes] Provides key-value pairs for adding context to spans. Supports literalValue (static) and fromHeaderValue (dynamic extraction).
  /// [parentBasedSampling] Configures honoring a sampled bit in downstream traceparentID headers.
  /// [samplingRate] Specifies the tracing sampling rate. The sampling rate is a float number in the interval [0, 1]. The sampling rate is applied to all requests to the targeted resources. The default value is 0.0.
  const TelemetryPolicyTracingConfiguration({
    this.customSpanAttributes,
    this.parentBasedSampling,
    this.samplingRate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customSpanAttributes': ?pulumi.Input.mapOptionalInputValue<List<TelemetryPolicyTracingConfigurationCustomSpanAttribute>, List<Map<String, dynamic>>>(customSpanAttributes, (value) => pulumi.Input.encodeList<TelemetryPolicyTracingConfigurationCustomSpanAttribute, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parentBasedSampling': ?pulumi.Input.mapOptionalInputValue<TelemetryPolicyTracingConfigurationParentBasedSampling, Map<String, dynamic>>(parentBasedSampling, (value) => value.toMap()),
      'samplingRate': ?samplingRate,
    };
  }

  factory TelemetryPolicyTracingConfiguration.fromMap(Map<String, dynamic> map) {
    return TelemetryPolicyTracingConfiguration(
      customSpanAttributes: (() { final guardedValue = map['customSpanAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TelemetryPolicyTracingConfigurationCustomSpanAttribute>(guardedValue, (value) => TelemetryPolicyTracingConfigurationCustomSpanAttribute.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parentBasedSampling: (() { final guardedValue = map['parentBasedSampling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TelemetryPolicyTracingConfigurationParentBasedSampling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      samplingRate: (() { final guardedValue = map['samplingRate']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
