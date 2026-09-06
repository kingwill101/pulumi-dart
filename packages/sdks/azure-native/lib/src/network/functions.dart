import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_active_sessions_args.dart';
import 'get_active_sessions_result.dart';
import 'get_admin_rule_args.dart';
import 'get_admin_rule_collection_args.dart';
import 'get_admin_rule_collection_result.dart';
import 'get_admin_rule_result.dart';
import 'get_application_gateway_args.dart';
import 'get_application_gateway_backend_health_on_demand_args.dart';
import 'get_application_gateway_backend_health_on_demand_result.dart';
import 'get_application_gateway_private_endpoint_connection_args.dart';
import 'get_application_gateway_private_endpoint_connection_result.dart';
import 'get_application_gateway_result.dart';
import 'get_application_security_group_args.dart';
import 'get_application_security_group_result.dart';
import 'get_azure_firewall_args.dart';
import 'get_azure_firewall_result.dart';
import 'get_bastion_host_args.dart';
import 'get_bastion_host_result.dart';
import 'get_bastion_shareable_link_args.dart';
import 'get_bastion_shareable_link_result.dart';
import 'get_commit_args.dart';
import 'get_commit_result.dart';
import 'get_configuration_policy_group_args.dart';
import 'get_configuration_policy_group_result.dart';
import 'get_connection_monitor_args.dart';
import 'get_connection_monitor_result.dart';
import 'get_connection_policy_args.dart';
import 'get_connection_policy_result.dart';
import 'get_connectivity_configuration_args.dart';
import 'get_connectivity_configuration_result.dart';
import 'get_custom_ipprefix_args.dart';
import 'get_custom_ipprefix_result.dart';
import 'get_ddos_custom_policy_args.dart';
import 'get_ddos_custom_policy_result.dart';
import 'get_ddos_protection_plan_args.dart';
import 'get_ddos_protection_plan_result.dart';
import 'get_default_admin_rule_args.dart';
import 'get_default_admin_rule_result.dart';
import 'get_default_user_rule_args.dart';
import 'get_default_user_rule_result.dart';
import 'get_dscp_configuration_args.dart';
import 'get_dscp_configuration_result.dart';
import 'get_express_route_circuit_args.dart';
import 'get_express_route_circuit_authorization_args.dart';
import 'get_express_route_circuit_authorization_result.dart';
import 'get_express_route_circuit_connection_args.dart';
import 'get_express_route_circuit_connection_result.dart';
import 'get_express_route_circuit_peering_args.dart';
import 'get_express_route_circuit_peering_result.dart';
import 'get_express_route_circuit_result.dart';
import 'get_express_route_connection_args.dart';
import 'get_express_route_connection_result.dart';
import 'get_express_route_cross_connection_peering_args.dart';
import 'get_express_route_cross_connection_peering_result.dart';
import 'get_express_route_gateway_args.dart';
import 'get_express_route_gateway_resiliency_information_args.dart';
import 'get_express_route_gateway_resiliency_information_result.dart';
import 'get_express_route_gateway_result.dart';
import 'get_express_route_gateway_routes_information_args.dart';
import 'get_express_route_gateway_routes_information_result.dart';
import 'get_express_route_port_args.dart';
import 'get_express_route_port_authorization_args.dart';
import 'get_express_route_port_authorization_result.dart';
import 'get_express_route_port_result.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_draft_args.dart';
import 'get_firewall_policy_draft_result.dart';
import 'get_firewall_policy_result.dart';
import 'get_firewall_policy_rule_collection_group_args.dart';
import 'get_firewall_policy_rule_collection_group_draft_args.dart';
import 'get_firewall_policy_rule_collection_group_draft_result.dart';
import 'get_firewall_policy_rule_collection_group_result.dart';
import 'get_firewall_policy_rule_group_args.dart';
import 'get_firewall_policy_rule_group_result.dart';
import 'get_flow_log_args.dart';
import 'get_flow_log_result.dart';
import 'get_hub_route_table_args.dart';
import 'get_hub_route_table_result.dart';
import 'get_hub_virtual_network_connection_args.dart';
import 'get_hub_virtual_network_connection_result.dart';
import 'get_inbound_nat_rule_args.dart';
import 'get_inbound_nat_rule_result.dart';
import 'get_interconnect_group_args.dart';
import 'get_interconnect_group_result.dart';
import 'get_interface_endpoint_args.dart';
import 'get_interface_endpoint_result.dart';
import 'get_ip_allocation_args.dart';
import 'get_ip_allocation_result.dart';
import 'get_ip_group_args.dart';
import 'get_ip_group_result.dart';
import 'get_ipam_pool_args.dart';
import 'get_ipam_pool_result.dart';
import 'get_ipam_pool_usage_args.dart';
import 'get_ipam_pool_usage_result.dart';
import 'get_load_balancer_args.dart';
import 'get_load_balancer_backend_address_pool_args.dart';
import 'get_load_balancer_backend_address_pool_result.dart';
import 'get_load_balancer_result.dart';
import 'get_local_network_gateway_args.dart';
import 'get_local_network_gateway_result.dart';
import 'get_management_group_network_manager_connection_args.dart';
import 'get_management_group_network_manager_connection_result.dart';
import 'get_nat_gateway_args.dart';
import 'get_nat_gateway_result.dart';
import 'get_nat_rule_args.dart';
import 'get_nat_rule_result.dart';
import 'get_network_group_args.dart';
import 'get_network_group_result.dart';
import 'get_network_interface_args.dart';
import 'get_network_interface_result.dart';
import 'get_network_interface_tap_configuration_args.dart';
import 'get_network_interface_tap_configuration_result.dart';
import 'get_network_manager_args.dart';
import 'get_network_manager_result.dart';
import 'get_network_manager_routing_configuration_args.dart';
import 'get_network_manager_routing_configuration_result.dart';
import 'get_network_profile_args.dart';
import 'get_network_profile_result.dart';
import 'get_network_security_group_args.dart';
import 'get_network_security_group_result.dart';
import 'get_network_security_perimeter_access_rule_args.dart';
import 'get_network_security_perimeter_access_rule_result.dart';
import 'get_network_security_perimeter_args.dart';
import 'get_network_security_perimeter_association_args.dart';
import 'get_network_security_perimeter_association_result.dart';
import 'get_network_security_perimeter_link_args.dart';
import 'get_network_security_perimeter_link_result.dart';
import 'get_network_security_perimeter_logging_configuration_args.dart';
import 'get_network_security_perimeter_logging_configuration_result.dart';
import 'get_network_security_perimeter_profile_args.dart';
import 'get_network_security_perimeter_profile_result.dart';
import 'get_network_security_perimeter_result.dart';
import 'get_network_virtual_appliance_args.dart';
import 'get_network_virtual_appliance_boot_diagnostic_logs_args.dart';
import 'get_network_virtual_appliance_boot_diagnostic_logs_result.dart';
import 'get_network_virtual_appliance_connection_args.dart';
import 'get_network_virtual_appliance_connection_result.dart';
import 'get_network_virtual_appliance_result.dart';
import 'get_network_watcher_args.dart';
import 'get_network_watcher_result.dart';
import 'get_nsp_access_rule_args.dart';
import 'get_nsp_access_rule_result.dart';
import 'get_nsp_association_args.dart';
import 'get_nsp_association_result.dart';
import 'get_nsp_link_args.dart';
import 'get_nsp_link_result.dart';
import 'get_nsp_profile_args.dart';
import 'get_nsp_profile_result.dart';
import 'get_p2s_vpn_gateway_args.dart';
import 'get_p2s_vpn_gateway_p2s_vpn_connection_health_args.dart';
import 'get_p2s_vpn_gateway_p2s_vpn_connection_health_detailed_args.dart';
import 'get_p2s_vpn_gateway_p2s_vpn_connection_health_detailed_result.dart';
import 'get_p2s_vpn_gateway_p2s_vpn_connection_health_result.dart';
import 'get_p2s_vpn_gateway_result.dart';
import 'get_p2s_vpn_server_configuration_args.dart';
import 'get_p2s_vpn_server_configuration_result.dart';
import 'get_packet_capture_args.dart';
import 'get_packet_capture_result.dart';
import 'get_private_dns_zone_group_args.dart';
import 'get_private_dns_zone_group_result.dart';
import 'get_private_endpoint_args.dart';
import 'get_private_endpoint_result.dart';
import 'get_private_link_service_args.dart';
import 'get_private_link_service_private_endpoint_connection_args.dart';
import 'get_private_link_service_private_endpoint_connection_result.dart';
import 'get_private_link_service_result.dart';
import 'get_public_ipaddress_args.dart';
import 'get_public_ipaddress_result.dart';
import 'get_public_ipprefix_args.dart';
import 'get_public_ipprefix_result.dart';
import 'get_reachability_analysis_intent_args.dart';
import 'get_reachability_analysis_intent_result.dart';
import 'get_reachability_analysis_run_args.dart';
import 'get_reachability_analysis_run_result.dart';
import 'get_route_args.dart';
import 'get_route_filter_args.dart';
import 'get_route_filter_result.dart';
import 'get_route_filter_rule_args.dart';
import 'get_route_filter_rule_result.dart';
import 'get_route_map_args.dart';
import 'get_route_map_result.dart';
import 'get_route_result.dart';
import 'get_route_table_args.dart';
import 'get_route_table_result.dart';
import 'get_routing_configuration_args.dart';
import 'get_routing_configuration_result.dart';
import 'get_routing_intent_args.dart';
import 'get_routing_intent_result.dart';
import 'get_routing_rule_args.dart';
import 'get_routing_rule_collection_args.dart';
import 'get_routing_rule_collection_result.dart';
import 'get_routing_rule_result.dart';
import 'get_scope_connection_args.dart';
import 'get_scope_connection_result.dart';
import 'get_security_admin_configuration_args.dart';
import 'get_security_admin_configuration_result.dart';
import 'get_security_partner_provider_args.dart';
import 'get_security_partner_provider_result.dart';
import 'get_security_rule_args.dart';
import 'get_security_rule_result.dart';
import 'get_security_user_configuration_args.dart';
import 'get_security_user_configuration_result.dart';
import 'get_security_user_rule_args.dart';
import 'get_security_user_rule_collection_args.dart';
import 'get_security_user_rule_collection_result.dart';
import 'get_security_user_rule_result.dart';
import 'get_service_endpoint_policy_args.dart';
import 'get_service_endpoint_policy_definition_args.dart';
import 'get_service_endpoint_policy_definition_result.dart';
import 'get_service_endpoint_policy_result.dart';
import 'get_service_gateway_args.dart';
import 'get_service_gateway_result.dart';
import 'get_static_cidr_args.dart';
import 'get_static_cidr_result.dart';
import 'get_static_member_args.dart';
import 'get_static_member_result.dart';
import 'get_subnet_args.dart';
import 'get_subnet_result.dart';
import 'get_subscription_network_manager_connection_args.dart';
import 'get_subscription_network_manager_connection_result.dart';
import 'get_user_rule_args.dart';
import 'get_user_rule_collection_args.dart';
import 'get_user_rule_collection_result.dart';
import 'get_user_rule_result.dart';
import 'get_verifier_workspace_args.dart';
import 'get_verifier_workspace_result.dart';
import 'get_virtual_appliance_site_args.dart';
import 'get_virtual_appliance_site_result.dart';
import 'get_virtual_hub_args.dart';
import 'get_virtual_hub_bgp_connection_args.dart';
import 'get_virtual_hub_bgp_connection_result.dart';
import 'get_virtual_hub_ip_configuration_args.dart';
import 'get_virtual_hub_ip_configuration_result.dart';
import 'get_virtual_hub_result.dart';
import 'get_virtual_hub_route_table_v2_args.dart';
import 'get_virtual_hub_route_table_v2_result.dart';
import 'get_virtual_network_appliance_args.dart';
import 'get_virtual_network_appliance_result.dart';
import 'get_virtual_network_args.dart';
import 'get_virtual_network_gateway_advertised_routes_args.dart';
import 'get_virtual_network_gateway_advertised_routes_result.dart';
import 'get_virtual_network_gateway_args.dart';
import 'get_virtual_network_gateway_bgp_peer_status_args.dart';
import 'get_virtual_network_gateway_bgp_peer_status_result.dart';
import 'get_virtual_network_gateway_connection_args.dart';
import 'get_virtual_network_gateway_connection_ike_sas_args.dart';
import 'get_virtual_network_gateway_connection_ike_sas_result.dart';
import 'get_virtual_network_gateway_connection_result.dart';
import 'get_virtual_network_gateway_learned_routes_args.dart';
import 'get_virtual_network_gateway_learned_routes_result.dart';
import 'get_virtual_network_gateway_nat_rule_args.dart';
import 'get_virtual_network_gateway_nat_rule_result.dart';
import 'get_virtual_network_gateway_resiliency_information_args.dart';
import 'get_virtual_network_gateway_resiliency_information_result.dart';
import 'get_virtual_network_gateway_result.dart';
import 'get_virtual_network_gateway_routes_information_args.dart';
import 'get_virtual_network_gateway_routes_information_result.dart';
import 'get_virtual_network_gateway_vpn_profile_package_url_args.dart';
import 'get_virtual_network_gateway_vpn_profile_package_url_result.dart';
import 'get_virtual_network_gateway_vpnclient_connection_health_args.dart';
import 'get_virtual_network_gateway_vpnclient_connection_health_result.dart';
import 'get_virtual_network_gateway_vpnclient_ipsec_parameters_args.dart';
import 'get_virtual_network_gateway_vpnclient_ipsec_parameters_result.dart';
import 'get_virtual_network_peering_args.dart';
import 'get_virtual_network_peering_result.dart';
import 'get_virtual_network_result.dart';
import 'get_virtual_network_tap_args.dart';
import 'get_virtual_network_tap_result.dart';
import 'get_virtual_router_args.dart';
import 'get_virtual_router_peering_args.dart';
import 'get_virtual_router_peering_result.dart';
import 'get_virtual_router_result.dart';
import 'get_virtual_wan_args.dart';
import 'get_virtual_wan_result.dart';
import 'get_vpn_connection_args.dart';
import 'get_vpn_connection_result.dart';
import 'get_vpn_gateway_args.dart';
import 'get_vpn_gateway_result.dart';
import 'get_vpn_link_connection_ike_sas_args.dart';
import 'get_vpn_link_connection_ike_sas_result.dart';
import 'get_vpn_server_configuration_args.dart';
import 'get_vpn_server_configuration_result.dart';
import 'get_vpn_site_args.dart';
import 'get_vpn_site_result.dart';
import 'get_web_application_firewall_policy_args.dart';
import 'get_web_application_firewall_policy_result.dart';
import 'list_active_connectivity_configuration_args.dart';
import 'list_active_connectivity_configuration_result.dart';
import 'list_active_connectivity_configurations_args.dart';
import 'list_active_connectivity_configurations_result.dart';
import 'list_active_security_admin_rule_args.dart';
import 'list_active_security_admin_rule_result.dart';
import 'list_active_security_admin_rules_args.dart';
import 'list_active_security_admin_rules_result.dart';
import 'list_active_security_user_rule_args.dart';
import 'list_active_security_user_rule_result.dart';
import 'list_active_security_user_rules_args.dart';
import 'list_active_security_user_rules_result.dart';
import 'list_effective_connectivity_configuration_args.dart';
import 'list_effective_connectivity_configuration_result.dart';
import 'list_effective_virtual_network_by_network_group_args.dart';
import 'list_effective_virtual_network_by_network_group_result.dart';
import 'list_effective_virtual_network_by_network_manager_args.dart';
import 'list_effective_virtual_network_by_network_manager_result.dart';
import 'list_firewall_policy_idps_signature_args.dart';
import 'list_firewall_policy_idps_signature_result.dart';
import 'list_firewall_policy_idps_signatures_filter_value_args.dart';
import 'list_firewall_policy_idps_signatures_filter_value_result.dart';
import 'list_ipam_pool_associated_resources_args.dart';
import 'list_ipam_pool_associated_resources_result.dart';
import 'list_list_effective_virtual_network_by_network_group_args.dart';
import 'list_list_effective_virtual_network_by_network_group_result.dart';
import 'list_network_manager_deployment_status_args.dart';
import 'list_network_manager_deployment_status_result.dart';
import 'list_network_manager_effective_connectivity_configurations_args.dart';
import 'list_network_manager_effective_connectivity_configurations_result.dart';
import 'list_network_manager_effective_security_admin_rule_args.dart';
import 'list_network_manager_effective_security_admin_rule_result.dart';
import 'list_network_manager_effective_security_admin_rules_args.dart';
import 'list_network_manager_effective_security_admin_rules_result.dart';
import 'list_virtual_network_gateway_radius_secrets_args.dart';
import 'list_virtual_network_gateway_radius_secrets_result.dart';
import 'list_vpn_link_connection_default_shared_key_args.dart';
import 'list_vpn_link_connection_default_shared_key_result.dart';
import 'list_vpn_server_configuration_radius_secrets_args.dart';
import 'list_vpn_server_configuration_radius_secrets_result.dart';

