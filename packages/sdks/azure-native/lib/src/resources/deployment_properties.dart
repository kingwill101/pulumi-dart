// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'debug_setting.dart';
import 'deployment_mode.dart';
import 'deployment_parameter.dart';
import 'expression_evaluation_options.dart';
import 'on_error_deployment.dart';
import 'parameters_link.dart';
import 'template_link.dart';

/// Deployment properties.
class DeploymentProperties {
  /// The debug setting of the deployment.
  final pulumi.Input<DebugSetting?>? debugSetting;
  /// Specifies whether template expressions are evaluated within the scope of the parent template or nested template. Only applicable to nested templates. If not specified, default value is outer.
  final pulumi.Input<ExpressionEvaluationOptions?>? expressionEvaluationOptions;
  /// The mode that is used to deploy resources. This value can be either Incremental or Complete. In Incremental mode, resources are deployed without deleting existing resources that are not included in the template. In Complete mode, resources are deployed and existing resources in the resource group that are not included in the template are deleted. Be careful when using Complete mode as you may unintentionally delete resources.
  final pulumi.Input<DeploymentMode> mode;
  /// The deployment on error behavior.
  final pulumi.Input<OnErrorDeployment?>? onErrorDeployment;
  /// Name and value pairs that define the deployment parameters for the template. You use this element when you want to provide the parameter values directly in the request rather than link to an existing parameter file. Use either the parametersLink property or the parameters property, but not both. It can be a JObject or a well formed JSON string.
  final pulumi.Input<Map<String, DeploymentParameter>?>? parameters;
  /// The URI of parameters file. You use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final pulumi.Input<ParametersLink?>? parametersLink;
  /// The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<dynamic>? template;
  /// The URI of the template. Use either the templateLink property or the template property, but not both.
  final pulumi.Input<TemplateLink?>? templateLink;

  /// Creates a new [DeploymentProperties].
  /// [debugSetting] The debug setting of the deployment.
  /// [expressionEvaluationOptions] Specifies whether template expressions are evaluated within the scope of the parent template or nested template. Only applicable to nested templates. If not specified, default value is outer.
  /// [mode] The mode that is used to deploy resources. This value can be either Incremental or Complete. In Incremental mode, resources are deployed without deleting existing resources that are not included in the template. In Complete mode, resources are deployed and existing resources in the resource group that are not included in the template are deleted. Be careful when using Complete mode as you may unintentionally delete resources.
  /// [onErrorDeployment] The deployment on error behavior.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. You use this element when you want to provide the parameter values directly in the request rather than link to an existing parameter file. Use either the parametersLink property or the parameters property, but not both. It can be a JObject or a well formed JSON string.
  /// [parametersLink] The URI of parameters file. You use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [template] The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  /// [templateLink] The URI of the template. Use either the templateLink property or the template property, but not both.
  const DeploymentProperties({
    this.debugSetting,
    this.expressionEvaluationOptions,
    required this.mode,
    this.onErrorDeployment,
    this.parameters,
    this.parametersLink,
    this.template,
    this.templateLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'debugSetting': ?pulumi.Input.mapOptionalInputValue<DebugSetting, Map<String, dynamic>>(debugSetting, (value) => value.toMap()),
      'expressionEvaluationOptions': ?pulumi.Input.mapOptionalInputValue<ExpressionEvaluationOptions, Map<String, dynamic>>(expressionEvaluationOptions, (value) => value.toMap()),
      'mode': pulumi.Input.mapInputValue<DeploymentMode, String>(mode, (value) => value.wireValue),
      'onErrorDeployment': ?pulumi.Input.mapOptionalInputValue<OnErrorDeployment, Map<String, dynamic>>(onErrorDeployment, (value) => value.toMap()),
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, DeploymentParameter>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<DeploymentParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parametersLink': ?pulumi.Input.mapOptionalInputValue<ParametersLink, Map<String, dynamic>>(parametersLink, (value) => value.toMap()),
      'template': ?template,
      'templateLink': ?pulumi.Input.mapOptionalInputValue<TemplateLink, Map<String, dynamic>>(templateLink, (value) => value.toMap()),
    };
  }

  factory DeploymentProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentProperties(
      debugSetting: (() { final guardedValue = map['debugSetting']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DebugSetting.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      expressionEvaluationOptions: (() { final guardedValue = map['expressionEvaluationOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ExpressionEvaluationOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(DeploymentMode.fromValue(map['mode']! as String)),
      onErrorDeployment: (() { final guardedValue = map['onErrorDeployment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OnErrorDeployment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeploymentParameter>(guardedValue, (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parametersLink: (() { final guardedValue = map['parametersLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ParametersLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      templateLink: (() { final guardedValue = map['templateLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TemplateLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
