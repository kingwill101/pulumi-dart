// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_boolean_parameter_array_response.dart';
import 'google_cloud_integrations_v1alpha_double_parameter_array_response.dart';
import 'google_cloud_integrations_v1alpha_int_parameter_array_response.dart';
import 'google_cloud_integrations_v1alpha_string_parameter_array_response.dart';

/// The type of the parameter.
class GoogleCloudIntegrationsV1alphaValueTypeResponse {
  /// Boolean Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse> booleanArray;
  /// Boolean.
  final pulumi.Input<bool> booleanValue;
  /// Double Number Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse> doubleArray;
  /// Double Number.
  final pulumi.Input<double> doubleValue;
  /// Integer Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntParameterArrayResponse> intArray;
  /// Integer.
  final pulumi.Input<String> intValue;
  /// Json.
  final pulumi.Input<String> jsonValue;
  /// String Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaStringParameterArrayResponse> stringArray;
  /// String.
  final pulumi.Input<String> stringValue;

  /// Creates a new [GoogleCloudIntegrationsV1alphaValueTypeResponse].
  /// [booleanArray] Boolean Array.
  /// [booleanValue] Boolean.
  /// [doubleArray] Double Number Array.
  /// [doubleValue] Double Number.
  /// [intArray] Integer Array.
  /// [intValue] Integer.
  /// [jsonValue] Json.
  /// [stringArray] String Array.
  /// [stringValue] String.
  const GoogleCloudIntegrationsV1alphaValueTypeResponse({
    required this.booleanArray,
    required this.booleanValue,
    required this.doubleArray,
    required this.doubleValue,
    required this.intArray,
    required this.intValue,
    required this.jsonValue,
    required this.stringArray,
    required this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse, Map<String, dynamic>>(booleanArray, (value) => value.toMap()),
      'booleanValue': booleanValue,
      'doubleArray': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': doubleValue,
      'intArray': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaIntParameterArrayResponse, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': intValue,
      'jsonValue': jsonValue,
      'stringArray': pulumi.Input.mapInputValue<GoogleCloudIntegrationsV1alphaStringParameterArrayResponse, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': stringValue,
    };
  }

  factory GoogleCloudIntegrationsV1alphaValueTypeResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaValueTypeResponse(
      booleanArray: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaBooleanParameterArrayResponse.fromMap((map['booleanArray']! as Map).cast<String, dynamic>())),
      booleanValue: pulumi.Input.fromValue(map['booleanValue'] as bool),
      doubleArray: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaDoubleParameterArrayResponse.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())),
      doubleValue: pulumi.Input.fromValue(map['doubleValue'] as double),
      intArray: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaIntParameterArrayResponse.fromMap((map['intArray']! as Map).cast<String, dynamic>())),
      intValue: pulumi.Input.fromValue(map['intValue'] as String),
      jsonValue: pulumi.Input.fromValue(map['jsonValue'] as String),
      stringArray: pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaStringParameterArrayResponse.fromMap((map['stringArray']! as Map).cast<String, dynamic>())),
      stringValue: pulumi.Input.fromValue(map['stringValue'] as String),
    );
  }
}

