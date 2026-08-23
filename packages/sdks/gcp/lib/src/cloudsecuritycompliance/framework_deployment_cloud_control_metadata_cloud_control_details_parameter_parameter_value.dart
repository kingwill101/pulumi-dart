// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value_oneof_value.dart';
import 'framework_deployment_cloud_control_metadata_cloud_control_details_parameter_parameter_value_string_list_value.dart';

class FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue {
  /// Represents a boolean value.
  final pulumi.Input<bool>? boolValue;
  /// Represents a double value.
  final pulumi.Input<double>? numberValue;
  /// Sub-parameter values.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue>? oneofValue;
  /// A list of strings.
  /// Structure is documented below.
  final pulumi.Input<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue>? stringListValue;
  /// Represents a string value.
  final pulumi.Input<String>? stringValue;

  /// Creates a new [FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue].
  /// [boolValue] Represents a boolean value.
  /// [numberValue] Represents a double value.
  /// [oneofValue] Sub-parameter values.
  /// [stringListValue] A list of strings.
  /// [stringValue] Represents a string value.
  const FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue({
    this.boolValue,
    this.numberValue,
    this.oneofValue,
    this.stringListValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'numberValue': ?numberValue,
      'oneofValue': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue, Map<String, dynamic>>(oneofValue, (value) => value.toMap()),
      'stringListValue': ?pulumi.Input.mapOptionalInputValue<FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue, Map<String, dynamic>>(stringListValue, (value) => value.toMap()),
      'stringValue': ?stringValue,
    };
  }

  factory FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue.fromMap(Map<String, dynamic> map) {
    return FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValue(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      numberValue: (() { final guardedValue = map['numberValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      oneofValue: (() { final guardedValue = map['oneofValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueOneofValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringListValue: (() { final guardedValue = map['stringListValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FrameworkDeploymentCloudControlMetadataCloudControlDetailsParameterParameterValueStringListValue.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stringValue: (() { final guardedValue = map['stringValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
