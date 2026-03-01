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
  final DebugSetting? debugSetting;
  /// Specifies whether template expressions are evaluated within the scope of the parent template or nested template. Only applicable to nested templates. If not specified, default value is outer.
  final ExpressionEvaluationOptions? expressionEvaluationOptions;
  /// The mode that is used to deploy resources. This value can be either Incremental or Complete. In Incremental mode, resources are deployed without deleting existing resources that are not included in the template. In Complete mode, resources are deployed and existing resources in the resource group that are not included in the template are deleted. Be careful when using Complete mode as you may unintentionally delete resources.
  final DeploymentMode mode;
  /// The deployment on error behavior.
  final OnErrorDeployment? onErrorDeployment;
  /// Name and value pairs that define the deployment parameters for the template. You use this element when you want to provide the parameter values directly in the request rather than link to an existing parameter file. Use either the parametersLink property or the parameters property, but not both. It can be a JObject or a well formed JSON string.
  final Map<String, DeploymentParameter>? parameters;
  /// The URI of parameters file. You use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  final ParametersLink? parametersLink;
  /// The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  final dynamic template;
  /// The URI of the template. Use either the templateLink property or the template property, but not both.
  final TemplateLink? templateLink;

  /// Creates a new [DeploymentProperties].
  /// [debugSetting] The debug setting of the deployment.
  /// [expressionEvaluationOptions] Specifies whether template expressions are evaluated within the scope of the parent template or nested template. Only applicable to nested templates. If not specified, default value is outer.
  /// [mode] The mode that is used to deploy resources. This value can be either Incremental or Complete. In Incremental mode, resources are deployed without deleting existing resources that are not included in the template. In Complete mode, resources are deployed and existing resources in the resource group that are not included in the template are deleted. Be careful when using Complete mode as you may unintentionally delete resources.
  /// [onErrorDeployment] The deployment on error behavior.
  /// [parameters] Name and value pairs that define the deployment parameters for the template. You use this element when you want to provide the parameter values directly in the request rather than link to an existing parameter file. Use either the parametersLink property or the parameters property, but not both. It can be a JObject or a well formed JSON string.
  /// [parametersLink] The URI of parameters file. You use this element to link to an existing parameters file. Use either the parametersLink property or the parameters property, but not both.
  /// [template] The template content. You use this element when you want to pass the template syntax directly in the request rather than link to an existing template. It can be a JObject or well-formed JSON string. Use either the templateLink property or the template property, but not both.
  /// [templateLink] The URI of the template. Use either the templateLink property or the template property, but not both.
  DeploymentProperties({
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
      'debugSetting': ?debugSetting == null ? null : debugSetting!.toMap(),
      'expressionEvaluationOptions': ?expressionEvaluationOptions == null ? null : expressionEvaluationOptions!.toMap(),
      'mode': mode.value,
      'onErrorDeployment': ?onErrorDeployment == null ? null : onErrorDeployment!.toMap(),
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<DeploymentParameter, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'parametersLink': ?parametersLink == null ? null : parametersLink!.toMap(),
      'template': ?template,
      'templateLink': ?templateLink == null ? null : templateLink!.toMap(),
    };
  }

  factory DeploymentProperties.fromMap(Map<String, dynamic> map) {
    return DeploymentProperties(
      debugSetting: map['debugSetting'] == null ? null : DebugSetting.fromMap((map['debugSetting'] as Map).cast<String, dynamic>()),
      expressionEvaluationOptions: map['expressionEvaluationOptions'] == null ? null : ExpressionEvaluationOptions.fromMap((map['expressionEvaluationOptions'] as Map).cast<String, dynamic>()),
      mode: DeploymentMode.fromValue(map['mode'] as String),
      onErrorDeployment: map['onErrorDeployment'] == null ? null : OnErrorDeployment.fromMap((map['onErrorDeployment'] as Map).cast<String, dynamic>()),
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<DeploymentParameter>(map['parameters'], (value) => DeploymentParameter.fromMap((value as Map).cast<String, dynamic>())),
      parametersLink: map['parametersLink'] == null ? null : ParametersLink.fromMap((map['parametersLink'] as Map).cast<String, dynamic>()),
      template: map['template'] == null ? null : map['template'],
      templateLink: map['templateLink'] == null ? null : TemplateLink.fromMap((map['templateLink'] as Map).cast<String, dynamic>()),
    );
  }
}