/// Returns the list of currently active sessions on the Bastion.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_active_sessions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActiveSessionsResult> getActiveSessions(
  GetActiveSessionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getActiveSessions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveSessionsResult.fromMap(result);
}

pulumi.Output<GetActiveSessionsResult> getActiveSessionsOutput(
  GetActiveSessionsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getActiveSessions',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetActiveSessionsResult.fromMap);
}

/// Gets a network manager security configuration admin rule.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_admin_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdminRuleResult> getAdminRule(
  GetAdminRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getAdminRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdminRuleResult.fromMap(result);
}

pulumi.Output<GetAdminRuleResult> getAdminRuleOutput(
  GetAdminRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getAdminRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdminRuleResult.fromMap);
}

/// Gets a network manager security admin configuration rule collection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_admin_rule_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAdminRuleCollectionResult> getAdminRuleCollection(
  GetAdminRuleCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getAdminRuleCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAdminRuleCollectionResult.fromMap(result);
}

pulumi.Output<GetAdminRuleCollectionResult> getAdminRuleCollectionOutput(
  GetAdminRuleCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getAdminRuleCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAdminRuleCollectionResult.fromMap);
}

/// Gets the specified application gateway.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_application_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGatewayResult> getApplicationGateway(
  GetApplicationGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getApplicationGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGatewayResult.fromMap(result);
}

pulumi.Output<GetApplicationGatewayResult> getApplicationGatewayOutput(
  GetApplicationGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getApplicationGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationGatewayResult.fromMap);
}

/// Gets the backend health for given combination of backend pool and http setting of the specified application gateway in a resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_application_gateway_backend_health_on_demand_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGatewayBackendHealthOnDemandResult> getApplicationGatewayBackendHealthOnDemand(
  GetApplicationGatewayBackendHealthOnDemandArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getApplicationGatewayBackendHealthOnDemand',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGatewayBackendHealthOnDemandResult.fromMap(result);
}

pulumi.Output<GetApplicationGatewayBackendHealthOnDemandResult> getApplicationGatewayBackendHealthOnDemandOutput(
  GetApplicationGatewayBackendHealthOnDemandArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getApplicationGatewayBackendHealthOnDemand',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationGatewayBackendHealthOnDemandResult.fromMap);
}

/// Gets the specified private endpoint connection on application gateway.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_application_gateway_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationGatewayPrivateEndpointConnectionResult> getApplicationGatewayPrivateEndpointConnection(
  GetApplicationGatewayPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getApplicationGatewayPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationGatewayPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetApplicationGatewayPrivateEndpointConnectionResult> getApplicationGatewayPrivateEndpointConnectionOutput(
  GetApplicationGatewayPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getApplicationGatewayPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationGatewayPrivateEndpointConnectionResult.fromMap);
}

/// Gets information about the specified application security group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_application_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApplicationSecurityGroupResult> getApplicationSecurityGroup(
  GetApplicationSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getApplicationSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApplicationSecurityGroupResult.fromMap(result);
}

pulumi.Output<GetApplicationSecurityGroupResult> getApplicationSecurityGroupOutput(
  GetApplicationSecurityGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getApplicationSecurityGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetApplicationSecurityGroupResult.fromMap);
}

/// Gets the specified Azure Firewall.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_azure_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAzureFirewallResult> getAzureFirewall(
  GetAzureFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getAzureFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAzureFirewallResult.fromMap(result);
}

pulumi.Output<GetAzureFirewallResult> getAzureFirewallOutput(
  GetAzureFirewallArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getAzureFirewall',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAzureFirewallResult.fromMap);
}

/// Gets the specified Bastion Host.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_bastion_host_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBastionHostResult> getBastionHost(
  GetBastionHostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getBastionHost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBastionHostResult.fromMap(result);
}

pulumi.Output<GetBastionHostResult> getBastionHostOutput(
  GetBastionHostArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getBastionHost',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBastionHostResult.fromMap);
}

/// Return the Bastion Shareable Links for all the VMs specified in the request.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_bastion_shareable_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBastionShareableLinkResult> getBastionShareableLink(
  GetBastionShareableLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getBastionShareableLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBastionShareableLinkResult.fromMap(result);
}

pulumi.Output<GetBastionShareableLinkResult> getBastionShareableLinkOutput(
  GetBastionShareableLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getBastionShareableLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBastionShareableLinkResult.fromMap);
}

/// Gets the specified commit.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_commit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommitResult> getCommit(
  GetCommitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getCommit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommitResult.fromMap(result);
}

pulumi.Output<GetCommitResult> getCommitOutput(
  GetCommitArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getCommit',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCommitResult.fromMap);
}

/// Retrieves the details of a ConfigurationPolicyGroup.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_configuration_policy_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConfigurationPolicyGroupResult> getConfigurationPolicyGroup(
  GetConfigurationPolicyGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getConfigurationPolicyGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConfigurationPolicyGroupResult.fromMap(result);
}

pulumi.Output<GetConfigurationPolicyGroupResult> getConfigurationPolicyGroupOutput(
  GetConfigurationPolicyGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getConfigurationPolicyGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConfigurationPolicyGroupResult.fromMap);
}

/// Gets a connection monitor by name.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_connection_monitor_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionMonitorResult> getConnectionMonitor(
  GetConnectionMonitorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getConnectionMonitor',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionMonitorResult.fromMap(result);
}

pulumi.Output<GetConnectionMonitorResult> getConnectionMonitorOutput(
  GetConnectionMonitorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getConnectionMonitor',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionMonitorResult.fromMap);
}

/// Retrieves the details of a ConnectionPolicy.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_connection_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionPolicyResult> getConnectionPolicy(
  GetConnectionPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getConnectionPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionPolicyResult.fromMap(result);
}

pulumi.Output<GetConnectionPolicyResult> getConnectionPolicyOutput(
  GetConnectionPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getConnectionPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectionPolicyResult.fromMap);
}

/// Gets a Network Connectivity Configuration, specified by the resource group, network manager name, and connectivity Configuration name
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_connectivity_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectivityConfigurationResult> getConnectivityConfiguration(
  GetConnectivityConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getConnectivityConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectivityConfigurationResult.fromMap(result);
}

pulumi.Output<GetConnectivityConfigurationResult> getConnectivityConfigurationOutput(
  GetConnectivityConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getConnectivityConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetConnectivityConfigurationResult.fromMap);
}

