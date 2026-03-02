// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_value_type.dart';

/// Field represents either the key or value in an entry.
class GoogleCloudIntegrationsV1alphaParameterMapField {
  /// Passing a literal value.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaValueType>? literalValue;
  /// Referencing one of the Integration variables.
  final pulumi.Input<String>? referenceKey;

  /// Creates a new [GoogleCloudIntegrationsV1alphaParameterMapField].
  /// [literalValue] Passing a literal value.
  /// [referenceKey] Referencing one of the Integration variables.
  GoogleCloudIntegrationsV1alphaParameterMapField({
    this.literalValue,
    this.referenceKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'literalValue': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaValueType, Map<String, dynamic>>(literalValue, (value) => value.toMap()),
      'referenceKey': ?referenceKey,
    };
  }

  factory GoogleCloudIntegrationsV1alphaParameterMapField.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaParameterMapField(
      literalValue: map['literalValue'] == null ? null : (GoogleCloudIntegrationsV1alphaValueType.fromMap((map['literalValue'] as Map).cast<String, dynamic>())).input(),
      referenceKey: map['referenceKey'] == null ? null : (map['referenceKey'] as String).input(),
    );
  }
}

