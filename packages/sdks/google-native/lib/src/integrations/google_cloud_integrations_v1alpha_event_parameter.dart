// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_value_type.dart';

/// This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus.
class GoogleCloudIntegrationsV1alphaEventParameter {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final pulumi.Input<String>? key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaValueType>? value;

  /// Creates a new [GoogleCloudIntegrationsV1alphaEventParameter].
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  const GoogleCloudIntegrationsV1alphaEventParameter({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaValueType, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaEventParameter.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaEventParameter(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaValueType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