/// Gets the specified custom IP prefix in a specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_custom_ipprefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCustomIPPrefixResult> getCustomIPPrefix(
  GetCustomIPPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getCustomIPPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCustomIPPrefixResult.fromMap(result);
}

pulumi.Output<GetCustomIPPrefixResult> getCustomIPPrefixOutput(
  GetCustomIPPrefixArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getCustomIPPrefix',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCustomIPPrefixResult.fromMap);
}

/// Gets information about the specified DDoS custom policy.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ddos_custom_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosCustomPolicyResult> getDdosCustomPolicy(
  GetDdosCustomPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getDdosCustomPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosCustomPolicyResult.fromMap(result);
}

pulumi.Output<GetDdosCustomPolicyResult> getDdosCustomPolicyOutput(
  GetDdosCustomPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getDdosCustomPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDdosCustomPolicyResult.fromMap);
}

/// Gets information about the specified DDoS protection plan.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ddos_protection_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDdosProtectionPlanResult> getDdosProtectionPlan(
  GetDdosProtectionPlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getDdosProtectionPlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDdosProtectionPlanResult.fromMap(result);
}

pulumi.Output<GetDdosProtectionPlanResult> getDdosProtectionPlanOutput(
  GetDdosProtectionPlanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getDdosProtectionPlan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDdosProtectionPlanResult.fromMap);
}

/// Gets a network manager security configuration admin rule.
///
/// Uses Azure REST API version 2024-05-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_default_admin_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultAdminRuleResult> getDefaultAdminRule(
  GetDefaultAdminRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getDefaultAdminRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultAdminRuleResult.fromMap(result);
}

pulumi.Output<GetDefaultAdminRuleResult> getDefaultAdminRuleOutput(
  GetDefaultAdminRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getDefaultAdminRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultAdminRuleResult.fromMap);
}

/// Gets a user rule.
///
/// Uses Azure REST API version 2022-04-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_default_user_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDefaultUserRuleResult> getDefaultUserRule(
  GetDefaultUserRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getDefaultUserRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDefaultUserRuleResult.fromMap(result);
}

pulumi.Output<GetDefaultUserRuleResult> getDefaultUserRuleOutput(
  GetDefaultUserRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getDefaultUserRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDefaultUserRuleResult.fromMap);
}

/// Gets a DSCP Configuration.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_dscp_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDscpConfigurationResult> getDscpConfiguration(
  GetDscpConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getDscpConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDscpConfigurationResult.fromMap(result);
}

pulumi.Output<GetDscpConfigurationResult> getDscpConfigurationOutput(
  GetDscpConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getDscpConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDscpConfigurationResult.fromMap);
}

/// Gets information about the specified express route circuit.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_circuit_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteCircuitResult> getExpressRouteCircuit(
  GetExpressRouteCircuitArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuit',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteCircuitResult.fromMap(result);
}

pulumi.Output<GetExpressRouteCircuitResult> getExpressRouteCircuitOutput(
  GetExpressRouteCircuitArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuit',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteCircuitResult.fromMap);
}

/// Gets the specified authorization from the specified express route circuit.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_circuit_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteCircuitAuthorizationResult> getExpressRouteCircuitAuthorization(
  GetExpressRouteCircuitAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuitAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteCircuitAuthorizationResult.fromMap(result);
}

pulumi.Output<GetExpressRouteCircuitAuthorizationResult> getExpressRouteCircuitAuthorizationOutput(
  GetExpressRouteCircuitAuthorizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuitAuthorization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteCircuitAuthorizationResult.fromMap);
}

/// Gets the specified Express Route Circuit Connection from the specified express route circuit.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_circuit_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteCircuitConnectionResult> getExpressRouteCircuitConnection(
  GetExpressRouteCircuitConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuitConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteCircuitConnectionResult.fromMap(result);
}

pulumi.Output<GetExpressRouteCircuitConnectionResult> getExpressRouteCircuitConnectionOutput(
  GetExpressRouteCircuitConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuitConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteCircuitConnectionResult.fromMap);
}

/// Gets the specified peering for the express route circuit.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_circuit_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteCircuitPeeringResult> getExpressRouteCircuitPeering(
  GetExpressRouteCircuitPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuitPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteCircuitPeeringResult.fromMap(result);
}

pulumi.Output<GetExpressRouteCircuitPeeringResult> getExpressRouteCircuitPeeringOutput(
  GetExpressRouteCircuitPeeringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCircuitPeering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteCircuitPeeringResult.fromMap);
}

/// Gets the specified ExpressRouteConnection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteConnectionResult> getExpressRouteConnection(
  GetExpressRouteConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteConnectionResult.fromMap(result);
}

pulumi.Output<GetExpressRouteConnectionResult> getExpressRouteConnectionOutput(
  GetExpressRouteConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteConnectionResult.fromMap);
}

/// Gets the specified peering for the ExpressRouteCrossConnection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_cross_connection_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteCrossConnectionPeeringResult> getExpressRouteCrossConnectionPeering(
  GetExpressRouteCrossConnectionPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCrossConnectionPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteCrossConnectionPeeringResult.fromMap(result);
}

pulumi.Output<GetExpressRouteCrossConnectionPeeringResult> getExpressRouteCrossConnectionPeeringOutput(
  GetExpressRouteCrossConnectionPeeringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteCrossConnectionPeering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteCrossConnectionPeeringResult.fromMap);
}

/// Fetches the details of a ExpressRoute gateway in a resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteGatewayResult> getExpressRouteGateway(
  GetExpressRouteGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteGatewayResult.fromMap(result);
}

pulumi.Output<GetExpressRouteGatewayResult> getExpressRouteGatewayOutput(
  GetExpressRouteGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteGatewayResult.fromMap);
}

/// Retrieves the resiliency information for the ExpressRoute gateway.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_gateway_resiliency_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteGatewayResiliencyInformationResult> getExpressRouteGatewayResiliencyInformation(
  GetExpressRouteGatewayResiliencyInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteGatewayResiliencyInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteGatewayResiliencyInformationResult.fromMap(result);
}

pulumi.Output<GetExpressRouteGatewayResiliencyInformationResult> getExpressRouteGatewayResiliencyInformationOutput(
  GetExpressRouteGatewayResiliencyInformationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteGatewayResiliencyInformation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteGatewayResiliencyInformationResult.fromMap);
}

/// Retrieves the route sets information for the ExpressRoute gateway.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_gateway_routes_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRouteGatewayRoutesInformationResult> getExpressRouteGatewayRoutesInformation(
  GetExpressRouteGatewayRoutesInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteGatewayRoutesInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRouteGatewayRoutesInformationResult.fromMap(result);
}

pulumi.Output<GetExpressRouteGatewayRoutesInformationResult> getExpressRouteGatewayRoutesInformationOutput(
  GetExpressRouteGatewayRoutesInformationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRouteGatewayRoutesInformation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRouteGatewayRoutesInformationResult.fromMap);
}

/// Retrieves the requested ExpressRoutePort resource.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_port_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRoutePortResult> getExpressRoutePort(
  GetExpressRoutePortArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRoutePort',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRoutePortResult.fromMap(result);
}

pulumi.Output<GetExpressRoutePortResult> getExpressRoutePortOutput(
  GetExpressRoutePortArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRoutePort',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRoutePortResult.fromMap);
}

/// Gets the specified authorization from the specified express route port.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_express_route_port_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExpressRoutePortAuthorizationResult> getExpressRoutePortAuthorization(
  GetExpressRoutePortAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getExpressRoutePortAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExpressRoutePortAuthorizationResult.fromMap(result);
}

pulumi.Output<GetExpressRoutePortAuthorizationResult> getExpressRoutePortAuthorizationOutput(
  GetExpressRoutePortAuthorizationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getExpressRoutePortAuthorization',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetExpressRoutePortAuthorizationResult.fromMap);
}

/// Gets the specified Firewall Policy.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}

pulumi.Output<GetFirewallPolicyResult> getFirewallPolicyOutput(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallPolicyResult.fromMap);
}

/// Get a draft Firewall Policy.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_policy_draft_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyDraftResult> getFirewallPolicyDraft(
  GetFirewallPolicyDraftArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyDraft',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyDraftResult.fromMap(result);
}

pulumi.Output<GetFirewallPolicyDraftResult> getFirewallPolicyDraftOutput(
  GetFirewallPolicyDraftArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyDraft',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallPolicyDraftResult.fromMap);
}

/// Gets the specified FirewallPolicyRuleCollectionGroup.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_policy_rule_collection_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyRuleCollectionGroupResult> getFirewallPolicyRuleCollectionGroup(
  GetFirewallPolicyRuleCollectionGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyRuleCollectionGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyRuleCollectionGroupResult.fromMap(result);
}

pulumi.Output<GetFirewallPolicyRuleCollectionGroupResult> getFirewallPolicyRuleCollectionGroupOutput(
  GetFirewallPolicyRuleCollectionGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyRuleCollectionGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallPolicyRuleCollectionGroupResult.fromMap);
}

/// Get Rule Collection Group Draft.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_policy_rule_collection_group_draft_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyRuleCollectionGroupDraftResult> getFirewallPolicyRuleCollectionGroupDraft(
  GetFirewallPolicyRuleCollectionGroupDraftArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyRuleCollectionGroupDraft',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyRuleCollectionGroupDraftResult.fromMap(result);
}

pulumi.Output<GetFirewallPolicyRuleCollectionGroupDraftResult> getFirewallPolicyRuleCollectionGroupDraftOutput(
  GetFirewallPolicyRuleCollectionGroupDraftArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyRuleCollectionGroupDraft',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallPolicyRuleCollectionGroupDraftResult.fromMap);
}

/// Gets the specified FirewallPolicyRuleGroup.
///
/// Uses Azure REST API version 2020-04-01.
///
/// Other available API versions: 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_firewall_policy_rule_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyRuleGroupResult> getFirewallPolicyRuleGroup(
  GetFirewallPolicyRuleGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyRuleGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyRuleGroupResult.fromMap(result);
}

pulumi.Output<GetFirewallPolicyRuleGroupResult> getFirewallPolicyRuleGroupOutput(
  GetFirewallPolicyRuleGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getFirewallPolicyRuleGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFirewallPolicyRuleGroupResult.fromMap);
}

/// Gets a flow log resource by name.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_flow_log_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowLogResult> getFlowLog(
  GetFlowLogArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getFlowLog',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowLogResult.fromMap(result);
}

pulumi.Output<GetFlowLogResult> getFlowLogOutput(
  GetFlowLogArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getFlowLog',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFlowLogResult.fromMap);
}

/// Retrieves the details of a RouteTable.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_hub_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubRouteTableResult> getHubRouteTable(
  GetHubRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getHubRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubRouteTableResult.fromMap(result);
}

pulumi.Output<GetHubRouteTableResult> getHubRouteTableOutput(
  GetHubRouteTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getHubRouteTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubRouteTableResult.fromMap);
}

/// Retrieves the details of a HubVirtualNetworkConnection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_hub_virtual_network_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHubVirtualNetworkConnectionResult> getHubVirtualNetworkConnection(
  GetHubVirtualNetworkConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getHubVirtualNetworkConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHubVirtualNetworkConnectionResult.fromMap(result);
}

pulumi.Output<GetHubVirtualNetworkConnectionResult> getHubVirtualNetworkConnectionOutput(
  GetHubVirtualNetworkConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getHubVirtualNetworkConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHubVirtualNetworkConnectionResult.fromMap);
}

/// Gets the specified load balancer inbound NAT rule.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_inbound_nat_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInboundNatRuleResult> getInboundNatRule(
  GetInboundNatRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getInboundNatRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInboundNatRuleResult.fromMap(result);
}

