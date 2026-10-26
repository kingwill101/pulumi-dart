import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_args.dart';
import 'get_change_dns_v1beta2_args.dart';
import 'get_change_dns_v1beta2_result.dart';
import 'get_change_result.dart';
import 'get_managed_zone_args.dart';
import 'get_managed_zone_dns_v1beta2_args.dart';
import 'get_managed_zone_dns_v1beta2_result.dart';
import 'get_managed_zone_iam_policy_args.dart';
import 'get_managed_zone_iam_policy_dns_v1beta2_args.dart';
import 'get_managed_zone_iam_policy_dns_v1beta2_result.dart';
import 'get_managed_zone_iam_policy_result.dart';
import 'get_managed_zone_result.dart';
import 'get_policy_args.dart';
import 'get_policy_dns_v1beta2_args.dart';
import 'get_policy_dns_v1beta2_result.dart';
import 'get_policy_result.dart';
import 'get_resource_record_set_args.dart';
import 'get_resource_record_set_dns_v1beta2_args.dart';
import 'get_resource_record_set_dns_v1beta2_result.dart';
import 'get_resource_record_set_result.dart';
import 'get_response_policy_args.dart';
import 'get_response_policy_dns_v1beta2_args.dart';
import 'get_response_policy_dns_v1beta2_result.dart';
import 'get_response_policy_result.dart';
import 'get_response_policy_rule_args.dart';
import 'get_response_policy_rule_dns_v1beta2_args.dart';
import 'get_response_policy_rule_dns_v1beta2_result.dart';
import 'get_response_policy_rule_result.dart';

/// Fetches the representation of an existing Change.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_change_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChangeResult> getChange(
  GetChangeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getChange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChangeResult.fromMap(result);
}

pulumi.Output<GetChangeResult> getChangeOutput(
  GetChangeArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getChange',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChangeResult.fromMap);
}

/// Fetches the representation of an existing ManagedZone.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_managed_zone_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneResult> getManagedZone(
  GetManagedZoneArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneResult.fromMap(result);
}

pulumi.Output<GetManagedZoneResult> getManagedZoneOutput(
  GetManagedZoneArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedZoneResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_managed_zone_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneIamPolicyResult> getManagedZoneIamPolicy(
  GetManagedZoneIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyResult.fromMap(result);
}

pulumi.Output<GetManagedZoneIamPolicyResult> getManagedZoneIamPolicyOutput(
  GetManagedZoneIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getManagedZoneIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedZoneIamPolicyResult.fromMap);
}

/// Fetches the representation of an existing Policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyResult> getPolicy(
  GetPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyResult.fromMap(result);
}

pulumi.Output<GetPolicyResult> getPolicyOutput(
  GetPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyResult.fromMap);
}

/// Fetches the representation of an existing ResourceRecordSet.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_resource_record_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceRecordSetResult> getResourceRecordSet(
  GetResourceRecordSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getResourceRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceRecordSetResult.fromMap(result);
}

pulumi.Output<GetResourceRecordSetResult> getResourceRecordSetOutput(
  GetResourceRecordSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getResourceRecordSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceRecordSetResult.fromMap);
}

/// Fetches the representation of an existing Response Policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_response_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResponsePolicyResult> getResponsePolicy(
  GetResponsePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getResponsePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyResult.fromMap(result);
}

pulumi.Output<GetResponsePolicyResult> getResponsePolicyOutput(
  GetResponsePolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getResponsePolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResponsePolicyResult.fromMap);
}

/// Fetches the representation of an existing Response Policy Rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1_get_response_policy_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResponsePolicyRuleResult> getResponsePolicyRule(
  GetResponsePolicyRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1:getResponsePolicyRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyRuleResult.fromMap(result);
}

pulumi.Output<GetResponsePolicyRuleResult> getResponsePolicyRuleOutput(
  GetResponsePolicyRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1:getResponsePolicyRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResponsePolicyRuleResult.fromMap);
}

/// Fetches the representation of an existing Change.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_change_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChangeDnsV1beta2Result> getChangeDnsV1beta2(
  GetChangeDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getChange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChangeDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetChangeDnsV1beta2Result> getChangeDnsV1beta2Output(
  GetChangeDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getChange',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetChangeDnsV1beta2Result.fromMap);
}

/// Fetches the representation of an existing ManagedZone.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_managed_zone_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneDnsV1beta2Result> getManagedZoneDnsV1beta2(
  GetManagedZoneDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZone',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetManagedZoneDnsV1beta2Result> getManagedZoneDnsV1beta2Output(
  GetManagedZoneDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZone',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedZoneDnsV1beta2Result.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_managed_zone_iam_policy_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagedZoneIamPolicyDnsV1beta2Result> getManagedZoneIamPolicyDnsV1beta2(
  GetManagedZoneIamPolicyDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZoneIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagedZoneIamPolicyDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetManagedZoneIamPolicyDnsV1beta2Result> getManagedZoneIamPolicyDnsV1beta2Output(
  GetManagedZoneIamPolicyDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getManagedZoneIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagedZoneIamPolicyDnsV1beta2Result.fromMap);
}

/// Fetches the representation of an existing Policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_policy_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPolicyDnsV1beta2Result> getPolicyDnsV1beta2(
  GetPolicyDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPolicyDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetPolicyDnsV1beta2Result> getPolicyDnsV1beta2Output(
  GetPolicyDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPolicyDnsV1beta2Result.fromMap);
}

/// Fetches the representation of an existing ResourceRecordSet.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_resource_record_set_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourceRecordSetDnsV1beta2Result> getResourceRecordSetDnsV1beta2(
  GetResourceRecordSetDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResourceRecordSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourceRecordSetDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetResourceRecordSetDnsV1beta2Result> getResourceRecordSetDnsV1beta2Output(
  GetResourceRecordSetDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResourceRecordSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResourceRecordSetDnsV1beta2Result.fromMap);
}

/// Fetches the representation of an existing Response Policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_response_policy_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResponsePolicyDnsV1beta2Result> getResponsePolicyDnsV1beta2(
  GetResponsePolicyDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResponsePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetResponsePolicyDnsV1beta2Result> getResponsePolicyDnsV1beta2Output(
  GetResponsePolicyDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResponsePolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResponsePolicyDnsV1beta2Result.fromMap);
}

/// Fetches the representation of an existing Response Policy Rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_dns_v1beta2_get_response_policy_rule_dns_v1beta2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResponsePolicyRuleDnsV1beta2Result> getResponsePolicyRuleDnsV1beta2(
  GetResponsePolicyRuleDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResponsePolicyRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResponsePolicyRuleDnsV1beta2Result.fromMap(result);
}

pulumi.Output<GetResponsePolicyRuleDnsV1beta2Result> getResponsePolicyRuleDnsV1beta2Output(
  GetResponsePolicyRuleDnsV1beta2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getResponsePolicyRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetResponsePolicyRuleDnsV1beta2Result.fromMap);
}
