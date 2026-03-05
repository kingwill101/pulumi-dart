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