pulumi.Output<GetInboundNatRuleResult> getInboundNatRuleOutput(
  GetInboundNatRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getInboundNatRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInboundNatRuleResult.fromMap);
}

/// Gets information about the specified interconnect group.
///
/// Uses Azure REST API version 2025-07-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_interconnect_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectGroupResult> getInterconnectGroup(
  GetInterconnectGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getInterconnectGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectGroupResult.fromMap(result);
}

pulumi.Output<GetInterconnectGroupResult> getInterconnectGroupOutput(
  GetInterconnectGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getInterconnectGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInterconnectGroupResult.fromMap);
}

/// Gets the specified interface endpoint by resource group.
///
/// Uses Azure REST API version 2019-02-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_interface_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterfaceEndpointResult> getInterfaceEndpoint(
  GetInterfaceEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getInterfaceEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterfaceEndpointResult.fromMap(result);
}

pulumi.Output<GetInterfaceEndpointResult> getInterfaceEndpointOutput(
  GetInterfaceEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getInterfaceEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInterfaceEndpointResult.fromMap);
}

/// Gets the specified IpAllocation by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ip_allocation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpAllocationResult> getIpAllocation(
  GetIpAllocationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getIpAllocation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpAllocationResult.fromMap(result);
}

pulumi.Output<GetIpAllocationResult> getIpAllocationOutput(
  GetIpAllocationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getIpAllocation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpAllocationResult.fromMap);
}

/// Gets the specified ipGroups.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ip_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpGroupResult> getIpGroup(
  GetIpGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getIpGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpGroupResult.fromMap(result);
}

pulumi.Output<GetIpGroupResult> getIpGroupOutput(
  GetIpGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getIpGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpGroupResult.fromMap);
}

/// Instance of Pool resource.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ipam_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamPoolResult> getIpamPool(
  GetIpamPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getIpamPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamPoolResult.fromMap(result);
}

pulumi.Output<GetIpamPoolResult> getIpamPoolOutput(
  GetIpamPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getIpamPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpamPoolResult.fromMap);
}

/// IpamPool usage information.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_ipam_pool_usage_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamPoolUsageResult> getIpamPoolUsage(
  GetIpamPoolUsageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getIpamPoolUsage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamPoolUsageResult.fromMap(result);
}

pulumi.Output<GetIpamPoolUsageResult> getIpamPoolUsageOutput(
  GetIpamPoolUsageArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getIpamPoolUsage',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetIpamPoolUsageResult.fromMap);
}

/// Gets the specified load balancer.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_load_balancer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerResult> getLoadBalancer(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getLoadBalancer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerResult.fromMap(result);
}

pulumi.Output<GetLoadBalancerResult> getLoadBalancerOutput(
  GetLoadBalancerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getLoadBalancer',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadBalancerResult.fromMap);
}

/// Gets load balancer backend address pool.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_load_balancer_backend_address_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLoadBalancerBackendAddressPoolResult> getLoadBalancerBackendAddressPool(
  GetLoadBalancerBackendAddressPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getLoadBalancerBackendAddressPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLoadBalancerBackendAddressPoolResult.fromMap(result);
}

pulumi.Output<GetLoadBalancerBackendAddressPoolResult> getLoadBalancerBackendAddressPoolOutput(
  GetLoadBalancerBackendAddressPoolArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getLoadBalancerBackendAddressPool',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLoadBalancerBackendAddressPoolResult.fromMap);
}

/// Gets the specified local network gateway in a resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_local_network_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLocalNetworkGatewayResult> getLocalNetworkGateway(
  GetLocalNetworkGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getLocalNetworkGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLocalNetworkGatewayResult.fromMap(result);
}

pulumi.Output<GetLocalNetworkGatewayResult> getLocalNetworkGatewayOutput(
  GetLocalNetworkGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getLocalNetworkGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetLocalNetworkGatewayResult.fromMap);
}

/// Get a specified connection created by this management group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_management_group_network_manager_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetManagementGroupNetworkManagerConnectionResult> getManagementGroupNetworkManagerConnection(
  GetManagementGroupNetworkManagerConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getManagementGroupNetworkManagerConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetManagementGroupNetworkManagerConnectionResult.fromMap(result);
}

pulumi.Output<GetManagementGroupNetworkManagerConnectionResult> getManagementGroupNetworkManagerConnectionOutput(
  GetManagementGroupNetworkManagerConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getManagementGroupNetworkManagerConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetManagementGroupNetworkManagerConnectionResult.fromMap);
}

/// Gets the specified nat gateway in a specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nat_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatGatewayResult> getNatGateway(
  GetNatGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNatGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewayResult.fromMap(result);
}

pulumi.Output<GetNatGatewayResult> getNatGatewayOutput(
  GetNatGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNatGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNatGatewayResult.fromMap);
}

/// Retrieves the details of a nat ruleGet.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nat_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatRuleResult> getNatRule(
  GetNatRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNatRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatRuleResult.fromMap(result);
}

pulumi.Output<GetNatRuleResult> getNatRuleOutput(
  GetNatRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNatRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNatRuleResult.fromMap);
}

/// Gets the specified network group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkGroupResult> getNetworkGroup(
  GetNetworkGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkGroupResult.fromMap(result);
}

pulumi.Output<GetNetworkGroupResult> getNetworkGroupOutput(
  GetNetworkGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkGroupResult.fromMap);
}

/// Gets information about the specified network interface.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_interface_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceResult> getNetworkInterface(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkInterface',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceResult.fromMap(result);
}

pulumi.Output<GetNetworkInterfaceResult> getNetworkInterfaceOutput(
  GetNetworkInterfaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkInterface',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkInterfaceResult.fromMap);
}

/// Get the specified tap configuration on a network interface.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_interface_tap_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkInterfaceTapConfigurationResult> getNetworkInterfaceTapConfiguration(
  GetNetworkInterfaceTapConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkInterfaceTapConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkInterfaceTapConfigurationResult.fromMap(result);
}

pulumi.Output<GetNetworkInterfaceTapConfigurationResult> getNetworkInterfaceTapConfigurationOutput(
  GetNetworkInterfaceTapConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkInterfaceTapConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkInterfaceTapConfigurationResult.fromMap);
}

/// Gets the specified Network Manager.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkManagerResult> getNetworkManager(
  GetNetworkManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkManagerResult.fromMap(result);
}

pulumi.Output<GetNetworkManagerResult> getNetworkManagerOutput(
  GetNetworkManagerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkManager',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkManagerResult.fromMap);
}

/// Retrieves a network manager routing configuration.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-09-01-preview, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_manager_routing_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkManagerRoutingConfigurationResult> getNetworkManagerRoutingConfiguration(
  GetNetworkManagerRoutingConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkManagerRoutingConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkManagerRoutingConfigurationResult.fromMap(result);
}

pulumi.Output<GetNetworkManagerRoutingConfigurationResult> getNetworkManagerRoutingConfigurationOutput(
  GetNetworkManagerRoutingConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkManagerRoutingConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkManagerRoutingConfigurationResult.fromMap);
}

/// Gets the specified network profile in a specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkProfileResult> getNetworkProfile(
  GetNetworkProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkProfileResult.fromMap(result);
}

pulumi.Output<GetNetworkProfileResult> getNetworkProfileOutput(
  GetNetworkProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkProfileResult.fromMap);
}

/// Gets the specified network security group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityGroupResult> getNetworkSecurityGroup(
  GetNetworkSecurityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityGroupResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityGroupResult> getNetworkSecurityGroupOutput(
  GetNetworkSecurityGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityGroupResult.fromMap);
}

/// Gets the specified network security perimeter by the name.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2021-03-01-preview, 2023-07-01-preview, 2023-08-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterResult> getNetworkSecurityPerimeter(
  GetNetworkSecurityPerimeterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityPerimeterResult> getNetworkSecurityPerimeterOutput(
  GetNetworkSecurityPerimeterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityPerimeterResult.fromMap);
}

/// Gets the specified NSP access rule by name.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_access_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterAccessRuleResult> getNetworkSecurityPerimeterAccessRule(
  GetNetworkSecurityPerimeterAccessRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterAccessRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterAccessRuleResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityPerimeterAccessRuleResult> getNetworkSecurityPerimeterAccessRuleOutput(
  GetNetworkSecurityPerimeterAccessRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterAccessRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityPerimeterAccessRuleResult.fromMap);
}

/// Gets the specified NSP association by name.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterAssociationResult> getNetworkSecurityPerimeterAssociation(
  GetNetworkSecurityPerimeterAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterAssociationResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityPerimeterAssociationResult> getNetworkSecurityPerimeterAssociationOutput(
  GetNetworkSecurityPerimeterAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityPerimeterAssociationResult.fromMap);
}

/// Gets the specified NSP link resource.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterLinkResult> getNetworkSecurityPerimeterLink(
  GetNetworkSecurityPerimeterLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterLinkResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityPerimeterLinkResult> getNetworkSecurityPerimeterLinkOutput(
  GetNetworkSecurityPerimeterLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityPerimeterLinkResult.fromMap);
}

/// Gets the NSP logging configuration.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_logging_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterLoggingConfigurationResult> getNetworkSecurityPerimeterLoggingConfiguration(
  GetNetworkSecurityPerimeterLoggingConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterLoggingConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterLoggingConfigurationResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityPerimeterLoggingConfigurationResult> getNetworkSecurityPerimeterLoggingConfigurationOutput(
  GetNetworkSecurityPerimeterLoggingConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterLoggingConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityPerimeterLoggingConfigurationResult.fromMap);
}

/// Gets the specified NSP profile.
///
/// Uses Azure REST API version 2024-06-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_security_perimeter_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkSecurityPerimeterProfileResult> getNetworkSecurityPerimeterProfile(
  GetNetworkSecurityPerimeterProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkSecurityPerimeterProfileResult.fromMap(result);
}

pulumi.Output<GetNetworkSecurityPerimeterProfileResult> getNetworkSecurityPerimeterProfileOutput(
  GetNetworkSecurityPerimeterProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkSecurityPerimeterProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkSecurityPerimeterProfileResult.fromMap);
}

/// Gets the specified Network Virtual Appliance.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_virtual_appliance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkVirtualApplianceResult> getNetworkVirtualAppliance(
  GetNetworkVirtualApplianceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkVirtualAppliance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkVirtualApplianceResult.fromMap(result);
}

pulumi.Output<GetNetworkVirtualApplianceResult> getNetworkVirtualApplianceOutput(
  GetNetworkVirtualApplianceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkVirtualAppliance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkVirtualApplianceResult.fromMap);
}

/// Retrieves the boot diagnostic logs for a VM instance belonging to the specified Network Virtual Appliance.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_virtual_appliance_boot_diagnostic_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkVirtualApplianceBootDiagnosticLogsResult> getNetworkVirtualApplianceBootDiagnosticLogs(
  GetNetworkVirtualApplianceBootDiagnosticLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkVirtualApplianceBootDiagnosticLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkVirtualApplianceBootDiagnosticLogsResult.fromMap(result);
}

pulumi.Output<GetNetworkVirtualApplianceBootDiagnosticLogsResult> getNetworkVirtualApplianceBootDiagnosticLogsOutput(
  GetNetworkVirtualApplianceBootDiagnosticLogsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkVirtualApplianceBootDiagnosticLogs',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkVirtualApplianceBootDiagnosticLogsResult.fromMap);
}

/// Retrieves the details of specified NVA connection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_virtual_appliance_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkVirtualApplianceConnectionResult> getNetworkVirtualApplianceConnection(
  GetNetworkVirtualApplianceConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkVirtualApplianceConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkVirtualApplianceConnectionResult.fromMap(result);
}

