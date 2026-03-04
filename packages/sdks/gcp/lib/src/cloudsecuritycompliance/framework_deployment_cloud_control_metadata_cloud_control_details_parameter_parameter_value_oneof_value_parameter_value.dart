// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value_oneof_value_parameter_value_string_list_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;

  /// Represents a double value.
  final pulumi.Input<double>? numberValue;

  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<
    FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue
  >?
  stringListValue;

  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue({
    this.boolValue,
    this.numberValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'stringListValue':
          ?pulumi.Input.mapOptionalInputValue<
            FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue,
            Map<String, dynamic>
          >(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValue(
      boolValue: (() {
        final guardedValue = map['boolValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      numberValue: (() {
        final guardedValue = map['numberValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      stringListValue: (() {
        final guardedValue = map['stringListValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValueParameterValueStringListValue.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      stringValue: (() {
        final guardedValue = map['stringValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
