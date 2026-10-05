import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_args.dart';
import 'get_cluster_result.dart';
import 'get_external_access_rule_args.dart';
import 'get_external_access_rule_result.dart';
import 'get_external_address_args.dart';
import 'get_external_address_result.dart';
import 'get_hcx_activation_key_args.dart';
import 'get_hcx_activation_key_result.dart';
import 'get_logging_server_args.dart';
import 'get_logging_server_result.dart';
import 'get_management_dns_zone_binding_args.dart';
import 'get_management_dns_zone_binding_result.dart';
import 'get_network_peering_args.dart';
import 'get_network_peering_result.dart';
import 'get_network_policy_args.dart';
import 'get_network_policy_result.dart';
import 'get_private_cloud_args.dart';
import 'get_private_cloud_cluster_iam_policy_args.dart';
import 'get_private_cloud_cluster_iam_policy_result.dart';
import 'get_private_cloud_hcx_activation_key_iam_policy_args.dart';
import 'get_private_cloud_hcx_activation_key_iam_policy_result.dart';
import 'get_private_cloud_iam_policy_args.dart';
import 'get_private_cloud_iam_policy_result.dart';
import 'get_private_cloud_result.dart';
import 'get_private_connection_args.dart';
import 'get_private_connection_result.dart';
import 'get_vmware_engine_network_args.dart';
import 'get_vmware_engine_network_result.dart';

/// Retrieves a `Cluster` resource by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_cluster_args_doc}
/// [options] Invoke options controlling this call.
Future<GetClusterResult> getCluster(
  GetClusterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getCluster',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetClusterResult.fromMap(result);
}

pulumi.Output<GetClusterResult> getClusterOutput(
  GetClusterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getCluster',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetClusterResult.fromMap);
}

/// Gets details of a single external access rule.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_external_access_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalAccessRuleResult> getExternalAccessRule(
  GetExternalAccessRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAccessRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalAccessRuleResult.fromMap(result);
}

pulumi.Output<GetExternalAccessRuleResult> getExternalAccessRuleOutput(
  GetExternalAccessRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAccessRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExternalAccessRuleResult.fromMap);
}

/// Gets details of a single external IP address.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_external_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalAddressResult> getExternalAddress(
  GetExternalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalAddressResult.fromMap(result);
}

pulumi.Output<GetExternalAddressResult> getExternalAddressOutput(
  GetExternalAddressArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getExternalAddress',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExternalAddressResult.fromMap);
}

/// Retrieves a `HcxActivationKey` resource by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_hcx_activation_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHcxActivationKeyResult> getHcxActivationKey(
  GetHcxActivationKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getHcxActivationKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHcxActivationKeyResult.fromMap(result);
}

pulumi.Output<GetHcxActivationKeyResult> getHcxActivationKeyOutput(
  GetHcxActivationKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getHcxActivationKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHcxActivationKeyResult.fromMap);
}

/// Gets details of a logging server.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_logging_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoggingServerResult> getLoggingServer(
  GetLoggingServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getLoggingServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoggingServerResult.fromMap(result);
}

pulumi.Output<GetLoggingServerResult> getLoggingServerOutput(
  GetLoggingServerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getLoggingServer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoggingServerResult.fromMap);
}

/// Retrieves a 'ManagementDnsZoneBinding' resource by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_management_dns_zone_binding_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementDnsZoneBindingResult> getManagementDnsZoneBinding(
  GetManagementDnsZoneBindingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getManagementDnsZoneBinding',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementDnsZoneBindingResult.fromMap(result);
}

pulumi.Output<GetManagementDnsZoneBindingResult> getManagementDnsZoneBindingOutput(
  GetManagementDnsZoneBindingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getManagementDnsZoneBinding',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementDnsZoneBindingResult.fromMap);
}

/// Retrieves a `NetworkPeering` resource by its resource name. The resource contains details of the network peering, such as peered networks, import and export custom route configurations, and peering state.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_network_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPeeringResult> getNetworkPeering(
  GetNetworkPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPeeringResult.fromMap(result);
}

pulumi.Output<GetNetworkPeeringResult> getNetworkPeeringOutput(
  GetNetworkPeeringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPeering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPeeringResult.fromMap);
}

/// Retrieves a `NetworkPolicy` resource by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_network_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkPolicyResult> getNetworkPolicy(
  GetNetworkPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkPolicyResult.fromMap(result);
}

pulumi.Output<GetNetworkPolicyResult> getNetworkPolicyOutput(
  GetNetworkPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getNetworkPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkPolicyResult.fromMap);
}

/// Retrieves a `PrivateCloud` resource by its resource name.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_private_cloud_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudResult> getPrivateCloud(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloud',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudResult.fromMap(result);
}

pulumi.Output<GetPrivateCloudResult> getPrivateCloudOutput(
  GetPrivateCloudArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloud',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_private_cloud_cluster_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudClusterIamPolicyResult> getPrivateCloudClusterIamPolicy(
  GetPrivateCloudClusterIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudClusterIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudClusterIamPolicyResult.fromMap(result);
}

pulumi.Output<GetPrivateCloudClusterIamPolicyResult> getPrivateCloudClusterIamPolicyOutput(
  GetPrivateCloudClusterIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudClusterIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudClusterIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_private_cloud_hcx_activation_key_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudHcxActivationKeyIamPolicyResult> getPrivateCloudHcxActivationKeyIamPolicy(
  GetPrivateCloudHcxActivationKeyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudHcxActivationKeyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudHcxActivationKeyIamPolicyResult.fromMap(result);
}

pulumi.Output<GetPrivateCloudHcxActivationKeyIamPolicyResult> getPrivateCloudHcxActivationKeyIamPolicyOutput(
  GetPrivateCloudHcxActivationKeyIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudHcxActivationKeyIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudHcxActivationKeyIamPolicyResult.fromMap);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_private_cloud_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateCloudIamPolicyResult> getPrivateCloudIamPolicy(
  GetPrivateCloudIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateCloudIamPolicyResult.fromMap(result);
}

pulumi.Output<GetPrivateCloudIamPolicyResult> getPrivateCloudIamPolicyOutput(
  GetPrivateCloudIamPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateCloudIamPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateCloudIamPolicyResult.fromMap);
}

/// Retrieves a `PrivateConnection` resource by its resource name. The resource contains details of the private connection, such as connected network, routing mode and state.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_private_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateConnectionResult> getPrivateConnection(
  GetPrivateConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateConnectionResult> getPrivateConnectionOutput(
  GetPrivateConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getPrivateConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateConnectionResult.fromMap);
}

/// Retrieves a `VmwareEngineNetwork` resource by its resource name. The resource contains details of the VMware Engine network, such as its VMware Engine network type, peered networks in a service project, and state (for example, `CREATING`, `ACTIVE`, `DELETING`).
/// [args] Arguments passed to this invoke. {@macro pulumi_vmwareengine_v1_get_vmware_engine_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareEngineNetworkResult> getVmwareEngineNetwork(
  GetVmwareEngineNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getVmwareEngineNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareEngineNetworkResult.fromMap(result);
}

pulumi.Output<GetVmwareEngineNetworkResult> getVmwareEngineNetworkOutput(
  GetVmwareEngineNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmwareengine/v1:getVmwareEngineNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareEngineNetworkResult.fromMap);
}