pulumi.Output<GetNetworkVirtualApplianceConnectionResult> getNetworkVirtualApplianceConnectionOutput(
  GetNetworkVirtualApplianceConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkVirtualApplianceConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkVirtualApplianceConnectionResult.fromMap);
}

/// Gets the specified network watcher by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_network_watcher_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkWatcherResult> getNetworkWatcher(
  GetNetworkWatcherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNetworkWatcher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkWatcherResult.fromMap(result);
}

pulumi.Output<GetNetworkWatcherResult> getNetworkWatcherOutput(
  GetNetworkWatcherArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNetworkWatcher',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNetworkWatcherResult.fromMap);
}

/// Gets the specified NSP access rule by name.
///
/// Uses Azure REST API version 2023-08-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nsp_access_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNspAccessRuleResult> getNspAccessRule(
  GetNspAccessRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNspAccessRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNspAccessRuleResult.fromMap(result);
}

pulumi.Output<GetNspAccessRuleResult> getNspAccessRuleOutput(
  GetNspAccessRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNspAccessRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNspAccessRuleResult.fromMap);
}

/// Gets the specified NSP association by name.
///
/// Uses Azure REST API version 2023-08-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nsp_association_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNspAssociationResult> getNspAssociation(
  GetNspAssociationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNspAssociation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNspAssociationResult.fromMap(result);
}

pulumi.Output<GetNspAssociationResult> getNspAssociationOutput(
  GetNspAssociationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNspAssociation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNspAssociationResult.fromMap);
}

/// Gets the specified NSP link resource.
///
/// Uses Azure REST API version 2023-08-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nsp_link_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNspLinkResult> getNspLink(
  GetNspLinkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNspLink',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNspLinkResult.fromMap(result);
}

pulumi.Output<GetNspLinkResult> getNspLinkOutput(
  GetNspLinkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNspLink',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNspLinkResult.fromMap);
}

/// Gets the specified NSP profile.
///
/// Uses Azure REST API version 2023-08-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2023-07-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_nsp_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNspProfileResult> getNspProfile(
  GetNspProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getNspProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNspProfileResult.fromMap(result);
}

pulumi.Output<GetNspProfileResult> getNspProfileOutput(
  GetNspProfileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getNspProfile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetNspProfileResult.fromMap);
}

/// Retrieves the details of a virtual wan p2s vpn gateway.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_p2s_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetP2sVpnGatewayResult> getP2sVpnGateway(
  GetP2sVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetP2sVpnGatewayResult.fromMap(result);
}

pulumi.Output<GetP2sVpnGatewayResult> getP2sVpnGatewayOutput(
  GetP2sVpnGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetP2sVpnGatewayResult.fromMap);
}

/// Gets the connection health of P2S clients of the virtual wan P2SVpnGateway in the specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_p2s_vpn_gateway_p2s_vpn_connection_health_args_doc}
/// [options] Invoke options controlling this call.
Future<GetP2sVpnGatewayP2sVpnConnectionHealthResult> getP2sVpnGatewayP2sVpnConnectionHealth(
  GetP2sVpnGatewayP2sVpnConnectionHealthArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnGatewayP2sVpnConnectionHealth',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetP2sVpnGatewayP2sVpnConnectionHealthResult.fromMap(result);
}

pulumi.Output<GetP2sVpnGatewayP2sVpnConnectionHealthResult> getP2sVpnGatewayP2sVpnConnectionHealthOutput(
  GetP2sVpnGatewayP2sVpnConnectionHealthArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnGatewayP2sVpnConnectionHealth',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetP2sVpnGatewayP2sVpnConnectionHealthResult.fromMap);
}

/// Gets the sas url to get the connection health detail of P2S clients of the virtual wan P2SVpnGateway in the specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_p2s_vpn_gateway_p2s_vpn_connection_health_detailed_args_doc}
/// [options] Invoke options controlling this call.
Future<GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult> getP2sVpnGatewayP2sVpnConnectionHealthDetailed(
  GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnGatewayP2sVpnConnectionHealthDetailed',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult.fromMap(result);
}

pulumi.Output<GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult> getP2sVpnGatewayP2sVpnConnectionHealthDetailedOutput(
  GetP2sVpnGatewayP2sVpnConnectionHealthDetailedArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnGatewayP2sVpnConnectionHealthDetailed',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetP2sVpnGatewayP2sVpnConnectionHealthDetailedResult.fromMap);
}

/// Retrieves the details of a P2SVpnServerConfiguration.
///
/// Uses Azure REST API version 2019-07-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_p2s_vpn_server_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetP2sVpnServerConfigurationResult> getP2sVpnServerConfiguration(
  GetP2sVpnServerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnServerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetP2sVpnServerConfigurationResult.fromMap(result);
}

pulumi.Output<GetP2sVpnServerConfigurationResult> getP2sVpnServerConfigurationOutput(
  GetP2sVpnServerConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getP2sVpnServerConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetP2sVpnServerConfigurationResult.fromMap);
}

/// Gets a packet capture session by name.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_packet_capture_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPacketCaptureResult> getPacketCapture(
  GetPacketCaptureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPacketCapture',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketCaptureResult.fromMap(result);
}

pulumi.Output<GetPacketCaptureResult> getPacketCaptureOutput(
  GetPacketCaptureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPacketCapture',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPacketCaptureResult.fromMap);
}

/// Gets the private dns zone group resource by specified private dns zone group name.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_private_dns_zone_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateDnsZoneGroupResult> getPrivateDnsZoneGroup(
  GetPrivateDnsZoneGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPrivateDnsZoneGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateDnsZoneGroupResult.fromMap(result);
}

pulumi.Output<GetPrivateDnsZoneGroupResult> getPrivateDnsZoneGroupOutput(
  GetPrivateDnsZoneGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPrivateDnsZoneGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateDnsZoneGroupResult.fromMap);
}

/// Gets the specified private endpoint by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_private_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointResult> getPrivateEndpoint(
  GetPrivateEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPrivateEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointResult> getPrivateEndpointOutput(
  GetPrivateEndpointArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPrivateEndpoint',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointResult.fromMap);
}

/// Gets the specified private link service by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_private_link_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServiceResult> getPrivateLinkService(
  GetPrivateLinkServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPrivateLinkService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServiceResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServiceResult> getPrivateLinkServiceOutput(
  GetPrivateLinkServiceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPrivateLinkService',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServiceResult.fromMap);
}

/// Get the specific private end point connection by specific private link service in the resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_private_link_service_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateLinkServicePrivateEndpointConnectionResult> getPrivateLinkServicePrivateEndpointConnection(
  GetPrivateLinkServicePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPrivateLinkServicePrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateLinkServicePrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateLinkServicePrivateEndpointConnectionResult> getPrivateLinkServicePrivateEndpointConnectionOutput(
  GetPrivateLinkServicePrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPrivateLinkServicePrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateLinkServicePrivateEndpointConnectionResult.fromMap);
}

/// Gets the specified public IP address in a specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_public_ipaddress_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIPAddressResult> getPublicIPAddress(
  GetPublicIPAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPublicIPAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIPAddressResult.fromMap(result);
}

pulumi.Output<GetPublicIPAddressResult> getPublicIPAddressOutput(
  GetPublicIPAddressArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPublicIPAddress',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPublicIPAddressResult.fromMap);
}

/// Gets the specified public IP prefix in a specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_public_ipprefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIPPrefixResult> getPublicIPPrefix(
  GetPublicIPPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getPublicIPPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIPPrefixResult.fromMap(result);
}

pulumi.Output<GetPublicIPPrefixResult> getPublicIPPrefixOutput(
  GetPublicIPPrefixArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getPublicIPPrefix',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPublicIPPrefixResult.fromMap);
}

/// Configuration information or intent on which to do the analysis on.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_reachability_analysis_intent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReachabilityAnalysisIntentResult> getReachabilityAnalysisIntent(
  GetReachabilityAnalysisIntentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getReachabilityAnalysisIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReachabilityAnalysisIntentResult.fromMap(result);
}

pulumi.Output<GetReachabilityAnalysisIntentResult> getReachabilityAnalysisIntentOutput(
  GetReachabilityAnalysisIntentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getReachabilityAnalysisIntent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReachabilityAnalysisIntentResult.fromMap);
}

/// Configuration information for analysis run.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_reachability_analysis_run_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReachabilityAnalysisRunResult> getReachabilityAnalysisRun(
  GetReachabilityAnalysisRunArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getReachabilityAnalysisRun',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReachabilityAnalysisRunResult.fromMap(result);
}

pulumi.Output<GetReachabilityAnalysisRunResult> getReachabilityAnalysisRunOutput(
  GetReachabilityAnalysisRunArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getReachabilityAnalysisRun',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReachabilityAnalysisRunResult.fromMap);
}

/// Gets the specified route from a route table.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}

pulumi.Output<GetRouteResult> getRouteOutput(
  GetRouteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRoute',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteResult.fromMap);
}

/// Gets the specified route filter.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_filter_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteFilterResult> getRouteFilter(
  GetRouteFilterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRouteFilter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteFilterResult.fromMap(result);
}

pulumi.Output<GetRouteFilterResult> getRouteFilterOutput(
  GetRouteFilterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRouteFilter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteFilterResult.fromMap);
}

/// Gets the specified rule from a route filter.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_filter_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteFilterRuleResult> getRouteFilterRule(
  GetRouteFilterRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRouteFilterRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteFilterRuleResult.fromMap(result);
}

pulumi.Output<GetRouteFilterRuleResult> getRouteFilterRuleOutput(
  GetRouteFilterRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRouteFilterRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteFilterRuleResult.fromMap);
}

/// Retrieves the details of a RouteMap.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteMapResult> getRouteMap(
  GetRouteMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRouteMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteMapResult.fromMap(result);
}

pulumi.Output<GetRouteMapResult> getRouteMapOutput(
  GetRouteMapArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRouteMap',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteMapResult.fromMap);
}

/// Gets the specified route table.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_route_table_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTableResult> getRouteTable(
  GetRouteTableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRouteTable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTableResult.fromMap(result);
}

pulumi.Output<GetRouteTableResult> getRouteTableOutput(
  GetRouteTableArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRouteTable',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRouteTableResult.fromMap);
}

/// Retrieves a network manager routing configuration.
///
/// Uses Azure REST API version 2023-03-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_routing_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutingConfigurationResult> getRoutingConfiguration(
  GetRoutingConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRoutingConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutingConfigurationResult.fromMap(result);
}

pulumi.Output<GetRoutingConfigurationResult> getRoutingConfigurationOutput(
  GetRoutingConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRoutingConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutingConfigurationResult.fromMap);
}

/// Retrieves the details of a RoutingIntent.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_routing_intent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutingIntentResult> getRoutingIntent(
  GetRoutingIntentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRoutingIntent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutingIntentResult.fromMap(result);
}

pulumi.Output<GetRoutingIntentResult> getRoutingIntentOutput(
  GetRoutingIntentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRoutingIntent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutingIntentResult.fromMap);
}

/// Gets a network manager routing configuration routing rule.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-03-01-preview, 2024-03-01, 2024-07-01, 2024-09-01-preview, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_routing_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutingRuleResult> getRoutingRule(
  GetRoutingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRoutingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutingRuleResult.fromMap(result);
}

pulumi.Output<GetRoutingRuleResult> getRoutingRuleOutput(
  GetRoutingRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRoutingRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutingRuleResult.fromMap);
}

/// Gets a network manager routing configuration rule collection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2023-03-01-preview, 2024-03-01, 2024-07-01, 2024-09-01-preview, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_routing_rule_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRoutingRuleCollectionResult> getRoutingRuleCollection(
  GetRoutingRuleCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getRoutingRuleCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutingRuleCollectionResult.fromMap(result);
}

