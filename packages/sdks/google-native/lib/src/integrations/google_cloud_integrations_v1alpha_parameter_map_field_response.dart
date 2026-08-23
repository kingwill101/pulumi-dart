// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_value_type_response.dart';

/// Field represents either the key or value in an entry.
class GoogleCloudIntegrationsV1alphaParameterMapFieldResponse {
  /// Passing a literal value.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaValueTypeResponse> literalValue;
  /// Referencing one of the Integration variables.
  final pulumi.Input<String> referenceKey;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapFieldResponse].
  /// [literalValue] Passing a literal value.
  /// [referenceKey] Referencing one of the Integration variables.
  const GoogleCloudIntegrationsV1alphaParameterMapFieldResponse({
    required this.literalValue,
    required this.referenceKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaValueTypeResponse, Map<String, dynamic>>(literalValue, (value) => value.toMap()),
      'referenceKey': referenceKey,
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapFieldResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapFieldResponse(
      literalValue: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap((map['literalValue']! as Map).cast<String, dynamic>())),
      referenceKey: pulumi.Input.fromValue(map['referenceKey'] as String),
    );
  }
}
