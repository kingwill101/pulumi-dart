import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_device_args.dart';
import 'get_device_cloudidentity_v1beta1_args.dart';
import 'get_device_cloudidentity_v1beta1_result.dart';
import 'get_device_result.dart';
import 'get_group_args.dart';
import 'get_group_cloudidentity_v1beta1_args.dart';
import 'get_group_cloudidentity_v1beta1_result.dart';
import 'get_group_result.dart';
import 'get_inbound_saml_sso_profile_args.dart';
import 'get_inbound_saml_sso_profile_cloudidentity_v1beta1_args.dart';
import 'get_inbound_saml_sso_profile_cloudidentity_v1beta1_result.dart';
import 'get_inbound_saml_sso_profile_result.dart';
import 'get_inbound_sso_assignment_args.dart';
import 'get_inbound_sso_assignment_cloudidentity_v1beta1_args.dart';
import 'get_inbound_sso_assignment_cloudidentity_v1beta1_result.dart';
import 'get_inbound_sso_assignment_result.dart';
import 'get_membership_args.dart';
import 'get_membership_cloudidentity_v1beta1_args.dart';
import 'get_membership_cloudidentity_v1beta1_result.dart';
import 'get_membership_result.dart';

/// Retrieves the specified device.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1_get_device_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceResult> getDevice(
  GetDeviceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceResult.fromMap(result);
}

pulumi.Output<GetDeviceResult> getDeviceOutput(
  GetDeviceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceResult.fromMap);
}

/// Retrieves a `Group`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Gets an InboundSamlSsoProfile.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1_get_inbound_saml_sso_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundSamlSsoProfileResult> getInboundSamlSsoProfile(
  GetInboundSamlSsoProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getInboundSamlSsoProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlSsoProfileResult.fromMap(result);
}

pulumi.Output<GetInboundSamlSsoProfileResult> getInboundSamlSsoProfileOutput(
  GetInboundSamlSsoProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getInboundSamlSsoProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundSamlSsoProfileResult.fromMap);
}

/// Gets an InboundSsoAssignment.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1_get_inbound_sso_assignment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundSsoAssignmentResult> getInboundSsoAssignment(
  GetInboundSsoAssignmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getInboundSsoAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSsoAssignmentResult.fromMap(result);
}

pulumi.Output<GetInboundSsoAssignmentResult> getInboundSsoAssignmentOutput(
  GetInboundSsoAssignmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getInboundSsoAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundSsoAssignmentResult.fromMap);
}

/// Retrieves a `Membership`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1_get_membership_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipResult> getMembership(
  GetMembershipArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipResult.fromMap(result);
}

pulumi.Output<GetMembershipResult> getMembershipOutput(
  GetMembershipArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1:getMembership',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMembershipResult.fromMap);
}

/// Retrieves the specified device.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1beta1_get_device_cloudidentity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeviceCloudidentityV1beta1Result> getDeviceCloudidentityV1beta1(
  GetDeviceCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getDevice',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeviceCloudidentityV1beta1Result.fromMap(result);
}

pulumi.Output<GetDeviceCloudidentityV1beta1Result> getDeviceCloudidentityV1beta1Output(
  GetDeviceCloudidentityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getDevice',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDeviceCloudidentityV1beta1Result.fromMap);
}

/// Retrieves a `Group`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1beta1_get_group_cloudidentity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupCloudidentityV1beta1Result> getGroupCloudidentityV1beta1(
  GetGroupCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupCloudidentityV1beta1Result.fromMap(result);
}

pulumi.Output<GetGroupCloudidentityV1beta1Result> getGroupCloudidentityV1beta1Output(
  GetGroupCloudidentityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupCloudidentityV1beta1Result.fromMap);
}

/// Gets an InboundSamlSsoProfile.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1beta1_get_inbound_saml_sso_profile_cloudidentity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundSamlSsoProfileCloudidentityV1beta1Result> getInboundSamlSsoProfileCloudidentityV1beta1(
  GetInboundSamlSsoProfileCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSamlSsoProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSamlSsoProfileCloudidentityV1beta1Result.fromMap(result);
}

pulumi.Output<GetInboundSamlSsoProfileCloudidentityV1beta1Result> getInboundSamlSsoProfileCloudidentityV1beta1Output(
  GetInboundSamlSsoProfileCloudidentityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSamlSsoProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundSamlSsoProfileCloudidentityV1beta1Result.fromMap);
}

/// Gets an InboundSsoAssignment.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1beta1_get_inbound_sso_assignment_cloudidentity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundSsoAssignmentCloudidentityV1beta1Result> getInboundSsoAssignmentCloudidentityV1beta1(
  GetInboundSsoAssignmentCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSsoAssignment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundSsoAssignmentCloudidentityV1beta1Result.fromMap(result);
}

pulumi.Output<GetInboundSsoAssignmentCloudidentityV1beta1Result> getInboundSsoAssignmentCloudidentityV1beta1Output(
  GetInboundSsoAssignmentCloudidentityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getInboundSsoAssignment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundSsoAssignmentCloudidentityV1beta1Result.fromMap);
}

/// Retrieves a `Membership`.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudidentity_v1beta1_get_membership_cloudidentity_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMembershipCloudidentityV1beta1Result> getMembershipCloudidentityV1beta1(
  GetMembershipCloudidentityV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getMembership',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMembershipCloudidentityV1beta1Result.fromMap(result);
}

pulumi.Output<GetMembershipCloudidentityV1beta1Result> getMembershipCloudidentityV1beta1Output(
  GetMembershipCloudidentityV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:cloudidentity/v1beta1:getMembership',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMembershipCloudidentityV1beta1Result.fromMap);
}