pulumi.Output<GetRoutingRuleCollectionResult> getRoutingRuleCollectionOutput(
  GetRoutingRuleCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getRoutingRuleCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetRoutingRuleCollectionResult.fromMap);
}

/// Get specified scope connection created by this Network Manager.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_scope_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopeConnectionResult> getScopeConnection(
  GetScopeConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getScopeConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopeConnectionResult.fromMap(result);
}

pulumi.Output<GetScopeConnectionResult> getScopeConnectionOutput(
  GetScopeConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getScopeConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScopeConnectionResult.fromMap);
}

/// Retrieves a network manager security admin configuration.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_security_admin_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityAdminConfigurationResult> getSecurityAdminConfiguration(
  GetSecurityAdminConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSecurityAdminConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityAdminConfigurationResult.fromMap(result);
}

pulumi.Output<GetSecurityAdminConfigurationResult> getSecurityAdminConfigurationOutput(
  GetSecurityAdminConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSecurityAdminConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityAdminConfigurationResult.fromMap);
}

/// Gets the specified Security Partner Provider.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_security_partner_provider_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPartnerProviderResult> getSecurityPartnerProvider(
  GetSecurityPartnerProviderArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSecurityPartnerProvider',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPartnerProviderResult.fromMap(result);
}

pulumi.Output<GetSecurityPartnerProviderResult> getSecurityPartnerProviderOutput(
  GetSecurityPartnerProviderArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSecurityPartnerProvider',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityPartnerProviderResult.fromMap);
}

/// Get the specified network security rule.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_security_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityRuleResult> getSecurityRule(
  GetSecurityRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSecurityRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityRuleResult.fromMap(result);
}

pulumi.Output<GetSecurityRuleResult> getSecurityRuleOutput(
  GetSecurityRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSecurityRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityRuleResult.fromMap);
}

/// Retrieves a network manager security user configuration.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview, 2022-04-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_security_user_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityUserConfigurationResult> getSecurityUserConfiguration(
  GetSecurityUserConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSecurityUserConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityUserConfigurationResult.fromMap(result);
}

pulumi.Output<GetSecurityUserConfigurationResult> getSecurityUserConfigurationOutput(
  GetSecurityUserConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSecurityUserConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityUserConfigurationResult.fromMap);
}

/// Gets a security user rule.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_security_user_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityUserRuleResult> getSecurityUserRule(
  GetSecurityUserRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSecurityUserRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityUserRuleResult.fromMap(result);
}

pulumi.Output<GetSecurityUserRuleResult> getSecurityUserRuleOutput(
  GetSecurityUserRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSecurityUserRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityUserRuleResult.fromMap);
}

/// Gets a network manager security user configuration rule collection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_security_user_rule_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityUserRuleCollectionResult> getSecurityUserRuleCollection(
  GetSecurityUserRuleCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSecurityUserRuleCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityUserRuleCollectionResult.fromMap(result);
}

pulumi.Output<GetSecurityUserRuleCollectionResult> getSecurityUserRuleCollectionOutput(
  GetSecurityUserRuleCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSecurityUserRuleCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSecurityUserRuleCollectionResult.fromMap);
}

/// Gets the specified service Endpoint Policies in a specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_service_endpoint_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceEndpointPolicyResult> getServiceEndpointPolicy(
  GetServiceEndpointPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getServiceEndpointPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceEndpointPolicyResult.fromMap(result);
}

pulumi.Output<GetServiceEndpointPolicyResult> getServiceEndpointPolicyOutput(
  GetServiceEndpointPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getServiceEndpointPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceEndpointPolicyResult.fromMap);
}

/// Get the specified service endpoint policy definitions from service endpoint policy.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_service_endpoint_policy_definition_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceEndpointPolicyDefinitionResult> getServiceEndpointPolicyDefinition(
  GetServiceEndpointPolicyDefinitionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getServiceEndpointPolicyDefinition',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceEndpointPolicyDefinitionResult.fromMap(result);
}

pulumi.Output<GetServiceEndpointPolicyDefinitionResult> getServiceEndpointPolicyDefinitionOutput(
  GetServiceEndpointPolicyDefinitionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getServiceEndpointPolicyDefinition',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceEndpointPolicyDefinitionResult.fromMap);
}

/// Gets the specified service gateway.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_service_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceGatewayResult> getServiceGateway(
  GetServiceGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getServiceGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceGatewayResult.fromMap(result);
}

pulumi.Output<GetServiceGatewayResult> getServiceGatewayOutput(
  GetServiceGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getServiceGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServiceGatewayResult.fromMap);
}

/// Instance of StaticCidr resource.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_static_cidr_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticCidrResult> getStaticCidr(
  GetStaticCidrArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getStaticCidr',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticCidrResult.fromMap(result);
}

pulumi.Output<GetStaticCidrResult> getStaticCidrOutput(
  GetStaticCidrArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getStaticCidr',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticCidrResult.fromMap);
}

/// Gets the specified static member.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_static_member_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStaticMemberResult> getStaticMember(
  GetStaticMemberArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getStaticMember',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStaticMemberResult.fromMap(result);
}

pulumi.Output<GetStaticMemberResult> getStaticMemberOutput(
  GetStaticMemberArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getStaticMember',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetStaticMemberResult.fromMap);
}

/// Gets the specified subnet by virtual network and resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_subnet_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetResult> getSubnet(
  GetSubnetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSubnet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetResult.fromMap(result);
}

pulumi.Output<GetSubnetResult> getSubnetOutput(
  GetSubnetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSubnet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubnetResult.fromMap);
}

/// Get a specified connection created by this subscription.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_subscription_network_manager_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionNetworkManagerConnectionResult> getSubscriptionNetworkManagerConnection(
  GetSubscriptionNetworkManagerConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getSubscriptionNetworkManagerConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionNetworkManagerConnectionResult.fromMap(result);
}

pulumi.Output<GetSubscriptionNetworkManagerConnectionResult> getSubscriptionNetworkManagerConnectionOutput(
  GetSubscriptionNetworkManagerConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getSubscriptionNetworkManagerConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSubscriptionNetworkManagerConnectionResult.fromMap);
}

/// Gets a user rule.
///
/// Uses Azure REST API version 2022-04-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_user_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserRuleResult> getUserRule(
  GetUserRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getUserRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserRuleResult.fromMap(result);
}

pulumi.Output<GetUserRuleResult> getUserRuleOutput(
  GetUserRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getUserRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserRuleResult.fromMap);
}

/// Gets a network manager security user configuration rule collection.
///
/// Uses Azure REST API version 2022-04-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_user_rule_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUserRuleCollectionResult> getUserRuleCollection(
  GetUserRuleCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getUserRuleCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUserRuleCollectionResult.fromMap(result);
}

pulumi.Output<GetUserRuleCollectionResult> getUserRuleCollectionOutput(
  GetUserRuleCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getUserRuleCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUserRuleCollectionResult.fromMap);
}

/// Instance of Verifier Workspace.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_verifier_workspace_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVerifierWorkspaceResult> getVerifierWorkspace(
  GetVerifierWorkspaceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVerifierWorkspace',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVerifierWorkspaceResult.fromMap(result);
}

pulumi.Output<GetVerifierWorkspaceResult> getVerifierWorkspaceOutput(
  GetVerifierWorkspaceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVerifierWorkspace',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVerifierWorkspaceResult.fromMap);
}

/// Gets the specified Virtual Appliance Site.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_appliance_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualApplianceSiteResult> getVirtualApplianceSite(
  GetVirtualApplianceSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualApplianceSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualApplianceSiteResult.fromMap(result);
}

pulumi.Output<GetVirtualApplianceSiteResult> getVirtualApplianceSiteOutput(
  GetVirtualApplianceSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualApplianceSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualApplianceSiteResult.fromMap);
}

/// Retrieves the details of a VirtualHub.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubResult> getVirtualHub(
  GetVirtualHubArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualHub',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubResult.fromMap(result);
}

pulumi.Output<GetVirtualHubResult> getVirtualHubOutput(
  GetVirtualHubArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualHub',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualHubResult.fromMap);
}

/// Retrieves the details of a Virtual Hub Bgp Connection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_bgp_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubBgpConnectionResult> getVirtualHubBgpConnection(
  GetVirtualHubBgpConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualHubBgpConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubBgpConnectionResult.fromMap(result);
}

pulumi.Output<GetVirtualHubBgpConnectionResult> getVirtualHubBgpConnectionOutput(
  GetVirtualHubBgpConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualHubBgpConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualHubBgpConnectionResult.fromMap);
}

/// Retrieves the details of a Virtual Hub Ip configuration.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_ip_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubIpConfigurationResult> getVirtualHubIpConfiguration(
  GetVirtualHubIpConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualHubIpConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubIpConfigurationResult.fromMap(result);
}

pulumi.Output<GetVirtualHubIpConfigurationResult> getVirtualHubIpConfigurationOutput(
  GetVirtualHubIpConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualHubIpConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualHubIpConfigurationResult.fromMap);
}

/// Retrieves the details of a VirtualHubRouteTableV2.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_hub_route_table_v2_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualHubRouteTableV2Result> getVirtualHubRouteTableV2(
  GetVirtualHubRouteTableV2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualHubRouteTableV2',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualHubRouteTableV2Result.fromMap(result);
}

pulumi.Output<GetVirtualHubRouteTableV2Result> getVirtualHubRouteTableV2Output(
  GetVirtualHubRouteTableV2Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualHubRouteTableV2',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualHubRouteTableV2Result.fromMap);
}

/// Gets the specified virtual network by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkResult> getVirtualNetwork(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkResult> getVirtualNetworkOutput(
  GetVirtualNetworkArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetwork',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkResult.fromMap);
}

/// Gets information about the specified virtual network appliance.
///
/// Uses Azure REST API version 2025-05-01.
///
/// Other available API versions: 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_appliance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkApplianceResult> getVirtualNetworkAppliance(
  GetVirtualNetworkApplianceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkAppliance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkApplianceResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkApplianceResult> getVirtualNetworkApplianceOutput(
  GetVirtualNetworkApplianceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkAppliance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkApplianceResult.fromMap);
}

/// Gets the specified virtual network gateway by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayResult> getVirtualNetworkGateway(
  GetVirtualNetworkGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayResult> getVirtualNetworkGatewayOutput(
  GetVirtualNetworkGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayResult.fromMap);
}

/// This operation retrieves a list of routes the virtual network gateway is advertising to the specified peer.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_advertised_routes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayAdvertisedRoutesResult> getVirtualNetworkGatewayAdvertisedRoutes(
  GetVirtualNetworkGatewayAdvertisedRoutesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayAdvertisedRoutes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayAdvertisedRoutesResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayAdvertisedRoutesResult> getVirtualNetworkGatewayAdvertisedRoutesOutput(
  GetVirtualNetworkGatewayAdvertisedRoutesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayAdvertisedRoutes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayAdvertisedRoutesResult.fromMap);
}

/// The GetBgpPeerStatus operation retrieves the status of all BGP peers.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_bgp_peer_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayBgpPeerStatusResult> getVirtualNetworkGatewayBgpPeerStatus(
  GetVirtualNetworkGatewayBgpPeerStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayBgpPeerStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayBgpPeerStatusResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayBgpPeerStatusResult> getVirtualNetworkGatewayBgpPeerStatusOutput(
  GetVirtualNetworkGatewayBgpPeerStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayBgpPeerStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayBgpPeerStatusResult.fromMap);
}

