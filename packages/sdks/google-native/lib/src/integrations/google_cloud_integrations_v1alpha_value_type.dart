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
  const GoogleCloudIntegrationsV1alphaValueType({
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
      booleanArray: (() { final guardedValue = map['booleanArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaBooleanParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      booleanValue: (() { final guardedValue = map['booleanValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      doubleArray: (() { final guardedValue = map['doubleArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaDoubleParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      doubleValue: (() { final guardedValue = map['doubleValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      intArray: (() { final guardedValue = map['intArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaIntParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      intValue: (() { final guardedValue = map['intValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsonValue: (() { final guardedValue = map['jsonValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stringArray: (() { final guardedValue = map['stringArray']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudIntegrationsV1alphaStringParameterArray.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

