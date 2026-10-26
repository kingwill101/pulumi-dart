import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_app_appengine_v1beta_args.dart';
import 'get_app_appengine_v1beta_result.dart';
import 'get_app_args.dart';
import 'get_app_result.dart';
import 'get_authorized_certificate_appengine_v1alpha_args.dart';
import 'get_authorized_certificate_appengine_v1alpha_result.dart';
import 'get_authorized_certificate_appengine_v1beta_args.dart';
import 'get_authorized_certificate_appengine_v1beta_result.dart';
import 'get_authorized_certificate_args.dart';
import 'get_authorized_certificate_result.dart';
import 'get_domain_mapping_appengine_v1alpha_args.dart';
import 'get_domain_mapping_appengine_v1alpha_result.dart';
import 'get_domain_mapping_appengine_v1beta_args.dart';
import 'get_domain_mapping_appengine_v1beta_result.dart';
import 'get_domain_mapping_args.dart';
import 'get_domain_mapping_result.dart';
import 'get_ingress_rule_appengine_v1beta_args.dart';
import 'get_ingress_rule_appengine_v1beta_result.dart';
import 'get_ingress_rule_args.dart';
import 'get_ingress_rule_result.dart';
import 'get_version_appengine_v1beta_args.dart';
import 'get_version_appengine_v1beta_result.dart';
import 'get_version_args.dart';
import 'get_version_result.dart';

/// Gets information about an application.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppResult> getApp(
  GetAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppResult.fromMap(result);
}

pulumi.Output<GetAppResult> getAppOutput(
  GetAppArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1:getApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppResult.fromMap);
}

/// Gets the specified SSL certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_authorized_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedCertificateResult> getAuthorizedCertificate(
  GetAuthorizedCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateResult.fromMap(result);
}

pulumi.Output<GetAuthorizedCertificateResult> getAuthorizedCertificateOutput(
  GetAuthorizedCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1:getAuthorizedCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizedCertificateResult.fromMap);
}

/// Gets the specified domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_domain_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingResult> getDomainMapping(
  GetDomainMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingResult.fromMap(result);
}

pulumi.Output<GetDomainMappingResult> getDomainMappingOutput(
  GetDomainMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1:getDomainMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainMappingResult.fromMap);
}

/// Gets the specified firewall rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_ingress_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIngressRuleResult> getIngressRule(
  GetIngressRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getIngressRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleResult.fromMap(result);
}

pulumi.Output<GetIngressRuleResult> getIngressRuleOutput(
  GetIngressRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1:getIngressRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIngressRuleResult.fromMap);
}

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1_get_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionResult> getVersion(
  GetVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionResult.fromMap(result);
}

pulumi.Output<GetVersionResult> getVersionOutput(
  GetVersionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionResult.fromMap);
}

/// Gets the specified SSL certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1alpha_get_authorized_certificate_appengine_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedCertificateAppengineV1alphaResult> getAuthorizedCertificateAppengineV1alpha(
  GetAuthorizedCertificateAppengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateAppengineV1alphaResult.fromMap(result);
}

pulumi.Output<GetAuthorizedCertificateAppengineV1alphaResult> getAuthorizedCertificateAppengineV1alphaOutput(
  GetAuthorizedCertificateAppengineV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getAuthorizedCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizedCertificateAppengineV1alphaResult.fromMap);
}

/// Gets the specified domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1alpha_get_domain_mapping_appengine_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingAppengineV1alphaResult> getDomainMappingAppengineV1alpha(
  GetDomainMappingAppengineV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingAppengineV1alphaResult.fromMap(result);
}

pulumi.Output<GetDomainMappingAppengineV1alphaResult> getDomainMappingAppengineV1alphaOutput(
  GetDomainMappingAppengineV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1alpha:getDomainMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainMappingAppengineV1alphaResult.fromMap);
}

/// Gets information about an application.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_app_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppAppengineV1betaResult> getAppAppengineV1beta(
  GetAppAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppAppengineV1betaResult.fromMap(result);
}

pulumi.Output<GetAppAppengineV1betaResult> getAppAppengineV1betaOutput(
  GetAppAppengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getApp',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAppAppengineV1betaResult.fromMap);
}

/// Gets the specified SSL certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_authorized_certificate_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAuthorizedCertificateAppengineV1betaResult> getAuthorizedCertificateAppengineV1beta(
  GetAuthorizedCertificateAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getAuthorizedCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAuthorizedCertificateAppengineV1betaResult.fromMap(result);
}

pulumi.Output<GetAuthorizedCertificateAppengineV1betaResult> getAuthorizedCertificateAppengineV1betaOutput(
  GetAuthorizedCertificateAppengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getAuthorizedCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAuthorizedCertificateAppengineV1betaResult.fromMap);
}

/// Gets the specified domain mapping.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_domain_mapping_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDomainMappingAppengineV1betaResult> getDomainMappingAppengineV1beta(
  GetDomainMappingAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getDomainMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDomainMappingAppengineV1betaResult.fromMap(result);
}

pulumi.Output<GetDomainMappingAppengineV1betaResult> getDomainMappingAppengineV1betaOutput(
  GetDomainMappingAppengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getDomainMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDomainMappingAppengineV1betaResult.fromMap);
}

/// Gets the specified firewall rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_ingress_rule_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIngressRuleAppengineV1betaResult> getIngressRuleAppengineV1beta(
  GetIngressRuleAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getIngressRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIngressRuleAppengineV1betaResult.fromMap(result);
}

pulumi.Output<GetIngressRuleAppengineV1betaResult> getIngressRuleAppengineV1betaOutput(
  GetIngressRuleAppengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getIngressRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIngressRuleAppengineV1betaResult.fromMap);
}

/// Gets the specified Version resource. By default, only a BASIC_VIEW will be returned. Specify the FULL_VIEW parameter to get the full resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_appengine_v1beta_get_version_appengine_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVersionAppengineV1betaResult> getVersionAppengineV1beta(
  GetVersionAppengineV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVersionAppengineV1betaResult.fromMap(result);
}

pulumi.Output<GetVersionAppengineV1betaResult> getVersionAppengineV1betaOutput(
  GetVersionAppengineV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:appengine/v1beta:getVersion',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVersionAppengineV1betaResult.fromMap);
}