/// Gets the specified virtual network gateway connection by resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayConnectionResult> getVirtualNetworkGatewayConnection(
  GetVirtualNetworkGatewayConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayConnectionResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayConnectionResult> getVirtualNetworkGatewayConnectionOutput(
  GetVirtualNetworkGatewayConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayConnectionResult.fromMap);
}

/// Lists IKE Security Associations for the virtual network gateway connection in the specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_connection_ike_sas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayConnectionIkeSasResult> getVirtualNetworkGatewayConnectionIkeSas(
  GetVirtualNetworkGatewayConnectionIkeSasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayConnectionIkeSas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayConnectionIkeSasResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayConnectionIkeSasResult> getVirtualNetworkGatewayConnectionIkeSasOutput(
  GetVirtualNetworkGatewayConnectionIkeSasArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayConnectionIkeSas',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayConnectionIkeSasResult.fromMap);
}

/// This operation retrieves a list of routes the virtual network gateway has learned, including routes learned from BGP peers.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_learned_routes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayLearnedRoutesResult> getVirtualNetworkGatewayLearnedRoutes(
  GetVirtualNetworkGatewayLearnedRoutesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayLearnedRoutes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayLearnedRoutesResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayLearnedRoutesResult> getVirtualNetworkGatewayLearnedRoutesOutput(
  GetVirtualNetworkGatewayLearnedRoutesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayLearnedRoutes',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayLearnedRoutesResult.fromMap);
}

/// Retrieves the details of a nat rule.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_nat_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayNatRuleResult> getVirtualNetworkGatewayNatRule(
  GetVirtualNetworkGatewayNatRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayNatRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayNatRuleResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayNatRuleResult> getVirtualNetworkGatewayNatRuleOutput(
  GetVirtualNetworkGatewayNatRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayNatRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayNatRuleResult.fromMap);
}

/// This operation retrieves the resiliency information for an Express Route Gateway, including the gateway's current resiliency score and recommendations to further improve the score
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_resiliency_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayResiliencyInformationResult> getVirtualNetworkGatewayResiliencyInformation(
  GetVirtualNetworkGatewayResiliencyInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayResiliencyInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayResiliencyInformationResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayResiliencyInformationResult> getVirtualNetworkGatewayResiliencyInformationOutput(
  GetVirtualNetworkGatewayResiliencyInformationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayResiliencyInformation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayResiliencyInformationResult.fromMap);
}

/// This operation retrieves the route set information for an Express Route Gateway based on their resiliency
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_routes_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayRoutesInformationResult> getVirtualNetworkGatewayRoutesInformation(
  GetVirtualNetworkGatewayRoutesInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayRoutesInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayRoutesInformationResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayRoutesInformationResult> getVirtualNetworkGatewayRoutesInformationOutput(
  GetVirtualNetworkGatewayRoutesInformationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayRoutesInformation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayRoutesInformationResult.fromMap);
}

/// Gets pre-generated VPN profile for P2S client of the virtual network gateway in the specified resource group. The profile needs to be generated first using generateVpnProfile.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_vpn_profile_package_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayVpnProfilePackageUrlResult> getVirtualNetworkGatewayVpnProfilePackageUrl(
  GetVirtualNetworkGatewayVpnProfilePackageUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayVpnProfilePackageUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayVpnProfilePackageUrlResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayVpnProfilePackageUrlResult> getVirtualNetworkGatewayVpnProfilePackageUrlOutput(
  GetVirtualNetworkGatewayVpnProfilePackageUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayVpnProfilePackageUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayVpnProfilePackageUrlResult.fromMap);
}

/// Get VPN client connection health detail per P2S client connection of the virtual network gateway in the specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_vpnclient_connection_health_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayVpnclientConnectionHealthResult> getVirtualNetworkGatewayVpnclientConnectionHealth(
  GetVirtualNetworkGatewayVpnclientConnectionHealthArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayVpnclientConnectionHealth',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayVpnclientConnectionHealthResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayVpnclientConnectionHealthResult> getVirtualNetworkGatewayVpnclientConnectionHealthOutput(
  GetVirtualNetworkGatewayVpnclientConnectionHealthArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayVpnclientConnectionHealth',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayVpnclientConnectionHealthResult.fromMap);
}

/// The Get VpnclientIpsecParameters operation retrieves information about the vpnclient ipsec policy for P2S client of virtual network gateway in the specified resource group through Network resource provider.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_gateway_vpnclient_ipsec_parameters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkGatewayVpnclientIpsecParametersResult> getVirtualNetworkGatewayVpnclientIpsecParameters(
  GetVirtualNetworkGatewayVpnclientIpsecParametersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayVpnclientIpsecParameters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkGatewayVpnclientIpsecParametersResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkGatewayVpnclientIpsecParametersResult> getVirtualNetworkGatewayVpnclientIpsecParametersOutput(
  GetVirtualNetworkGatewayVpnclientIpsecParametersArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkGatewayVpnclientIpsecParameters',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkGatewayVpnclientIpsecParametersResult.fromMap);
}

/// Gets the specified virtual network peering.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkPeeringResult> getVirtualNetworkPeering(
  GetVirtualNetworkPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkPeeringResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkPeeringResult> getVirtualNetworkPeeringOutput(
  GetVirtualNetworkPeeringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkPeering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkPeeringResult.fromMap);
}

/// Gets information about the specified virtual network tap.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_network_tap_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualNetworkTapResult> getVirtualNetworkTap(
  GetVirtualNetworkTapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkTap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualNetworkTapResult.fromMap(result);
}

pulumi.Output<GetVirtualNetworkTapResult> getVirtualNetworkTapOutput(
  GetVirtualNetworkTapArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualNetworkTap',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualNetworkTapResult.fromMap);
}

/// Gets the specified Virtual Router.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_router_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualRouterResult> getVirtualRouter(
  GetVirtualRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualRouterResult.fromMap(result);
}

pulumi.Output<GetVirtualRouterResult> getVirtualRouterOutput(
  GetVirtualRouterArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualRouter',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualRouterResult.fromMap);
}

/// Gets the specified Virtual Router Peering.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_router_peering_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualRouterPeeringResult> getVirtualRouterPeering(
  GetVirtualRouterPeeringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualRouterPeering',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualRouterPeeringResult.fromMap(result);
}

pulumi.Output<GetVirtualRouterPeeringResult> getVirtualRouterPeeringOutput(
  GetVirtualRouterPeeringArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualRouterPeering',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualRouterPeeringResult.fromMap);
}

/// Retrieves the details of a VirtualWAN.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_virtual_wan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVirtualWanResult> getVirtualWan(
  GetVirtualWanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVirtualWan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVirtualWanResult.fromMap(result);
}

pulumi.Output<GetVirtualWanResult> getVirtualWanOutput(
  GetVirtualWanArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVirtualWan',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVirtualWanResult.fromMap);
}

/// Retrieves the details of a vpn connection.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnConnectionResult> getVpnConnection(
  GetVpnConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVpnConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnConnectionResult.fromMap(result);
}

pulumi.Output<GetVpnConnectionResult> getVpnConnectionOutput(
  GetVpnConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVpnConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVpnConnectionResult.fromMap);
}

/// Retrieves the details of a virtual wan vpn gateway.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnGatewayResult> getVpnGateway(
  GetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult.fromMap(result);
}

pulumi.Output<GetVpnGatewayResult> getVpnGatewayOutput(
  GetVpnGatewayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVpnGateway',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVpnGatewayResult.fromMap);
}

/// Lists IKE Security Associations for Vpn Site Link Connection in the specified resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_link_connection_ike_sas_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnLinkConnectionIkeSasResult> getVpnLinkConnectionIkeSas(
  GetVpnLinkConnectionIkeSasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVpnLinkConnectionIkeSas',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnLinkConnectionIkeSasResult.fromMap(result);
}

pulumi.Output<GetVpnLinkConnectionIkeSasResult> getVpnLinkConnectionIkeSasOutput(
  GetVpnLinkConnectionIkeSasArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVpnLinkConnectionIkeSas',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVpnLinkConnectionIkeSasResult.fromMap);
}

/// Retrieves the details of a VpnServerConfiguration.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_server_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnServerConfigurationResult> getVpnServerConfiguration(
  GetVpnServerConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVpnServerConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnServerConfigurationResult.fromMap(result);
}

pulumi.Output<GetVpnServerConfigurationResult> getVpnServerConfigurationOutput(
  GetVpnServerConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVpnServerConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVpnServerConfigurationResult.fromMap);
}

/// Retrieves the details of a VPN site.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_vpn_site_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnSiteResult> getVpnSite(
  GetVpnSiteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getVpnSite',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnSiteResult.fromMap(result);
}

pulumi.Output<GetVpnSiteResult> getVpnSiteOutput(
  GetVpnSiteArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getVpnSite',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVpnSiteResult.fromMap);
}

/// Retrieve protection policy with specified name within a resource group.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_get_web_application_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebApplicationFirewallPolicyResult> getWebApplicationFirewallPolicy(
  GetWebApplicationFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:getWebApplicationFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebApplicationFirewallPolicyResult.fromMap(result);
}

pulumi.Output<GetWebApplicationFirewallPolicyResult> getWebApplicationFirewallPolicyOutput(
  GetWebApplicationFirewallPolicyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:getWebApplicationFirewallPolicy',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebApplicationFirewallPolicyResult.fromMap);
}

/// Lists active connectivity configurations in a network manager.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_active_connectivity_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<ListActiveConnectivityConfigurationResult> listActiveConnectivityConfiguration(
  ListActiveConnectivityConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listActiveConnectivityConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListActiveConnectivityConfigurationResult.fromMap(result);
}

pulumi.Output<ListActiveConnectivityConfigurationResult> listActiveConnectivityConfigurationOutput(
  ListActiveConnectivityConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listActiveConnectivityConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListActiveConnectivityConfigurationResult.fromMap);
}

/// Lists active connectivity configurations in a network manager.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_active_connectivity_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListActiveConnectivityConfigurationsResult> listActiveConnectivityConfigurations(
  ListActiveConnectivityConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listActiveConnectivityConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListActiveConnectivityConfigurationsResult.fromMap(result);
}

pulumi.Output<ListActiveConnectivityConfigurationsResult> listActiveConnectivityConfigurationsOutput(
  ListActiveConnectivityConfigurationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listActiveConnectivityConfigurations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListActiveConnectivityConfigurationsResult.fromMap);
}

/// Lists active security admin rules in a network manager.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_active_security_admin_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<ListActiveSecurityAdminRuleResult> listActiveSecurityAdminRule(
  ListActiveSecurityAdminRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityAdminRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListActiveSecurityAdminRuleResult.fromMap(result);
}

pulumi.Output<ListActiveSecurityAdminRuleResult> listActiveSecurityAdminRuleOutput(
  ListActiveSecurityAdminRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityAdminRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListActiveSecurityAdminRuleResult.fromMap);
}

/// Lists active security admin rules in a network manager.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_active_security_admin_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<ListActiveSecurityAdminRulesResult> listActiveSecurityAdminRules(
  ListActiveSecurityAdminRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityAdminRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListActiveSecurityAdminRulesResult.fromMap(result);
}

pulumi.Output<ListActiveSecurityAdminRulesResult> listActiveSecurityAdminRulesOutput(
  ListActiveSecurityAdminRulesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityAdminRules',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListActiveSecurityAdminRulesResult.fromMap);
}

/// Lists Active Security User Rules in a network manager.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_active_security_user_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<ListActiveSecurityUserRuleResult> listActiveSecurityUserRule(
  ListActiveSecurityUserRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityUserRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListActiveSecurityUserRuleResult.fromMap(result);
}

