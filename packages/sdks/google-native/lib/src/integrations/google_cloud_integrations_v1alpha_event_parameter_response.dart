// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_value_type_response.dart';

/// This message is used for processing and persisting (when applicable) key value pair parameters for each event in the event bus.
class GoogleCloudIntegrationsV1alphaEventParameterResponse {
  /// Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  final pulumi.Input<String> key;
  /// Values for the defined keys. Each value can either be string, int, double or any proto message.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaValueTypeResponse> value;

  /// Creates a new [GoogleCloudIntegrationsV1alphaEventParameterResponse].
  /// [key] Key is used to retrieve the corresponding parameter value. This should be unique for a given fired event. These parameters must be predefined in the integration definition.
  /// [value] Values for the defined keys. Each value can either be string, int, double or any proto message.
  GoogleCloudIntegrationsV1alphaEventParameterResponse({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaValueTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory GoogleCloudIntegrationsV1alphaEventParameterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaEventParameterResponse(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap((map['value']! as Map).cast<String, dynamic>())),
    );
  }
}

