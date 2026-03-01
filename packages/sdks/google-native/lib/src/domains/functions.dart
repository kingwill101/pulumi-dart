import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registration_args.dart';
import 'get_registration_domains_v1alpha2_args.dart';
import 'get_registration_domains_v1alpha2_result.dart';
import 'get_registration_domains_v1beta1_args.dart';
import 'get_registration_domains_v1beta1_result.dart';
import 'get_registration_iam_policy_args.dart';
import 'get_registration_iam_policy_domains_v1alpha2_args.dart';
import 'get_registration_iam_policy_domains_v1alpha2_result.dart';
import 'get_registration_iam_policy_domains_v1beta1_args.dart';
import 'get_registration_iam_policy_domains_v1beta1_result.dart';
import 'get_registration_iam_policy_result.dart';
import 'get_registration_result.dart';

/// Gets the details of a `Registration` resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_domains_v1_get_registration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationResult> getRegistration(
  GetRegistrationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1:getRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_domains_v1_get_registration_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationIamPolicyResult> getRegistrationIamPolicy(
  GetRegistrationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1:getRegistrationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyResult.fromMap(result);
}

/// Gets the details of a `Registration` resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_domains_v1alpha2_get_registration_domains_v1alpha2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationDomainsV1alpha2Result> getRegistrationDomainsV1alpha2(
  GetRegistrationDomainsV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1alpha2:getRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationDomainsV1alpha2Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_domains_v1alpha2_get_registration_iam_policy_domains_v1alpha2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationIamPolicyDomainsV1alpha2Result> getRegistrationIamPolicyDomainsV1alpha2(
  GetRegistrationIamPolicyDomainsV1alpha2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1alpha2:getRegistrationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyDomainsV1alpha2Result.fromMap(result);
}

/// Gets the details of a `Registration` resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_domains_v1beta1_get_registration_domains_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationDomainsV1beta1Result> getRegistrationDomainsV1beta1(
  GetRegistrationDomainsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1beta1:getRegistration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationDomainsV1beta1Result.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_domains_v1beta1_get_registration_iam_policy_domains_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegistrationIamPolicyDomainsV1beta1Result> getRegistrationIamPolicyDomainsV1beta1(
  GetRegistrationIamPolicyDomainsV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:domains/v1beta1:getRegistrationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegistrationIamPolicyDomainsV1beta1Result.fromMap(result);
}