pulumi.Output<ListActiveSecurityUserRuleResult> listActiveSecurityUserRuleOutput(
  ListActiveSecurityUserRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityUserRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListActiveSecurityUserRuleResult.fromMap);
}

/// Lists Active Security User Rules in a network manager.
///
/// Uses Azure REST API version 2022-04-01-preview.
///
/// Other available API versions: 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_active_security_user_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<ListActiveSecurityUserRulesResult> listActiveSecurityUserRules(
  ListActiveSecurityUserRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityUserRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListActiveSecurityUserRulesResult.fromMap(result);
}

pulumi.Output<ListActiveSecurityUserRulesResult> listActiveSecurityUserRulesOutput(
  ListActiveSecurityUserRulesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listActiveSecurityUserRules',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListActiveSecurityUserRulesResult.fromMap);
}

/// List all effective connectivity configurations applied on a virtual network.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_effective_connectivity_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEffectiveConnectivityConfigurationResult> listEffectiveConnectivityConfiguration(
  ListEffectiveConnectivityConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listEffectiveConnectivityConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEffectiveConnectivityConfigurationResult.fromMap(result);
}

pulumi.Output<ListEffectiveConnectivityConfigurationResult> listEffectiveConnectivityConfigurationOutput(
  ListEffectiveConnectivityConfigurationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listEffectiveConnectivityConfiguration',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEffectiveConnectivityConfigurationResult.fromMap);
}

/// Lists all effective virtual networks by specified network group.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_effective_virtual_network_by_network_group_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEffectiveVirtualNetworkByNetworkGroupResult> listEffectiveVirtualNetworkByNetworkGroup(
  ListEffectiveVirtualNetworkByNetworkGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listEffectiveVirtualNetworkByNetworkGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEffectiveVirtualNetworkByNetworkGroupResult.fromMap(result);
}

pulumi.Output<ListEffectiveVirtualNetworkByNetworkGroupResult> listEffectiveVirtualNetworkByNetworkGroupOutput(
  ListEffectiveVirtualNetworkByNetworkGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listEffectiveVirtualNetworkByNetworkGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEffectiveVirtualNetworkByNetworkGroupResult.fromMap);
}

/// List effective virtual networks in a network manager.
///
/// Uses Azure REST API version 2022-04-01-preview.
///
/// Other available API versions: 2021-02-01-preview, 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_effective_virtual_network_by_network_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<ListEffectiveVirtualNetworkByNetworkManagerResult> listEffectiveVirtualNetworkByNetworkManager(
  ListEffectiveVirtualNetworkByNetworkManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listEffectiveVirtualNetworkByNetworkManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListEffectiveVirtualNetworkByNetworkManagerResult.fromMap(result);
}

pulumi.Output<ListEffectiveVirtualNetworkByNetworkManagerResult> listEffectiveVirtualNetworkByNetworkManagerOutput(
  ListEffectiveVirtualNetworkByNetworkManagerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listEffectiveVirtualNetworkByNetworkManager',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListEffectiveVirtualNetworkByNetworkManagerResult.fromMap);
}

/// Retrieves the current status of IDPS signatures for the relevant policy. Maximal amount of returned signatures is 1000.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_firewall_policy_idps_signature_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFirewallPolicyIdpsSignatureResult> listFirewallPolicyIdpsSignature(
  ListFirewallPolicyIdpsSignatureArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listFirewallPolicyIdpsSignature',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFirewallPolicyIdpsSignatureResult.fromMap(result);
}

pulumi.Output<ListFirewallPolicyIdpsSignatureResult> listFirewallPolicyIdpsSignatureOutput(
  ListFirewallPolicyIdpsSignatureArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listFirewallPolicyIdpsSignature',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListFirewallPolicyIdpsSignatureResult.fromMap);
}

/// Retrieves the current filter values for the signatures overrides
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_firewall_policy_idps_signatures_filter_value_args_doc}
/// [options] Invoke options controlling this call.
Future<ListFirewallPolicyIdpsSignaturesFilterValueResult> listFirewallPolicyIdpsSignaturesFilterValue(
  ListFirewallPolicyIdpsSignaturesFilterValueArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listFirewallPolicyIdpsSignaturesFilterValue',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListFirewallPolicyIdpsSignaturesFilterValueResult.fromMap(result);
}

pulumi.Output<ListFirewallPolicyIdpsSignaturesFilterValueResult> listFirewallPolicyIdpsSignaturesFilterValueOutput(
  ListFirewallPolicyIdpsSignaturesFilterValueArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listFirewallPolicyIdpsSignaturesFilterValue',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListFirewallPolicyIdpsSignaturesFilterValueResult.fromMap);
}

/// List of PoolAssociation
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-01-01-preview, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_ipam_pool_associated_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<ListIpamPoolAssociatedResourcesResult> listIpamPoolAssociatedResources(
  ListIpamPoolAssociatedResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listIpamPoolAssociatedResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListIpamPoolAssociatedResourcesResult.fromMap(result);
}

pulumi.Output<ListIpamPoolAssociatedResourcesResult> listIpamPoolAssociatedResourcesOutput(
  ListIpamPoolAssociatedResourcesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listIpamPoolAssociatedResources',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListIpamPoolAssociatedResourcesResult.fromMap);
}

/// Lists all effective virtual networks by specified network group.
///
/// Uses Azure REST API version 2022-04-01-preview.
///
/// Other available API versions: 2022-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_list_effective_virtual_network_by_network_group_args_doc}
/// [options] Invoke options controlling this call.
Future<ListListEffectiveVirtualNetworkByNetworkGroupResult> listListEffectiveVirtualNetworkByNetworkGroup(
  ListListEffectiveVirtualNetworkByNetworkGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listListEffectiveVirtualNetworkByNetworkGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListListEffectiveVirtualNetworkByNetworkGroupResult.fromMap(result);
}

pulumi.Output<ListListEffectiveVirtualNetworkByNetworkGroupResult> listListEffectiveVirtualNetworkByNetworkGroupOutput(
  ListListEffectiveVirtualNetworkByNetworkGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listListEffectiveVirtualNetworkByNetworkGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListListEffectiveVirtualNetworkByNetworkGroupResult.fromMap);
}

/// Post to List of Network Manager Deployment Status.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2021-02-01-preview, 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-01-01-preview, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_network_manager_deployment_status_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNetworkManagerDeploymentStatusResult> listNetworkManagerDeploymentStatus(
  ListNetworkManagerDeploymentStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerDeploymentStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNetworkManagerDeploymentStatusResult.fromMap(result);
}

pulumi.Output<ListNetworkManagerDeploymentStatusResult> listNetworkManagerDeploymentStatusOutput(
  ListNetworkManagerDeploymentStatusArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerDeploymentStatus',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNetworkManagerDeploymentStatusResult.fromMap);
}

/// List all effective connectivity configurations applied on a virtual network.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_network_manager_effective_connectivity_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNetworkManagerEffectiveConnectivityConfigurationsResult> listNetworkManagerEffectiveConnectivityConfigurations(
  ListNetworkManagerEffectiveConnectivityConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerEffectiveConnectivityConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNetworkManagerEffectiveConnectivityConfigurationsResult.fromMap(result);
}

pulumi.Output<ListNetworkManagerEffectiveConnectivityConfigurationsResult> listNetworkManagerEffectiveConnectivityConfigurationsOutput(
  ListNetworkManagerEffectiveConnectivityConfigurationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerEffectiveConnectivityConfigurations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNetworkManagerEffectiveConnectivityConfigurationsResult.fromMap);
}

/// List all effective security admin rules applied on a virtual network.
///
/// Uses Azure REST API version 2021-02-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_network_manager_effective_security_admin_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNetworkManagerEffectiveSecurityAdminRuleResult> listNetworkManagerEffectiveSecurityAdminRule(
  ListNetworkManagerEffectiveSecurityAdminRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerEffectiveSecurityAdminRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNetworkManagerEffectiveSecurityAdminRuleResult.fromMap(result);
}

pulumi.Output<ListNetworkManagerEffectiveSecurityAdminRuleResult> listNetworkManagerEffectiveSecurityAdminRuleOutput(
  ListNetworkManagerEffectiveSecurityAdminRuleArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerEffectiveSecurityAdminRule',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNetworkManagerEffectiveSecurityAdminRuleResult.fromMap);
}

/// List all effective security admin rules applied on a virtual network.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2022-01-01, 2022-02-01-preview, 2022-04-01-preview, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_network_manager_effective_security_admin_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<ListNetworkManagerEffectiveSecurityAdminRulesResult> listNetworkManagerEffectiveSecurityAdminRules(
  ListNetworkManagerEffectiveSecurityAdminRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerEffectiveSecurityAdminRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListNetworkManagerEffectiveSecurityAdminRulesResult.fromMap(result);
}

pulumi.Output<ListNetworkManagerEffectiveSecurityAdminRulesResult> listNetworkManagerEffectiveSecurityAdminRulesOutput(
  ListNetworkManagerEffectiveSecurityAdminRulesArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listNetworkManagerEffectiveSecurityAdminRules',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListNetworkManagerEffectiveSecurityAdminRulesResult.fromMap);
}

/// List all Radius servers with respective radius secrets from virtual network gateway VpnClientConfiguration.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_virtual_network_gateway_radius_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListVirtualNetworkGatewayRadiusSecretsResult> listVirtualNetworkGatewayRadiusSecrets(
  ListVirtualNetworkGatewayRadiusSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listVirtualNetworkGatewayRadiusSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListVirtualNetworkGatewayRadiusSecretsResult.fromMap(result);
}

pulumi.Output<ListVirtualNetworkGatewayRadiusSecretsResult> listVirtualNetworkGatewayRadiusSecretsOutput(
  ListVirtualNetworkGatewayRadiusSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listVirtualNetworkGatewayRadiusSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListVirtualNetworkGatewayRadiusSecretsResult.fromMap);
}

/// Gets the value of the shared key of VpnLink connection specified.
///
/// Uses Azure REST API version 2024-05-01.
///
/// Other available API versions: 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_vpn_link_connection_default_shared_key_args_doc}
/// [options] Invoke options controlling this call.
Future<ListVpnLinkConnectionDefaultSharedKeyResult> listVpnLinkConnectionDefaultSharedKey(
  ListVpnLinkConnectionDefaultSharedKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listVpnLinkConnectionDefaultSharedKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListVpnLinkConnectionDefaultSharedKeyResult.fromMap(result);
}

pulumi.Output<ListVpnLinkConnectionDefaultSharedKeyResult> listVpnLinkConnectionDefaultSharedKeyOutput(
  ListVpnLinkConnectionDefaultSharedKeyArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listVpnLinkConnectionDefaultSharedKey',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListVpnLinkConnectionDefaultSharedKeyResult.fromMap);
}

/// List all Radius servers with respective radius secrets from VpnServerConfiguration.
///
/// Uses Azure REST API version 2024-10-01.
///
/// Other available API versions: 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_network_list_vpn_server_configuration_radius_secrets_args_doc}
/// [options] Invoke options controlling this call.
Future<ListVpnServerConfigurationRadiusSecretsResult> listVpnServerConfigurationRadiusSecrets(
  ListVpnServerConfigurationRadiusSecretsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:network:listVpnServerConfigurationRadiusSecrets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListVpnServerConfigurationRadiusSecretsResult.fromMap(result);
}

pulumi.Output<ListVpnServerConfigurationRadiusSecretsResult> listVpnServerConfigurationRadiusSecretsOutput(
  ListVpnServerConfigurationRadiusSecretsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:network:listVpnServerConfigurationRadiusSecrets',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListVpnServerConfigurationRadiusSecretsResult.fromMap);
}
