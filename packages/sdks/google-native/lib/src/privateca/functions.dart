import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ca_pool_args.dart';
import 'get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args.dart';
import 'get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_result.dart';
import 'get_ca_pool_iam_policy_args.dart';
import 'get_ca_pool_iam_policy_result.dart';
import 'get_ca_pool_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_authority_args.dart';
import 'get_certificate_authority_certificate_revocation_list_iam_policy_args.dart';
import 'get_certificate_authority_certificate_revocation_list_iam_policy_result.dart';
import 'get_certificate_authority_iam_policy_args.dart';
import 'get_certificate_authority_iam_policy_result.dart';
import 'get_certificate_authority_result.dart';
import 'get_certificate_result.dart';
import 'get_certificate_template_args.dart';
import 'get_certificate_template_iam_policy_args.dart';
import 'get_certificate_template_iam_policy_result.dart';
import 'get_certificate_template_result.dart';
import 'get_reusable_config_iam_policy_args.dart';
import 'get_reusable_config_iam_policy_result.dart';

/// Returns a CaPool.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_ca_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaPoolResult> getCaPool(
  GetCaPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaPoolResult.fromMap(result);
}

pulumi.Output<GetCaPoolResult> getCaPoolOutput(
  GetCaPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCaPoolResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_ca_pool_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyResult> getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy(
  GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyResult> getCaPoolCertificateAuthorityCertificateRevocationListIamPolicyOutput(
  GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPoolCertificateAuthorityCertificateRevocationListIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCaPoolCertificateAuthorityCertificateRevocationListIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_ca_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCaPoolIamPolicyResult> getCaPoolIamPolicy(
  GetCaPoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCaPoolIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCaPoolIamPolicyResult> getCaPoolIamPolicyOutput(
  GetCaPoolIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCaPoolIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCaPoolIamPolicyResult.fromMap);
}

/// Returns a Certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

pulumi.Output<GetCertificateResult> getCertificateOutput(
  GetCertificateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateResult.fromMap);
}

/// Returns a CertificateAuthority.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_certificate_authority_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateAuthorityResult> getCertificateAuthority(
  GetCertificateAuthorityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateAuthority',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityResult.fromMap(result);
}

pulumi.Output<GetCertificateAuthorityResult> getCertificateAuthorityOutput(
  GetCertificateAuthorityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateAuthority',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateAuthorityResult.fromMap);
}

/// Returns a CertificateTemplate.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_certificate_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateTemplateResult> getCertificateTemplate(
  GetCertificateTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateTemplateResult.fromMap(result);
}

pulumi.Output<GetCertificateTemplateResult> getCertificateTemplateOutput(
  GetCertificateTemplateArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateTemplate',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateTemplateResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1_get_certificate_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateTemplateIamPolicyResult> getCertificateTemplateIamPolicy(
  GetCertificateTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateTemplateIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCertificateTemplateIamPolicyResult> getCertificateTemplateIamPolicyOutput(
  GetCertificateTemplateIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1:getCertificateTemplateIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateTemplateIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1beta1_get_certificate_authority_certificate_revocation_list_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateAuthorityCertificateRevocationListIamPolicyResult> getCertificateAuthorityCertificateRevocationListIamPolicy(
  GetCertificateAuthorityCertificateRevocationListIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getCertificateAuthorityCertificateRevocationListIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityCertificateRevocationListIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCertificateAuthorityCertificateRevocationListIamPolicyResult> getCertificateAuthorityCertificateRevocationListIamPolicyOutput(
  GetCertificateAuthorityCertificateRevocationListIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getCertificateAuthorityCertificateRevocationListIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateAuthorityCertificateRevocationListIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1beta1_get_certificate_authority_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateAuthorityIamPolicyResult> getCertificateAuthorityIamPolicy(
  GetCertificateAuthorityIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getCertificateAuthorityIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateAuthorityIamPolicyResult.fromMap(result);
}

pulumi.Output<GetCertificateAuthorityIamPolicyResult> getCertificateAuthorityIamPolicyOutput(
  GetCertificateAuthorityIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getCertificateAuthorityIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCertificateAuthorityIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_privateca_v1beta1_get_reusable_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReusableConfigIamPolicyResult> getReusableConfigIamPolicy(
  GetReusableConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getReusableConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReusableConfigIamPolicyResult.fromMap(result);
}

pulumi.Output<GetReusableConfigIamPolicyResult> getReusableConfigIamPolicyOutput(
  GetReusableConfigIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:privateca/v1beta1:getReusableConfigIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReusableConfigIamPolicyResult.fromMap);
}
