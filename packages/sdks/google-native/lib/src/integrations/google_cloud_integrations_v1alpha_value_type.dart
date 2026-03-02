// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_integrations_v1alpha_boolean_parameter_array.dart';
import 'google_cloud_integrations_v1alpha_double_parameter_array.dart';
import 'google_cloud_integrations_v1alpha_int_parameter_array.dart';
import 'google_cloud_integrations_v1alpha_string_parameter_array.dart';

/// The type of the parameter.
class GoogleCloudIntegrationsV1alphaValueType {
  /// Boolean Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaBooleanParameterArray>? booleanArray;
  /// Boolean.
  final pulumi.Input<bool>? booleanValue;
  /// Double Number Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaDoubleParameterArray>? doubleArray;
  /// Double Number.
  final pulumi.Input<double>? doubleValue;
  /// Integer Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaIntParameterArray>? intArray;
  /// Integer.
  final pulumi.Input<String>? intValue;
  /// Json.
  final pulumi.Input<String>? jsonValue;
  /// String Array.
  final pulumi.Input<GoogleCloudIntegrationsV1alphaStringParameterArray>? stringArray;
  /// String.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [GoogleCloudIntegrationsV1alphaValueType].
  /// [booleanArray] Boolean Array.
  /// [booleanValue] Boolean.
  /// [doubleArray] Double Number Array.
  /// [doubleValue] Double Number.
  /// [intArray] Integer Array.
  /// [intValue] Integer.
  /// [jsonValue] Json.
  /// [stringArray] String Array.
  /// [stringValue] String.
  GoogleCloudIntegrationsV1alphaValueType({
    this.booleanArray,
    this.booleanValue,
    this.doubleArray,
    this.doubleValue,
    this.intArray,
    this.intValue,
    this.jsonValue,
    this.stringArray,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'booleanArray': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaBooleanParameterArray, Map<String, dynamic>>(booleanArray, (value) => value.toMap()),
      'booleanValue': ?booleanValue,
      'doubleArray': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaDoubleParameterArray, Map<String, dynamic>>(doubleArray, (value) => value.toMap()),
      'doubleValue': ?doubleValue,
      'intArray': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaIntParameterArray, Map<String, dynamic>>(intArray, (value) => value.toMap()),
      'intValue': ?intValue,
      'jsonValue': ?jsonValue,
      'stringArray': ?pulumi.Input.mapOptionalInputValue<GoogleCloudIntegrationsV1alphaStringParameterArray, Map<String, dynamic>>(stringArray, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory GoogleCloudIntegrationsV1alphaValueType.fromMap(Map<String, dynamic> map) {
    return GoogleCloudIntegrationsV1alphaValueType(
      booleanArray: map['booleanArray'] == null ? null : (GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromMap((map['booleanArray']! as Map).cast<String, dynamic>())).input(),
      booleanValue: map['booleanValue'] == null ? null : (map['booleanValue']! as bool).input(),
      doubleArray: map['doubleArray'] == null ? null : (GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromMap((map['doubleArray']! as Map).cast<String, dynamic>())).input(),
      doubleValue: map['doubleValue'] == null ? null : (map['doubleValue']! as double).input(),
      intArray: map['intArray'] == null ? null : (GoogleCloudIntegrationsV1alphaIntParameterArray.fromMap((map['intArray']! as Map).cast<String, dynamic>())).input(),
      intValue: map['intValue'] == null ? null : (map['intValue']! as String).input(),
      jsonValue: map['jsonValue'] == null ? null : (map['jsonValue']! as String).input(),
      stringArray: map['stringArray'] == null ? null : (GoogleCloudIntegrationsV1alphaStringParameterArray.fromMap((map['stringArray']! as Map).cast<String, dynamic>())).input(),
      stringValue: map['stringValue'] == null ? null : (map['stringValue']! as String).input(),
    );
  }
}

