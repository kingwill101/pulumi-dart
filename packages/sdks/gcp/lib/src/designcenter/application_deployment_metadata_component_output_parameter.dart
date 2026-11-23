// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_deployment_metadata_component_output_parameter_parameter.dart';

class ApplicationDeploymentMetadataComponentOutputParameter {
  /// (Output)
  /// The name of the component that the output parameters belong to.
  final pulumi.Input<String?>? component;
  /// (Output)
  /// The output parameters of the component.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationDeploymentMetadataComponentOutputParameterParameter>?>? parameters;

  /// Creates a new [ApplicationDeploymentMetadataComponentOutputParameter].
  /// [component] (Output)
  /// [parameters] (Output)
  const ApplicationDeploymentMetadataComponentOutputParameter({
    this.component,
    this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'component': ?component,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ApplicationDeploymentMetadataComponentOutputParameterParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ApplicationDeploymentMetadataComponentOutputParameterParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationDeploymentMetadataComponentOutputParameter.fromMap(Map<String, dynamic> map) {
    return ApplicationDeploymentMetadataComponentOutputParameter(
      component: (() { final guardedValue = map['component']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApplicationDeploymentMetadataComponentOutputParameterParameter>(guardedValue, (value) => ApplicationDeploymentMetadataComponentOutputParameterParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
