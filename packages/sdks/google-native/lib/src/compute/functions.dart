import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_args.dart';
import 'get_address_compute_beta_args.dart';
import 'get_address_compute_beta_result.dart';
import 'get_address_compute_v1_args.dart';
import 'get_address_compute_v1_result.dart';
import 'get_address_result.dart';
import 'get_autoscaler_args.dart';
import 'get_autoscaler_compute_beta_args.dart';
import 'get_autoscaler_compute_beta_result.dart';
import 'get_autoscaler_compute_v1_args.dart';
import 'get_autoscaler_compute_v1_result.dart';
import 'get_autoscaler_result.dart';
import 'get_backend_bucket_args.dart';
import 'get_backend_bucket_compute_beta_args.dart';
import 'get_backend_bucket_compute_beta_result.dart';
import 'get_backend_bucket_compute_v1_args.dart';
import 'get_backend_bucket_compute_v1_result.dart';
import 'get_backend_bucket_iam_policy_args.dart';
import 'get_backend_bucket_iam_policy_compute_beta_args.dart';
import 'get_backend_bucket_iam_policy_compute_beta_result.dart';
import 'get_backend_bucket_iam_policy_compute_v1_args.dart';
import 'get_backend_bucket_iam_policy_compute_v1_result.dart';
import 'get_backend_bucket_iam_policy_result.dart';
import 'get_backend_bucket_result.dart';
import 'get_backend_service_args.dart';
import 'get_backend_service_compute_beta_args.dart';
import 'get_backend_service_compute_beta_result.dart';
import 'get_backend_service_compute_v1_args.dart';
import 'get_backend_service_compute_v1_result.dart';
import 'get_backend_service_iam_policy_args.dart';
import 'get_backend_service_iam_policy_compute_beta_args.dart';
import 'get_backend_service_iam_policy_compute_beta_result.dart';
import 'get_backend_service_iam_policy_compute_v1_args.dart';
import 'get_backend_service_iam_policy_compute_v1_result.dart';
import 'get_backend_service_iam_policy_result.dart';
import 'get_backend_service_result.dart';
import 'get_disk_args.dart';
import 'get_disk_compute_beta_args.dart';
import 'get_disk_compute_beta_result.dart';
import 'get_disk_compute_v1_args.dart';
import 'get_disk_compute_v1_result.dart';
import 'get_disk_iam_policy_args.dart';
import 'get_disk_iam_policy_compute_beta_args.dart';
import 'get_disk_iam_policy_compute_beta_result.dart';
import 'get_disk_iam_policy_compute_v1_args.dart';
import 'get_disk_iam_policy_compute_v1_result.dart';
import 'get_disk_iam_policy_result.dart';
import 'get_disk_result.dart';
import 'get_external_vpn_gateway_args.dart';
import 'get_external_vpn_gateway_compute_beta_args.dart';
import 'get_external_vpn_gateway_compute_beta_result.dart';
import 'get_external_vpn_gateway_compute_v1_args.dart';
import 'get_external_vpn_gateway_compute_v1_result.dart';
import 'get_external_vpn_gateway_result.dart';
import 'get_firewall_args.dart';
import 'get_firewall_compute_beta_args.dart';
import 'get_firewall_compute_beta_result.dart';
import 'get_firewall_compute_v1_args.dart';
import 'get_firewall_compute_v1_result.dart';
import 'get_firewall_policy_args.dart';
import 'get_firewall_policy_compute_beta_args.dart';
import 'get_firewall_policy_compute_beta_result.dart';
import 'get_firewall_policy_compute_v1_args.dart';
import 'get_firewall_policy_compute_v1_result.dart';
import 'get_firewall_policy_iam_policy_args.dart';
import 'get_firewall_policy_iam_policy_compute_beta_args.dart';
import 'get_firewall_policy_iam_policy_compute_beta_result.dart';
import 'get_firewall_policy_iam_policy_compute_v1_args.dart';
import 'get_firewall_policy_iam_policy_compute_v1_result.dart';
import 'get_firewall_policy_iam_policy_result.dart';
import 'get_firewall_policy_result.dart';
import 'get_firewall_result.dart';
import 'get_forwarding_rule_args.dart';
import 'get_forwarding_rule_compute_beta_args.dart';
import 'get_forwarding_rule_compute_beta_result.dart';
import 'get_forwarding_rule_compute_v1_args.dart';
import 'get_forwarding_rule_compute_v1_result.dart';
import 'get_forwarding_rule_result.dart';
import 'get_future_reservation_args.dart';
import 'get_future_reservation_compute_beta_args.dart';
import 'get_future_reservation_compute_beta_result.dart';
import 'get_future_reservation_result.dart';
import 'get_global_address_args.dart';
import 'get_global_address_compute_beta_args.dart';
import 'get_global_address_compute_beta_result.dart';
import 'get_global_address_compute_v1_args.dart';
import 'get_global_address_compute_v1_result.dart';
import 'get_global_address_result.dart';
import 'get_global_forwarding_rule_args.dart';
import 'get_global_forwarding_rule_compute_beta_args.dart';
import 'get_global_forwarding_rule_compute_beta_result.dart';
import 'get_global_forwarding_rule_compute_v1_args.dart';
import 'get_global_forwarding_rule_compute_v1_result.dart';
import 'get_global_forwarding_rule_result.dart';
import 'get_global_network_endpoint_group_args.dart';
import 'get_global_network_endpoint_group_compute_beta_args.dart';
import 'get_global_network_endpoint_group_compute_beta_result.dart';
import 'get_global_network_endpoint_group_compute_v1_args.dart';
import 'get_global_network_endpoint_group_compute_v1_result.dart';
import 'get_global_network_endpoint_group_result.dart';
import 'get_global_public_delegated_prefix_args.dart';
import 'get_global_public_delegated_prefix_compute_beta_args.dart';
import 'get_global_public_delegated_prefix_compute_beta_result.dart';
import 'get_global_public_delegated_prefix_compute_v1_args.dart';
import 'get_global_public_delegated_prefix_compute_v1_result.dart';
import 'get_global_public_delegated_prefix_result.dart';
import 'get_health_check_args.dart';
import 'get_health_check_compute_beta_args.dart';
import 'get_health_check_compute_beta_result.dart';
import 'get_health_check_compute_v1_args.dart';
import 'get_health_check_compute_v1_result.dart';
import 'get_health_check_result.dart';
import 'get_http_health_check_args.dart';
import 'get_http_health_check_compute_beta_args.dart';
import 'get_http_health_check_compute_beta_result.dart';
import 'get_http_health_check_compute_v1_args.dart';
import 'get_http_health_check_compute_v1_result.dart';
import 'get_http_health_check_result.dart';
import 'get_https_health_check_args.dart';
import 'get_https_health_check_compute_beta_args.dart';
import 'get_https_health_check_compute_beta_result.dart';
import 'get_https_health_check_compute_v1_args.dart';
import 'get_https_health_check_compute_v1_result.dart';
import 'get_https_health_check_result.dart';
import 'get_image_args.dart';
import 'get_image_compute_beta_args.dart';
import 'get_image_compute_beta_result.dart';
import 'get_image_compute_v1_args.dart';
import 'get_image_compute_v1_result.dart';
import 'get_image_iam_policy_args.dart';
import 'get_image_iam_policy_compute_beta_args.dart';
import 'get_image_iam_policy_compute_beta_result.dart';
import 'get_image_iam_policy_compute_v1_args.dart';
import 'get_image_iam_policy_compute_v1_result.dart';
import 'get_image_iam_policy_result.dart';
import 'get_image_result.dart';
import 'get_instance_args.dart';
import 'get_instance_compute_beta_args.dart';
import 'get_instance_compute_beta_result.dart';
import 'get_instance_compute_v1_args.dart';
import 'get_instance_compute_v1_result.dart';
import 'get_instance_group_args.dart';
import 'get_instance_group_compute_beta_args.dart';
import 'get_instance_group_compute_beta_result.dart';
import 'get_instance_group_compute_v1_args.dart';
import 'get_instance_group_compute_v1_result.dart';
import 'get_instance_group_manager_args.dart';
import 'get_instance_group_manager_compute_beta_args.dart';
import 'get_instance_group_manager_compute_beta_result.dart';
import 'get_instance_group_manager_compute_v1_args.dart';
import 'get_instance_group_manager_compute_v1_result.dart';
import 'get_instance_group_manager_resize_request_args.dart';
import 'get_instance_group_manager_resize_request_compute_beta_args.dart';
import 'get_instance_group_manager_resize_request_compute_beta_result.dart';
import 'get_instance_group_manager_resize_request_result.dart';
import 'get_instance_group_manager_result.dart';
import 'get_instance_group_result.dart';
import 'get_instance_iam_policy_args.dart';
import 'get_instance_iam_policy_compute_beta_args.dart';
import 'get_instance_iam_policy_compute_beta_result.dart';
import 'get_instance_iam_policy_compute_v1_args.dart';
import 'get_instance_iam_policy_compute_v1_result.dart';
import 'get_instance_iam_policy_result.dart';
import 'get_instance_result.dart';
import 'get_instance_template_args.dart';
import 'get_instance_template_compute_beta_args.dart';
import 'get_instance_template_compute_beta_result.dart';
import 'get_instance_template_compute_v1_args.dart';
import 'get_instance_template_compute_v1_result.dart';
import 'get_instance_template_iam_policy_args.dart';
import 'get_instance_template_iam_policy_compute_beta_args.dart';
import 'get_instance_template_iam_policy_compute_beta_result.dart';
import 'get_instance_template_iam_policy_compute_v1_args.dart';
import 'get_instance_template_iam_policy_compute_v1_result.dart';
import 'get_instance_template_iam_policy_result.dart';
import 'get_instance_template_result.dart';
import 'get_instant_snapshot_args.dart';
import 'get_instant_snapshot_compute_beta_args.dart';
import 'get_instant_snapshot_compute_beta_result.dart';
import 'get_instant_snapshot_iam_policy_args.dart';
import 'get_instant_snapshot_iam_policy_compute_beta_args.dart';
import 'get_instant_snapshot_iam_policy_compute_beta_result.dart';
import 'get_instant_snapshot_iam_policy_result.dart';
import 'get_instant_snapshot_result.dart';
import 'get_interconnect_args.dart';
import 'get_interconnect_attachment_args.dart';
import 'get_interconnect_attachment_compute_beta_args.dart';
import 'get_interconnect_attachment_compute_beta_result.dart';
import 'get_interconnect_attachment_compute_v1_args.dart';
import 'get_interconnect_attachment_compute_v1_result.dart';
import 'get_interconnect_attachment_iam_policy_args.dart';
import 'get_interconnect_attachment_iam_policy_result.dart';
import 'get_interconnect_attachment_result.dart';
import 'get_interconnect_compute_beta_args.dart';
import 'get_interconnect_compute_beta_result.dart';
import 'get_interconnect_compute_v1_args.dart';
import 'get_interconnect_compute_v1_result.dart';
import 'get_interconnect_iam_policy_args.dart';
import 'get_interconnect_iam_policy_result.dart';
import 'get_interconnect_result.dart';
import 'get_license_args.dart';
import 'get_license_code_iam_policy_args.dart';
import 'get_license_code_iam_policy_result.dart';
import 'get_license_compute_beta_args.dart';
import 'get_license_compute_beta_result.dart';
import 'get_license_compute_v1_args.dart';
import 'get_license_compute_v1_result.dart';
import 'get_license_iam_policy_args.dart';
import 'get_license_iam_policy_compute_beta_args.dart';
import 'get_license_iam_policy_compute_beta_result.dart';
import 'get_license_iam_policy_compute_v1_args.dart';
import 'get_license_iam_policy_compute_v1_result.dart';
import 'get_license_iam_policy_result.dart';
import 'get_license_result.dart';
import 'get_machine_image_args.dart';
import 'get_machine_image_compute_beta_args.dart';
import 'get_machine_image_compute_beta_result.dart';
import 'get_machine_image_compute_v1_args.dart';
import 'get_machine_image_compute_v1_result.dart';
import 'get_machine_image_iam_policy_args.dart';
import 'get_machine_image_iam_policy_compute_beta_args.dart';
import 'get_machine_image_iam_policy_compute_beta_result.dart';
import 'get_machine_image_iam_policy_compute_v1_args.dart';
import 'get_machine_image_iam_policy_compute_v1_result.dart';
import 'get_machine_image_iam_policy_result.dart';
import 'get_machine_image_result.dart';
import 'get_network_args.dart';
import 'get_network_attachment_args.dart';
import 'get_network_attachment_compute_beta_args.dart';
import 'get_network_attachment_compute_beta_result.dart';
import 'get_network_attachment_compute_v1_args.dart';
import 'get_network_attachment_compute_v1_result.dart';
import 'get_network_attachment_iam_policy_args.dart';
import 'get_network_attachment_iam_policy_compute_beta_args.dart';
import 'get_network_attachment_iam_policy_compute_beta_result.dart';
import 'get_network_attachment_iam_policy_compute_v1_args.dart';
import 'get_network_attachment_iam_policy_compute_v1_result.dart';
import 'get_network_attachment_iam_policy_result.dart';
import 'get_network_attachment_result.dart';
import 'get_network_compute_beta_args.dart';
import 'get_network_compute_beta_result.dart';
import 'get_network_compute_v1_args.dart';
import 'get_network_compute_v1_result.dart';
import 'get_network_edge_security_service_args.dart';
import 'get_network_edge_security_service_compute_beta_args.dart';
import 'get_network_edge_security_service_compute_beta_result.dart';
import 'get_network_edge_security_service_compute_v1_args.dart';
import 'get_network_edge_security_service_compute_v1_result.dart';
import 'get_network_edge_security_service_result.dart';
import 'get_network_endpoint_group_args.dart';
import 'get_network_endpoint_group_compute_beta_args.dart';
import 'get_network_endpoint_group_compute_beta_result.dart';
import 'get_network_endpoint_group_compute_v1_args.dart';
import 'get_network_endpoint_group_compute_v1_result.dart';
import 'get_network_endpoint_group_result.dart';
import 'get_network_firewall_policy_args.dart';
import 'get_network_firewall_policy_compute_beta_args.dart';
import 'get_network_firewall_policy_compute_beta_result.dart';
import 'get_network_firewall_policy_compute_v1_args.dart';
import 'get_network_firewall_policy_compute_v1_result.dart';
import 'get_network_firewall_policy_iam_policy_args.dart';
import 'get_network_firewall_policy_iam_policy_compute_beta_args.dart';
import 'get_network_firewall_policy_iam_policy_compute_beta_result.dart';
import 'get_network_firewall_policy_iam_policy_compute_v1_args.dart';
import 'get_network_firewall_policy_iam_policy_compute_v1_result.dart';
import 'get_network_firewall_policy_iam_policy_result.dart';
import 'get_network_firewall_policy_result.dart';
import 'get_network_result.dart';
import 'get_node_group_args.dart';
import 'get_node_group_compute_beta_args.dart';
import 'get_node_group_compute_beta_result.dart';
import 'get_node_group_compute_v1_args.dart';
import 'get_node_group_compute_v1_result.dart';
import 'get_node_group_iam_policy_args.dart';
import 'get_node_group_iam_policy_compute_beta_args.dart';
import 'get_node_group_iam_policy_compute_beta_result.dart';
import 'get_node_group_iam_policy_compute_v1_args.dart';
import 'get_node_group_iam_policy_compute_v1_result.dart';
import 'get_node_group_iam_policy_result.dart';
import 'get_node_group_result.dart';
import 'get_node_template_args.dart';
import 'get_node_template_compute_beta_args.dart';
import 'get_node_template_compute_beta_result.dart';
import 'get_node_template_compute_v1_args.dart';
import 'get_node_template_compute_v1_result.dart';
import 'get_node_template_iam_policy_args.dart';
import 'get_node_template_iam_policy_compute_beta_args.dart';
import 'get_node_template_iam_policy_compute_beta_result.dart';
import 'get_node_template_iam_policy_compute_v1_args.dart';
import 'get_node_template_iam_policy_compute_v1_result.dart';
import 'get_node_template_iam_policy_result.dart';
import 'get_node_template_result.dart';
import 'get_organization_security_policy_args.dart';
import 'get_organization_security_policy_compute_beta_args.dart';
import 'get_organization_security_policy_compute_beta_result.dart';
import 'get_organization_security_policy_result.dart';
import 'get_packet_mirroring_args.dart';
import 'get_packet_mirroring_compute_beta_args.dart';
import 'get_packet_mirroring_compute_beta_result.dart';
import 'get_packet_mirroring_compute_v1_args.dart';
import 'get_packet_mirroring_compute_v1_result.dart';
import 'get_packet_mirroring_result.dart';
import 'get_public_advertised_prefix_args.dart';
import 'get_public_advertised_prefix_compute_beta_args.dart';
import 'get_public_advertised_prefix_compute_beta_result.dart';
import 'get_public_advertised_prefix_compute_v1_args.dart';
import 'get_public_advertised_prefix_compute_v1_result.dart';
import 'get_public_advertised_prefix_result.dart';
import 'get_public_delegated_prefix_args.dart';
import 'get_public_delegated_prefix_compute_beta_args.dart';
import 'get_public_delegated_prefix_compute_beta_result.dart';
import 'get_public_delegated_prefix_compute_v1_args.dart';
import 'get_public_delegated_prefix_compute_v1_result.dart';
import 'get_public_delegated_prefix_result.dart';
import 'get_region_autoscaler_args.dart';
import 'get_region_autoscaler_compute_beta_args.dart';
import 'get_region_autoscaler_compute_beta_result.dart';
import 'get_region_autoscaler_compute_v1_args.dart';
import 'get_region_autoscaler_compute_v1_result.dart';
import 'get_region_autoscaler_result.dart';
import 'get_region_backend_service_args.dart';
import 'get_region_backend_service_compute_beta_args.dart';
import 'get_region_backend_service_compute_beta_result.dart';
import 'get_region_backend_service_compute_v1_args.dart';
import 'get_region_backend_service_compute_v1_result.dart';
import 'get_region_backend_service_iam_policy_args.dart';
import 'get_region_backend_service_iam_policy_compute_beta_args.dart';
import 'get_region_backend_service_iam_policy_compute_beta_result.dart';
import 'get_region_backend_service_iam_policy_compute_v1_args.dart';
import 'get_region_backend_service_iam_policy_compute_v1_result.dart';
import 'get_region_backend_service_iam_policy_result.dart';
import 'get_region_backend_service_result.dart';
import 'get_region_commitment_args.dart';
import 'get_region_commitment_compute_beta_args.dart';
import 'get_region_commitment_compute_beta_result.dart';
import 'get_region_commitment_compute_v1_args.dart';
import 'get_region_commitment_compute_v1_result.dart';
import 'get_region_commitment_result.dart';
import 'get_region_disk_args.dart';
import 'get_region_disk_compute_beta_args.dart';
import 'get_region_disk_compute_beta_result.dart';
import 'get_region_disk_compute_v1_args.dart';
import 'get_region_disk_compute_v1_result.dart';
import 'get_region_disk_iam_policy_args.dart';
import 'get_region_disk_iam_policy_compute_beta_args.dart';
import 'get_region_disk_iam_policy_compute_beta_result.dart';
import 'get_region_disk_iam_policy_compute_v1_args.dart';
import 'get_region_disk_iam_policy_compute_v1_result.dart';
import 'get_region_disk_iam_policy_result.dart';
import 'get_region_disk_result.dart';
import 'get_region_health_check_args.dart';
import 'get_region_health_check_compute_beta_args.dart';
import 'get_region_health_check_compute_beta_result.dart';
import 'get_region_health_check_compute_v1_args.dart';
import 'get_region_health_check_compute_v1_result.dart';
import 'get_region_health_check_result.dart';
import 'get_region_health_check_service_args.dart';
import 'get_region_health_check_service_compute_beta_args.dart';
import 'get_region_health_check_service_compute_beta_result.dart';
import 'get_region_health_check_service_compute_v1_args.dart';
import 'get_region_health_check_service_compute_v1_result.dart';
import 'get_region_health_check_service_result.dart';
import 'get_region_instance_group_manager_args.dart';
import 'get_region_instance_group_manager_compute_beta_args.dart';
import 'get_region_instance_group_manager_compute_beta_result.dart';
import 'get_region_instance_group_manager_compute_v1_args.dart';
import 'get_region_instance_group_manager_compute_v1_result.dart';
import 'get_region_instance_group_manager_result.dart';
import 'get_region_instance_template_args.dart';
import 'get_region_instance_template_compute_beta_args.dart';
import 'get_region_instance_template_compute_beta_result.dart';
import 'get_region_instance_template_compute_v1_args.dart';
import 'get_region_instance_template_compute_v1_result.dart';
import 'get_region_instance_template_result.dart';
import 'get_region_instant_snapshot_args.dart';
import 'get_region_instant_snapshot_compute_beta_args.dart';
import 'get_region_instant_snapshot_compute_beta_result.dart';
import 'get_region_instant_snapshot_iam_policy_args.dart';
import 'get_region_instant_snapshot_iam_policy_compute_beta_args.dart';
import 'get_region_instant_snapshot_iam_policy_compute_beta_result.dart';
import 'get_region_instant_snapshot_iam_policy_result.dart';
import 'get_region_instant_snapshot_result.dart';
import 'get_region_network_endpoint_group_args.dart';
import 'get_region_network_endpoint_group_compute_beta_args.dart';
import 'get_region_network_endpoint_group_compute_beta_result.dart';
import 'get_region_network_endpoint_group_compute_v1_args.dart';
import 'get_region_network_endpoint_group_compute_v1_result.dart';
import 'get_region_network_endpoint_group_result.dart';
import 'get_region_network_firewall_policy_args.dart';
import 'get_region_network_firewall_policy_compute_beta_args.dart';
import 'get_region_network_firewall_policy_compute_beta_result.dart';
import 'get_region_network_firewall_policy_compute_v1_args.dart';
import 'get_region_network_firewall_policy_compute_v1_result.dart';
import 'get_region_network_firewall_policy_iam_policy_args.dart';
import 'get_region_network_firewall_policy_iam_policy_compute_beta_args.dart';
import 'get_region_network_firewall_policy_iam_policy_compute_beta_result.dart';
import 'get_region_network_firewall_policy_iam_policy_compute_v1_args.dart';
import 'get_region_network_firewall_policy_iam_policy_compute_v1_result.dart';
import 'get_region_network_firewall_policy_iam_policy_result.dart';
import 'get_region_network_firewall_policy_result.dart';
import 'get_region_notification_endpoint_args.dart';
import 'get_region_notification_endpoint_compute_beta_args.dart';
import 'get_region_notification_endpoint_compute_beta_result.dart';
import 'get_region_notification_endpoint_compute_v1_args.dart';
import 'get_region_notification_endpoint_compute_v1_result.dart';
import 'get_region_notification_endpoint_result.dart';
import 'get_region_security_policy_args.dart';
import 'get_region_security_policy_compute_beta_args.dart';
import 'get_region_security_policy_compute_beta_result.dart';
import 'get_region_security_policy_compute_v1_args.dart';
import 'get_region_security_policy_compute_v1_result.dart';
import 'get_region_security_policy_result.dart';
import 'get_region_snapshot_args.dart';
import 'get_region_snapshot_iam_policy_args.dart';
import 'get_region_snapshot_iam_policy_result.dart';
import 'get_region_snapshot_result.dart';
import 'get_region_ssl_certificate_args.dart';
import 'get_region_ssl_certificate_compute_beta_args.dart';
import 'get_region_ssl_certificate_compute_beta_result.dart';
import 'get_region_ssl_certificate_compute_v1_args.dart';
import 'get_region_ssl_certificate_compute_v1_result.dart';
import 'get_region_ssl_certificate_result.dart';
import 'get_region_ssl_policy_args.dart';
import 'get_region_ssl_policy_compute_beta_args.dart';
import 'get_region_ssl_policy_compute_beta_result.dart';
import 'get_region_ssl_policy_compute_v1_args.dart';
import 'get_region_ssl_policy_compute_v1_result.dart';
import 'get_region_ssl_policy_result.dart';
import 'get_region_target_http_proxy_args.dart';
import 'get_region_target_http_proxy_compute_beta_args.dart';
import 'get_region_target_http_proxy_compute_beta_result.dart';
import 'get_region_target_http_proxy_compute_v1_args.dart';
import 'get_region_target_http_proxy_compute_v1_result.dart';
import 'get_region_target_http_proxy_result.dart';
import 'get_region_target_https_proxy_args.dart';
import 'get_region_target_https_proxy_compute_beta_args.dart';
import 'get_region_target_https_proxy_compute_beta_result.dart';
import 'get_region_target_https_proxy_compute_v1_args.dart';
import 'get_region_target_https_proxy_compute_v1_result.dart';
import 'get_region_target_https_proxy_result.dart';
import 'get_region_target_tcp_proxy_args.dart';
import 'get_region_target_tcp_proxy_compute_beta_args.dart';
import 'get_region_target_tcp_proxy_compute_beta_result.dart';
import 'get_region_target_tcp_proxy_compute_v1_args.dart';
import 'get_region_target_tcp_proxy_compute_v1_result.dart';
import 'get_region_target_tcp_proxy_result.dart';
import 'get_region_url_map_args.dart';
import 'get_region_url_map_compute_beta_args.dart';
import 'get_region_url_map_compute_beta_result.dart';
import 'get_region_url_map_compute_v1_args.dart';
import 'get_region_url_map_compute_v1_result.dart';
import 'get_region_url_map_result.dart';
import 'get_reservation_args.dart';
import 'get_reservation_compute_beta_args.dart';
import 'get_reservation_compute_beta_result.dart';
import 'get_reservation_compute_v1_args.dart';
import 'get_reservation_compute_v1_result.dart';
import 'get_reservation_iam_policy_args.dart';
import 'get_reservation_iam_policy_compute_beta_args.dart';
import 'get_reservation_iam_policy_compute_beta_result.dart';
import 'get_reservation_iam_policy_compute_v1_args.dart';
import 'get_reservation_iam_policy_compute_v1_result.dart';
import 'get_reservation_iam_policy_result.dart';
import 'get_reservation_result.dart';
import 'get_resource_policy_args.dart';
import 'get_resource_policy_compute_beta_args.dart';
import 'get_resource_policy_compute_beta_result.dart';
import 'get_resource_policy_compute_v1_args.dart';
import 'get_resource_policy_compute_v1_result.dart';
import 'get_resource_policy_iam_policy_args.dart';
import 'get_resource_policy_iam_policy_compute_beta_args.dart';
import 'get_resource_policy_iam_policy_compute_beta_result.dart';
import 'get_resource_policy_iam_policy_compute_v1_args.dart';
import 'get_resource_policy_iam_policy_compute_v1_result.dart';
import 'get_resource_policy_iam_policy_result.dart';
import 'get_resource_policy_result.dart';
import 'get_route_args.dart';
import 'get_route_compute_beta_args.dart';
import 'get_route_compute_beta_result.dart';
import 'get_route_compute_v1_args.dart';
import 'get_route_compute_v1_result.dart';
import 'get_route_result.dart';
import 'get_router_args.dart';
import 'get_router_compute_beta_args.dart';
import 'get_router_compute_beta_result.dart';
import 'get_router_compute_v1_args.dart';
import 'get_router_compute_v1_result.dart';
import 'get_router_result.dart';
import 'get_security_policy_args.dart';
import 'get_security_policy_compute_beta_args.dart';
import 'get_security_policy_compute_beta_result.dart';
import 'get_security_policy_compute_v1_args.dart';
import 'get_security_policy_compute_v1_result.dart';
import 'get_security_policy_result.dart';
import 'get_service_attachment_args.dart';
import 'get_service_attachment_compute_beta_args.dart';
import 'get_service_attachment_compute_beta_result.dart';
import 'get_service_attachment_compute_v1_args.dart';
import 'get_service_attachment_compute_v1_result.dart';
import 'get_service_attachment_iam_policy_args.dart';
import 'get_service_attachment_iam_policy_compute_beta_args.dart';
import 'get_service_attachment_iam_policy_compute_beta_result.dart';
import 'get_service_attachment_iam_policy_compute_v1_args.dart';
import 'get_service_attachment_iam_policy_compute_v1_result.dart';
import 'get_service_attachment_iam_policy_result.dart';
import 'get_service_attachment_result.dart';
import 'get_snapshot_args.dart';
import 'get_snapshot_compute_beta_args.dart';
import 'get_snapshot_compute_beta_result.dart';
import 'get_snapshot_compute_v1_args.dart';
import 'get_snapshot_compute_v1_result.dart';
import 'get_snapshot_iam_policy_args.dart';
import 'get_snapshot_iam_policy_compute_beta_args.dart';
import 'get_snapshot_iam_policy_compute_beta_result.dart';
import 'get_snapshot_iam_policy_compute_v1_args.dart';
import 'get_snapshot_iam_policy_compute_v1_result.dart';
import 'get_snapshot_iam_policy_result.dart';
import 'get_snapshot_result.dart';
import 'get_ssl_certificate_args.dart';
import 'get_ssl_certificate_compute_beta_args.dart';
import 'get_ssl_certificate_compute_beta_result.dart';
import 'get_ssl_certificate_compute_v1_args.dart';
import 'get_ssl_certificate_compute_v1_result.dart';
import 'get_ssl_certificate_result.dart';
import 'get_ssl_policy_args.dart';
import 'get_ssl_policy_compute_beta_args.dart';
import 'get_ssl_policy_compute_beta_result.dart';
import 'get_ssl_policy_compute_v1_args.dart';
import 'get_ssl_policy_compute_v1_result.dart';
import 'get_ssl_policy_result.dart';
import 'get_storage_pool_args.dart';
import 'get_storage_pool_iam_policy_args.dart';
import 'get_storage_pool_iam_policy_result.dart';
import 'get_storage_pool_result.dart';
import 'get_subnetwork_args.dart';
import 'get_subnetwork_compute_beta_args.dart';
import 'get_subnetwork_compute_beta_result.dart';
import 'get_subnetwork_compute_v1_args.dart';
import 'get_subnetwork_compute_v1_result.dart';
import 'get_subnetwork_iam_policy_args.dart';
import 'get_subnetwork_iam_policy_compute_beta_args.dart';
import 'get_subnetwork_iam_policy_compute_beta_result.dart';
import 'get_subnetwork_iam_policy_compute_v1_args.dart';
import 'get_subnetwork_iam_policy_compute_v1_result.dart';
import 'get_subnetwork_iam_policy_result.dart';
import 'get_subnetwork_result.dart';
import 'get_target_grpc_proxy_args.dart';
import 'get_target_grpc_proxy_compute_beta_args.dart';
import 'get_target_grpc_proxy_compute_beta_result.dart';
import 'get_target_grpc_proxy_compute_v1_args.dart';
import 'get_target_grpc_proxy_compute_v1_result.dart';
import 'get_target_grpc_proxy_result.dart';
import 'get_target_http_proxy_args.dart';
import 'get_target_http_proxy_compute_beta_args.dart';
import 'get_target_http_proxy_compute_beta_result.dart';
import 'get_target_http_proxy_compute_v1_args.dart';
import 'get_target_http_proxy_compute_v1_result.dart';
import 'get_target_http_proxy_result.dart';
import 'get_target_https_proxy_args.dart';
import 'get_target_https_proxy_compute_beta_args.dart';
import 'get_target_https_proxy_compute_beta_result.dart';
import 'get_target_https_proxy_compute_v1_args.dart';
import 'get_target_https_proxy_compute_v1_result.dart';
import 'get_target_https_proxy_result.dart';
import 'get_target_instance_args.dart';
import 'get_target_instance_compute_beta_args.dart';
import 'get_target_instance_compute_beta_result.dart';
import 'get_target_instance_compute_v1_args.dart';
import 'get_target_instance_compute_v1_result.dart';
import 'get_target_instance_result.dart';
import 'get_target_pool_args.dart';
import 'get_target_pool_compute_beta_args.dart';
import 'get_target_pool_compute_beta_result.dart';
import 'get_target_pool_compute_v1_args.dart';
import 'get_target_pool_compute_v1_result.dart';
import 'get_target_pool_result.dart';
import 'get_target_ssl_proxy_args.dart';
import 'get_target_ssl_proxy_compute_beta_args.dart';
import 'get_target_ssl_proxy_compute_beta_result.dart';
import 'get_target_ssl_proxy_compute_v1_args.dart';
import 'get_target_ssl_proxy_compute_v1_result.dart';
import 'get_target_ssl_proxy_result.dart';
import 'get_target_tcp_proxy_args.dart';
import 'get_target_tcp_proxy_compute_beta_args.dart';
import 'get_target_tcp_proxy_compute_beta_result.dart';
import 'get_target_tcp_proxy_compute_v1_args.dart';
import 'get_target_tcp_proxy_compute_v1_result.dart';
import 'get_target_tcp_proxy_result.dart';
import 'get_target_vpn_gateway_args.dart';
import 'get_target_vpn_gateway_compute_beta_args.dart';
import 'get_target_vpn_gateway_compute_beta_result.dart';
import 'get_target_vpn_gateway_compute_v1_args.dart';
import 'get_target_vpn_gateway_compute_v1_result.dart';
import 'get_target_vpn_gateway_result.dart';
import 'get_url_map_args.dart';
import 'get_url_map_compute_beta_args.dart';
import 'get_url_map_compute_beta_result.dart';
import 'get_url_map_compute_v1_args.dart';
import 'get_url_map_compute_v1_result.dart';
import 'get_url_map_result.dart';
import 'get_vpn_gateway_args.dart';
import 'get_vpn_gateway_compute_beta_args.dart';
import 'get_vpn_gateway_compute_beta_result.dart';
import 'get_vpn_gateway_compute_v1_args.dart';
import 'get_vpn_gateway_compute_v1_result.dart';
import 'get_vpn_gateway_result.dart';
import 'get_vpn_tunnel_args.dart';
import 'get_vpn_tunnel_compute_beta_args.dart';
import 'get_vpn_tunnel_compute_beta_result.dart';
import 'get_vpn_tunnel_compute_v1_args.dart';
import 'get_vpn_tunnel_compute_v1_result.dart';
import 'get_vpn_tunnel_result.dart';
import 'get_zone_queued_resource_args.dart';
import 'get_zone_queued_resource_result.dart';

/// Returns the specified address resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressResult> getAddress(
  GetAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressResult.fromMap(result);
}

/// Returns the specified autoscaler resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_autoscaler_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalerResult> getAutoscaler(
  GetAutoscalerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerResult.fromMap(result);
}

/// Returns the specified BackendBucket resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_backend_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketResult> getBackendBucket(
  GetBackendBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_backend_bucket_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketIamPolicyResult> getBackendBucketIamPolicy(
  GetBackendBucketIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyResult.fromMap(result);
}

/// Returns the specified BackendService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_backend_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceResult> getBackendService(
  GetBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceIamPolicyResult> getBackendServiceIamPolicy(
  GetBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceIamPolicyResult.fromMap(result);
}

/// Returns the specified persistent disk.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskResult> getDisk(
  GetDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_disk_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskIamPolicyResult> getDiskIamPolicy(
  GetDiskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyResult.fromMap(result);
}

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_external_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalVpnGatewayResult> getExternalVpnGateway(
  GetExternalVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getExternalVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayResult.fromMap(result);
}

/// Returns the specified firewall.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_firewall_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallResult> getFirewall(
  GetFirewallArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallResult.fromMap(result);
}

/// Returns the specified firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyResult> getFirewallPolicy(
  GetFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_firewall_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyIamPolicyResult> getFirewallPolicyIamPolicy(
  GetFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyIamPolicyResult.fromMap(result);
}

/// Returns the specified ForwardingRule resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_forwarding_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRuleResult> getForwardingRule(
  GetForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleResult.fromMap(result);
}

/// Retrieves information about the specified future reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_future_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFutureReservationResult> getFutureReservation(
  GetFutureReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getFutureReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFutureReservationResult.fromMap(result);
}

/// Returns the specified address resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_global_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalAddressResult> getGlobalAddress(
  GetGlobalAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressResult.fromMap(result);
}

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_global_forwarding_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalForwardingRuleResult> getGlobalForwardingRule(
  GetGlobalForwardingRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleResult.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_global_network_endpoint_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalNetworkEndpointGroupResult> getGlobalNetworkEndpointGroup(
  GetGlobalNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupResult.fromMap(result);
}

/// Returns the specified global PublicDelegatedPrefix resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_global_public_delegated_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalPublicDelegatedPrefixResult> getGlobalPublicDelegatedPrefix(
  GetGlobalPublicDelegatedPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixResult.fromMap(result);
}

/// Returns the specified HealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_health_check_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthCheckResult> getHealthCheck(
  GetHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckResult.fromMap(result);
}

/// Returns the specified HttpHealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_http_health_check_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpHealthCheckResult> getHttpHealthCheck(
  GetHttpHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getHttpHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckResult.fromMap(result);
}

/// Returns the specified HttpsHealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_https_health_check_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpsHealthCheckResult> getHttpsHealthCheck(
  GetHttpsHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getHttpsHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckResult.fromMap(result);
}

/// Returns the specified image.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageResult> getImage(
  GetImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_image_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageIamPolicyResult> getImageIamPolicy(
  GetImageIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageIamPolicyResult.fromMap(result);
}

/// Returns the specified Instance resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupResult> getInstanceGroup(
  GetInstanceGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupResult.fromMap(result);
}

/// Returns all of the details about the specified managed instance group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_group_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupManagerResult> getInstanceGroupManager(
  GetInstanceGroupManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResult.fromMap(result);
}

/// Returns all of the details about the specified resize request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_group_manager_resize_request_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupManagerResizeRequestResult>
getInstanceGroupManagerResizeRequest(
  GetInstanceGroupManagerResizeRequestArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceGroupManagerResizeRequest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResizeRequestResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyResult> getInstanceIamPolicy(
  GetInstanceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyResult.fromMap(result);
}

/// Returns the specified instance template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateResult> getInstanceTemplate(
  GetInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instance_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateIamPolicyResult> getInstanceTemplateIamPolicy(
  GetInstanceTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyResult.fromMap(result);
}

/// Returns the specified InstantSnapshot resource in the specified zone.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instant_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstantSnapshotResult> getInstantSnapshot(
  GetInstantSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_instant_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstantSnapshotIamPolicyResult> getInstantSnapshotIamPolicy(
  GetInstantSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotIamPolicyResult.fromMap(result);
}

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_interconnect_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectResult> getInterconnect(
  GetInterconnectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectResult.fromMap(result);
}

/// Returns the specified interconnect attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_interconnect_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectAttachmentResult> getInterconnectAttachment(
  GetInterconnectAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_interconnect_attachment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectAttachmentIamPolicyResult>
getInterconnectAttachmentIamPolicy(
  GetInterconnectAttachmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_interconnect_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectIamPolicyResult> getInterconnectIamPolicy(
  GetInterconnectIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getInterconnectIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectIamPolicyResult.fromMap(result);
}

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseResult> getLicense(
  GetLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_license_code_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseCodeIamPolicyResult> getLicenseCodeIamPolicy(
  GetLicenseCodeIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getLicenseCodeIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseCodeIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_license_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseIamPolicyResult> getLicenseIamPolicy(
  GetLicenseIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getLicenseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseIamPolicyResult.fromMap(result);
}

/// Returns the specified machine image.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_machine_image_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageResult> getMachineImage(
  GetMachineImageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getMachineImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_machine_image_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageIamPolicyResult> getMachineImageIamPolicy(
  GetMachineImageIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getMachineImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyResult.fromMap(result);
}

/// Returns the specified network.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkResult> getNetwork(
  GetNetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkResult.fromMap(result);
}

/// Returns the specified NetworkAttachment resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentResult> getNetworkAttachment(
  GetNetworkAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_attachment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentIamPolicyResult> getNetworkAttachmentIamPolicy(
  GetNetworkAttachmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentIamPolicyResult.fromMap(result);
}

/// Gets a specified NetworkEdgeSecurityService.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_edge_security_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEdgeSecurityServiceResult> getNetworkEdgeSecurityService(
  GetNetworkEdgeSecurityServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkEdgeSecurityService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceResult.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_endpoint_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEndpointGroupResult> getNetworkEndpointGroup(
  GetNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupResult.fromMap(result);
}

/// Returns the specified network firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyResult> getNetworkFirewallPolicy(
  GetNetworkFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_network_firewall_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyIamPolicyResult>
getNetworkFirewallPolicyIamPolicy(
  GetNetworkFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyIamPolicyResult.fromMap(result);
}

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_node_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupResult> getNodeGroup(
  GetNodeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_node_group_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupIamPolicyResult> getNodeGroupIamPolicy(
  GetNodeGroupIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupIamPolicyResult.fromMap(result);
}

/// Returns the specified node template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_node_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTemplateResult> getNodeTemplate(
  GetNodeTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_node_template_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTemplateIamPolicyResult> getNodeTemplateIamPolicy(
  GetNodeTemplateIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getNodeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateIamPolicyResult.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_organization_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSecurityPolicyResult> getOrganizationSecurityPolicy(
  GetOrganizationSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getOrganizationSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSecurityPolicyResult.fromMap(result);
}

/// Returns the specified PacketMirroring resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_packet_mirroring_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPacketMirroringResult> getPacketMirroring(
  GetPacketMirroringArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPacketMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringResult.fromMap(result);
}

/// Returns the specified PublicAdvertisedPrefix resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_public_advertised_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicAdvertisedPrefixResult> getPublicAdvertisedPrefix(
  GetPublicAdvertisedPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPublicAdvertisedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixResult.fromMap(result);
}

/// Returns the specified PublicDelegatedPrefix resource in the given region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_public_delegated_prefix_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicDelegatedPrefixResult> getPublicDelegatedPrefix(
  GetPublicDelegatedPrefixArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixResult.fromMap(result);
}

/// Returns the specified autoscaler.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_autoscaler_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalerResult> getRegionAutoscaler(
  GetRegionAutoscalerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerResult.fromMap(result);
}

/// Returns the specified regional BackendService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_backend_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceResult> getRegionBackendService(
  GetRegionBackendServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_backend_service_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceIamPolicyResult> getRegionBackendServiceIamPolicy(
  GetRegionBackendServiceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyResult.fromMap(result);
}

/// Returns the specified commitment resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_commitment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionCommitmentResult> getRegionCommitment(
  GetRegionCommitmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentResult.fromMap(result);
}

/// Returns a specified regional persistent disk.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_disk_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskResult> getRegionDisk(
  GetRegionDiskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_disk_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskIamPolicyResult> getRegionDiskIamPolicy(
  GetRegionDiskIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyResult.fromMap(result);
}

/// Returns the specified HealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_health_check_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionHealthCheckResult> getRegionHealthCheck(
  GetRegionHealthCheckArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckResult.fromMap(result);
}

/// Returns the specified regional HealthCheckService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_health_check_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionHealthCheckServiceResult> getRegionHealthCheckService(
  GetRegionHealthCheckServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionHealthCheckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceResult.fromMap(result);
}

/// Returns all of the details about the specified managed instance group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_instance_group_manager_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceGroupManagerResult> getRegionInstanceGroupManager(
  GetRegionInstanceGroupManagerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerResult.fromMap(result);
}

/// Returns the specified instance template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_instance_template_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceTemplateResult> getRegionInstanceTemplate(
  GetRegionInstanceTemplateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateResult.fromMap(result);
}

/// Returns the specified InstantSnapshot resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_instant_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstantSnapshotResult> getRegionInstantSnapshot(
  GetRegionInstantSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_instant_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstantSnapshotIamPolicyResult>
getRegionInstantSnapshotIamPolicy(
  GetRegionInstantSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotIamPolicyResult.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_network_endpoint_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkEndpointGroupResult> getRegionNetworkEndpointGroup(
  GetRegionNetworkEndpointGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupResult.fromMap(result);
}

/// Returns the specified network firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_network_firewall_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyResult> getRegionNetworkFirewallPolicy(
  GetRegionNetworkFirewallPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_network_firewall_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyIamPolicyResult>
getRegionNetworkFirewallPolicyIamPolicy(
  GetRegionNetworkFirewallPolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyResult.fromMap(result);
}

/// Returns the specified NotificationEndpoint resource in the given region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_notification_endpoint_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNotificationEndpointResult> getRegionNotificationEndpoint(
  GetRegionNotificationEndpointArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionNotificationEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointResult.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSecurityPolicyResult> getRegionSecurityPolicy(
  GetRegionSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyResult.fromMap(result);
}

/// Returns the specified Snapshot resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSnapshotResult> getRegionSnapshot(
  GetRegionSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSnapshotResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSnapshotIamPolicyResult> getRegionSnapshotIamPolicy(
  GetRegionSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSnapshotIamPolicyResult.fromMap(result);
}

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_ssl_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslCertificateResult> getRegionSslCertificate(
  GetRegionSslCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateResult.fromMap(result);
}

/// Lists all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_ssl_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslPolicyResult> getRegionSslPolicy(
  GetRegionSslPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyResult.fromMap(result);
}

/// Returns the specified TargetHttpProxy resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_target_http_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpProxyResult> getRegionTargetHttpProxy(
  GetRegionTargetHttpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyResult.fromMap(result);
}

/// Returns the specified TargetHttpsProxy resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_target_https_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpsProxyResult> getRegionTargetHttpsProxy(
  GetRegionTargetHttpsProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyResult.fromMap(result);
}

/// Returns the specified TargetTcpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_target_tcp_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetTcpProxyResult> getRegionTargetTcpProxy(
  GetRegionTargetTcpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyResult.fromMap(result);
}

/// Returns the specified UrlMap resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_region_url_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionUrlMapResult> getRegionUrlMap(
  GetRegionUrlMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRegionUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapResult.fromMap(result);
}

/// Retrieves information about the specified reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_reservation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationResult> getReservation(
  GetReservationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_reservation_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationIamPolicyResult> getReservationIamPolicy(
  GetReservationIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getReservationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationIamPolicyResult.fromMap(result);
}

/// Retrieves all information of the specified resource policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_resource_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyResult> getResourcePolicy(
  GetResourcePolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_resource_policy_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyIamPolicyResult> getResourcePolicyIamPolicy(
  GetResourcePolicyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getResourcePolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyIamPolicyResult.fromMap(result);
}

/// Returns the specified Route resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_route_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteResult> getRoute(
  GetRouteArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteResult.fromMap(result);
}

/// Returns the specified Router resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_router_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterResult> getRouter(
  GetRouterArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterResult.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_security_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPolicyResult> getSecurityPolicy(
  GetSecurityPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyResult.fromMap(result);
}

/// Returns the specified ServiceAttachment resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_service_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentResult> getServiceAttachment(
  GetServiceAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_service_attachment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentIamPolicyResult> getServiceAttachmentIamPolicy(
  GetServiceAttachmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyResult.fromMap(result);
}

/// Returns the specified Snapshot resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotResult> getSnapshot(
  GetSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_snapshot_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotIamPolicyResult> getSnapshotIamPolicy(
  GetSnapshotIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyResult.fromMap(result);
}

/// Returns the specified SslCertificate resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_ssl_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslCertificateResult> getSslCertificate(
  GetSslCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateResult.fromMap(result);
}

/// Lists all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_ssl_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslPolicyResult> getSslPolicy(
  GetSslPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyResult.fromMap(result);
}

/// Returns a specified storage pool. Gets a list of available storage pools by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_storage_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoragePoolResult> getStoragePool(
  GetStoragePoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getStoragePool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_storage_pool_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetStoragePoolIamPolicyResult> getStoragePoolIamPolicy(
  GetStoragePoolIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getStoragePoolIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetStoragePoolIamPolicyResult.fromMap(result);
}

/// Returns the specified subnetwork.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_subnetwork_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkResult> getSubnetwork(
  GetSubnetworkArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_subnetwork_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkIamPolicyResult> getSubnetworkIamPolicy(
  GetSubnetworkIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getSubnetworkIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyResult.fromMap(result);
}

/// Returns the specified TargetGrpcProxy resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_grpc_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetGrpcProxyResult> getTargetGrpcProxy(
  GetTargetGrpcProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetGrpcProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyResult.fromMap(result);
}

/// Returns the specified TargetHttpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_http_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpProxyResult> getTargetHttpProxy(
  GetTargetHttpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyResult.fromMap(result);
}

/// Returns the specified TargetHttpsProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_https_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpsProxyResult> getTargetHttpsProxy(
  GetTargetHttpsProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyResult.fromMap(result);
}

/// Returns the specified TargetInstance resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetInstanceResult> getTargetInstance(
  GetTargetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceResult.fromMap(result);
}

/// Returns the specified target pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetPoolResult> getTargetPool(
  GetTargetPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolResult.fromMap(result);
}

/// Returns the specified TargetSslProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_ssl_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetSslProxyResult> getTargetSslProxy(
  GetTargetSslProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetSslProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyResult.fromMap(result);
}

/// Returns the specified TargetTcpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_tcp_proxy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetTcpProxyResult> getTargetTcpProxy(
  GetTargetTcpProxyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyResult.fromMap(result);
}

/// Returns the specified target VPN gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_target_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetVpnGatewayResult> getTargetVpnGateway(
  GetTargetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getTargetVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayResult.fromMap(result);
}

/// Returns the specified UrlMap resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_url_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUrlMapResult> getUrlMap(
  GetUrlMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlMapResult.fromMap(result);
}

/// Returns the specified VPN gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_vpn_gateway_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnGatewayResult> getVpnGateway(
  GetVpnGatewayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayResult.fromMap(result);
}

/// Returns the specified VpnTunnel resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_vpn_tunnel_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnTunnelResult> getVpnTunnel(
  GetVpnTunnelArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getVpnTunnel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelResult.fromMap(result);
}

/// Returns the specified QueuedResource resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_alpha_get_zone_queued_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetZoneQueuedResourceResult> getZoneQueuedResource(
  GetZoneQueuedResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/alpha:getZoneQueuedResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetZoneQueuedResourceResult.fromMap(result);
}

/// Returns the specified address resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_address_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressComputeBetaResult> getAddressComputeBeta(
  GetAddressComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressComputeBetaResult.fromMap(result);
}

/// Returns the specified autoscaler resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_autoscaler_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalerComputeBetaResult> getAutoscalerComputeBeta(
  GetAutoscalerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerComputeBetaResult.fromMap(result);
}

/// Returns the specified BackendBucket resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_backend_bucket_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketComputeBetaResult> getBackendBucketComputeBeta(
  GetBackendBucketComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_backend_bucket_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketIamPolicyComputeBetaResult>
getBackendBucketIamPolicyComputeBeta(
  GetBackendBucketIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified BackendService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_backend_service_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceComputeBetaResult> getBackendServiceComputeBeta(
  GetBackendServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_backend_service_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceIamPolicyComputeBetaResult>
getBackendServiceIamPolicyComputeBeta(
  GetBackendServiceIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified persistent disk.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_disk_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskComputeBetaResult> getDiskComputeBeta(
  GetDiskComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_disk_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskIamPolicyComputeBetaResult> getDiskIamPolicyComputeBeta(
  GetDiskIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_external_vpn_gateway_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalVpnGatewayComputeBetaResult> getExternalVpnGatewayComputeBeta(
  GetExternalVpnGatewayComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getExternalVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayComputeBetaResult.fromMap(result);
}

/// Returns the specified firewall.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_firewall_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallComputeBetaResult> getFirewallComputeBeta(
  GetFirewallComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallComputeBetaResult.fromMap(result);
}

/// Returns the specified firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_firewall_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyComputeBetaResult> getFirewallPolicyComputeBeta(
  GetFirewallPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_firewall_policy_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyIamPolicyComputeBetaResult>
getFirewallPolicyIamPolicyComputeBeta(
  GetFirewallPolicyIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified ForwardingRule resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_forwarding_rule_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRuleComputeBetaResult> getForwardingRuleComputeBeta(
  GetForwardingRuleComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleComputeBetaResult.fromMap(result);
}

/// Retrieves information about the specified future reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_future_reservation_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFutureReservationComputeBetaResult> getFutureReservationComputeBeta(
  GetFutureReservationComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getFutureReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFutureReservationComputeBetaResult.fromMap(result);
}

/// Returns the specified address resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_global_address_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalAddressComputeBetaResult> getGlobalAddressComputeBeta(
  GetGlobalAddressComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressComputeBetaResult.fromMap(result);
}

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_global_forwarding_rule_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalForwardingRuleComputeBetaResult>
getGlobalForwardingRuleComputeBeta(
  GetGlobalForwardingRuleComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleComputeBetaResult.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_global_network_endpoint_group_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalNetworkEndpointGroupComputeBetaResult>
getGlobalNetworkEndpointGroupComputeBeta(
  GetGlobalNetworkEndpointGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupComputeBetaResult.fromMap(result);
}

/// Returns the specified global PublicDelegatedPrefix resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_global_public_delegated_prefix_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalPublicDelegatedPrefixComputeBetaResult>
getGlobalPublicDelegatedPrefixComputeBeta(
  GetGlobalPublicDelegatedPrefixComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixComputeBetaResult.fromMap(result);
}

/// Returns the specified HealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_health_check_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthCheckComputeBetaResult> getHealthCheckComputeBeta(
  GetHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckComputeBetaResult.fromMap(result);
}

/// Returns the specified HttpHealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_http_health_check_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpHealthCheckComputeBetaResult> getHttpHealthCheckComputeBeta(
  GetHttpHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHttpHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckComputeBetaResult.fromMap(result);
}

/// Returns the specified HttpsHealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_https_health_check_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpsHealthCheckComputeBetaResult> getHttpsHealthCheckComputeBeta(
  GetHttpsHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getHttpsHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckComputeBetaResult.fromMap(result);
}

/// Returns the specified image.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_image_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageComputeBetaResult> getImageComputeBeta(
  GetImageComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_image_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageIamPolicyComputeBetaResult> getImageIamPolicyComputeBeta(
  GetImageIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified Instance resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceComputeBetaResult> getInstanceComputeBeta(
  GetInstanceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceComputeBetaResult.fromMap(result);
}

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_group_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupComputeBetaResult> getInstanceGroupComputeBeta(
  GetInstanceGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupComputeBetaResult.fromMap(result);
}

/// Returns all of the details about the specified managed instance group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_group_manager_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupManagerComputeBetaResult>
getInstanceGroupManagerComputeBeta(
  GetInstanceGroupManagerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerComputeBetaResult.fromMap(result);
}

/// Returns all of the details about the specified resize request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_group_manager_resize_request_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupManagerResizeRequestComputeBetaResult>
getInstanceGroupManagerResizeRequestComputeBeta(
  GetInstanceGroupManagerResizeRequestComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceGroupManagerResizeRequest',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerResizeRequestComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyComputeBetaResult> getInstanceIamPolicyComputeBeta(
  GetInstanceIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified instance template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_template_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateComputeBetaResult> getInstanceTemplateComputeBeta(
  GetInstanceTemplateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instance_template_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateIamPolicyComputeBetaResult>
getInstanceTemplateIamPolicyComputeBeta(
  GetInstanceTemplateIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified InstantSnapshot resource in the specified zone.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instant_snapshot_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstantSnapshotComputeBetaResult> getInstantSnapshotComputeBeta(
  GetInstantSnapshotComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_instant_snapshot_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstantSnapshotIamPolicyComputeBetaResult>
getInstantSnapshotIamPolicyComputeBeta(
  GetInstantSnapshotIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstantSnapshotIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_interconnect_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectComputeBetaResult> getInterconnectComputeBeta(
  GetInterconnectComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectComputeBetaResult.fromMap(result);
}

/// Returns the specified interconnect attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_interconnect_attachment_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectAttachmentComputeBetaResult>
getInterconnectAttachmentComputeBeta(
  GetInterconnectAttachmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getInterconnectAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentComputeBetaResult.fromMap(result);
}

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_license_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseComputeBetaResult> getLicenseComputeBeta(
  GetLicenseComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_license_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseIamPolicyComputeBetaResult> getLicenseIamPolicyComputeBeta(
  GetLicenseIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getLicenseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified machine image.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_machine_image_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageComputeBetaResult> getMachineImageComputeBeta(
  GetMachineImageComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getMachineImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_machine_image_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageIamPolicyComputeBetaResult>
getMachineImageIamPolicyComputeBeta(
  GetMachineImageIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getMachineImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified network.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkComputeBetaResult> getNetworkComputeBeta(
  GetNetworkComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkComputeBetaResult.fromMap(result);
}

/// Returns the specified NetworkAttachment resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_attachment_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentComputeBetaResult> getNetworkAttachmentComputeBeta(
  GetNetworkAttachmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_attachment_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentIamPolicyComputeBetaResult>
getNetworkAttachmentIamPolicyComputeBeta(
  GetNetworkAttachmentIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentIamPolicyComputeBetaResult.fromMap(result);
}

/// Gets a specified NetworkEdgeSecurityService.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_edge_security_service_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEdgeSecurityServiceComputeBetaResult>
getNetworkEdgeSecurityServiceComputeBeta(
  GetNetworkEdgeSecurityServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkEdgeSecurityService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceComputeBetaResult.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_endpoint_group_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEndpointGroupComputeBetaResult>
getNetworkEndpointGroupComputeBeta(
  GetNetworkEndpointGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupComputeBetaResult.fromMap(result);
}

/// Returns the specified network firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_firewall_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyComputeBetaResult>
getNetworkFirewallPolicyComputeBeta(
  GetNetworkFirewallPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_network_firewall_policy_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyIamPolicyComputeBetaResult>
getNetworkFirewallPolicyIamPolicyComputeBeta(
  GetNetworkFirewallPolicyIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_node_group_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupComputeBetaResult> getNodeGroupComputeBeta(
  GetNodeGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_node_group_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupIamPolicyComputeBetaResult> getNodeGroupIamPolicyComputeBeta(
  GetNodeGroupIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified node template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_node_template_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTemplateComputeBetaResult> getNodeTemplateComputeBeta(
  GetNodeTemplateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_node_template_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTemplateIamPolicyComputeBetaResult>
getNodeTemplateIamPolicyComputeBeta(
  GetNodeTemplateIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getNodeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateIamPolicyComputeBetaResult.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_organization_security_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSecurityPolicyComputeBetaResult>
getOrganizationSecurityPolicyComputeBeta(
  GetOrganizationSecurityPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getOrganizationSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSecurityPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified PacketMirroring resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_packet_mirroring_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPacketMirroringComputeBetaResult> getPacketMirroringComputeBeta(
  GetPacketMirroringComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPacketMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringComputeBetaResult.fromMap(result);
}

/// Returns the specified PublicAdvertisedPrefix resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_public_advertised_prefix_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicAdvertisedPrefixComputeBetaResult>
getPublicAdvertisedPrefixComputeBeta(
  GetPublicAdvertisedPrefixComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPublicAdvertisedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixComputeBetaResult.fromMap(result);
}

/// Returns the specified PublicDelegatedPrefix resource in the given region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_public_delegated_prefix_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicDelegatedPrefixComputeBetaResult>
getPublicDelegatedPrefixComputeBeta(
  GetPublicDelegatedPrefixComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixComputeBetaResult.fromMap(result);
}

/// Returns the specified autoscaler.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_autoscaler_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalerComputeBetaResult> getRegionAutoscalerComputeBeta(
  GetRegionAutoscalerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerComputeBetaResult.fromMap(result);
}

/// Returns the specified regional BackendService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_backend_service_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceComputeBetaResult>
getRegionBackendServiceComputeBeta(
  GetRegionBackendServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_backend_service_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceIamPolicyComputeBetaResult>
getRegionBackendServiceIamPolicyComputeBeta(
  GetRegionBackendServiceIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified commitment resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_commitment_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionCommitmentComputeBetaResult> getRegionCommitmentComputeBeta(
  GetRegionCommitmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentComputeBetaResult.fromMap(result);
}

/// Returns a specified regional persistent disk.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_disk_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskComputeBetaResult> getRegionDiskComputeBeta(
  GetRegionDiskComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_disk_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskIamPolicyComputeBetaResult>
getRegionDiskIamPolicyComputeBeta(
  GetRegionDiskIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified HealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_health_check_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionHealthCheckComputeBetaResult> getRegionHealthCheckComputeBeta(
  GetRegionHealthCheckComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckComputeBetaResult.fromMap(result);
}

/// Returns the specified regional HealthCheckService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_health_check_service_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionHealthCheckServiceComputeBetaResult>
getRegionHealthCheckServiceComputeBeta(
  GetRegionHealthCheckServiceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionHealthCheckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceComputeBetaResult.fromMap(result);
}

/// Returns all of the details about the specified managed instance group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_instance_group_manager_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceGroupManagerComputeBetaResult>
getRegionInstanceGroupManagerComputeBeta(
  GetRegionInstanceGroupManagerComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerComputeBetaResult.fromMap(result);
}

/// Returns the specified instance template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_instance_template_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceTemplateComputeBetaResult>
getRegionInstanceTemplateComputeBeta(
  GetRegionInstanceTemplateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateComputeBetaResult.fromMap(result);
}

/// Returns the specified InstantSnapshot resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_instant_snapshot_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstantSnapshotComputeBetaResult>
getRegionInstantSnapshotComputeBeta(
  GetRegionInstantSnapshotComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstantSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_instant_snapshot_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstantSnapshotIamPolicyComputeBetaResult>
getRegionInstantSnapshotIamPolicyComputeBeta(
  GetRegionInstantSnapshotIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionInstantSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstantSnapshotIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_network_endpoint_group_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkEndpointGroupComputeBetaResult>
getRegionNetworkEndpointGroupComputeBeta(
  GetRegionNetworkEndpointGroupComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupComputeBetaResult.fromMap(result);
}

/// Returns the specified network firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_network_firewall_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyComputeBetaResult>
getRegionNetworkFirewallPolicyComputeBeta(
  GetRegionNetworkFirewallPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_network_firewall_policy_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyIamPolicyComputeBetaResult>
getRegionNetworkFirewallPolicyIamPolicyComputeBeta(
  GetRegionNetworkFirewallPolicyIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyComputeBetaResult.fromMap(
    result,
  );
}

/// Returns the specified NotificationEndpoint resource in the given region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_notification_endpoint_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNotificationEndpointComputeBetaResult>
getRegionNotificationEndpointComputeBeta(
  GetRegionNotificationEndpointComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionNotificationEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointComputeBetaResult.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_security_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSecurityPolicyComputeBetaResult>
getRegionSecurityPolicyComputeBeta(
  GetRegionSecurityPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_ssl_certificate_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslCertificateComputeBetaResult>
getRegionSslCertificateComputeBeta(
  GetRegionSslCertificateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateComputeBetaResult.fromMap(result);
}

/// Lists all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_ssl_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslPolicyComputeBetaResult> getRegionSslPolicyComputeBeta(
  GetRegionSslPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetHttpProxy resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_target_http_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpProxyComputeBetaResult>
getRegionTargetHttpProxyComputeBeta(
  GetRegionTargetHttpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetHttpsProxy resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_target_https_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpsProxyComputeBetaResult>
getRegionTargetHttpsProxyComputeBeta(
  GetRegionTargetHttpsProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetTcpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_target_tcp_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetTcpProxyComputeBetaResult>
getRegionTargetTcpProxyComputeBeta(
  GetRegionTargetTcpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified UrlMap resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_region_url_map_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionUrlMapComputeBetaResult> getRegionUrlMapComputeBeta(
  GetRegionUrlMapComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRegionUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapComputeBetaResult.fromMap(result);
}

/// Retrieves information about the specified reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_reservation_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationComputeBetaResult> getReservationComputeBeta(
  GetReservationComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_reservation_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationIamPolicyComputeBetaResult>
getReservationIamPolicyComputeBeta(
  GetReservationIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getReservationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationIamPolicyComputeBetaResult.fromMap(result);
}

/// Retrieves all information of the specified resource policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_resource_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyComputeBetaResult> getResourcePolicyComputeBeta(
  GetResourcePolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_resource_policy_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyIamPolicyComputeBetaResult>
getResourcePolicyIamPolicyComputeBeta(
  GetResourcePolicyIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getResourcePolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified Route resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_route_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteComputeBetaResult> getRouteComputeBeta(
  GetRouteComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteComputeBetaResult.fromMap(result);
}

/// Returns the specified Router resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_router_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterComputeBetaResult> getRouterComputeBeta(
  GetRouterComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterComputeBetaResult.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_security_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPolicyComputeBetaResult> getSecurityPolicyComputeBeta(
  GetSecurityPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified ServiceAttachment resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_service_attachment_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentComputeBetaResult> getServiceAttachmentComputeBeta(
  GetServiceAttachmentComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_service_attachment_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentIamPolicyComputeBetaResult>
getServiceAttachmentIamPolicyComputeBeta(
  GetServiceAttachmentIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified Snapshot resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_snapshot_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotComputeBetaResult> getSnapshotComputeBeta(
  GetSnapshotComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_snapshot_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotIamPolicyComputeBetaResult> getSnapshotIamPolicyComputeBeta(
  GetSnapshotIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified SslCertificate resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_ssl_certificate_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslCertificateComputeBetaResult> getSslCertificateComputeBeta(
  GetSslCertificateComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateComputeBetaResult.fromMap(result);
}

/// Lists all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_ssl_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslPolicyComputeBetaResult> getSslPolicyComputeBeta(
  GetSslPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified subnetwork.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_subnetwork_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkComputeBetaResult> getSubnetworkComputeBeta(
  GetSubnetworkComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkComputeBetaResult.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_subnetwork_iam_policy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkIamPolicyComputeBetaResult>
getSubnetworkIamPolicyComputeBeta(
  GetSubnetworkIamPolicyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getSubnetworkIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetGrpcProxy resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_grpc_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetGrpcProxyComputeBetaResult> getTargetGrpcProxyComputeBeta(
  GetTargetGrpcProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetGrpcProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetHttpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_http_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpProxyComputeBetaResult> getTargetHttpProxyComputeBeta(
  GetTargetHttpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetHttpsProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_https_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpsProxyComputeBetaResult> getTargetHttpsProxyComputeBeta(
  GetTargetHttpsProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetInstance resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_instance_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetInstanceComputeBetaResult> getTargetInstanceComputeBeta(
  GetTargetInstanceComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceComputeBetaResult.fromMap(result);
}

/// Returns the specified target pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_pool_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetPoolComputeBetaResult> getTargetPoolComputeBeta(
  GetTargetPoolComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetSslProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_ssl_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetSslProxyComputeBetaResult> getTargetSslProxyComputeBeta(
  GetTargetSslProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetSslProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified TargetTcpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_tcp_proxy_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetTcpProxyComputeBetaResult> getTargetTcpProxyComputeBeta(
  GetTargetTcpProxyComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyComputeBetaResult.fromMap(result);
}

/// Returns the specified target VPN gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_target_vpn_gateway_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetVpnGatewayComputeBetaResult> getTargetVpnGatewayComputeBeta(
  GetTargetVpnGatewayComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getTargetVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayComputeBetaResult.fromMap(result);
}

/// Returns the specified UrlMap resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_url_map_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUrlMapComputeBetaResult> getUrlMapComputeBeta(
  GetUrlMapComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlMapComputeBetaResult.fromMap(result);
}

/// Returns the specified VPN gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_vpn_gateway_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnGatewayComputeBetaResult> getVpnGatewayComputeBeta(
  GetVpnGatewayComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayComputeBetaResult.fromMap(result);
}

/// Returns the specified VpnTunnel resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_beta_get_vpn_tunnel_compute_beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnTunnelComputeBetaResult> getVpnTunnelComputeBeta(
  GetVpnTunnelComputeBetaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/beta:getVpnTunnel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelComputeBetaResult.fromMap(result);
}

/// Returns the specified address resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_address_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAddressComputeV1Result> getAddressComputeV1(
  GetAddressComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressComputeV1Result.fromMap(result);
}

/// Returns the specified autoscaler resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_autoscaler_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutoscalerComputeV1Result> getAutoscalerComputeV1(
  GetAutoscalerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutoscalerComputeV1Result.fromMap(result);
}

/// Returns the specified BackendBucket resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_backend_bucket_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketComputeV1Result> getBackendBucketComputeV1(
  GetBackendBucketComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_backend_bucket_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendBucketIamPolicyComputeV1Result>
getBackendBucketIamPolicyComputeV1(
  GetBackendBucketIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendBucketIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendBucketIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified BackendService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_backend_service_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceComputeV1Result> getBackendServiceComputeV1(
  GetBackendServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_backend_service_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackendServiceIamPolicyComputeV1Result>
getBackendServiceIamPolicyComputeV1(
  GetBackendServiceIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackendServiceIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified persistent disk.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_disk_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskComputeV1Result> getDiskComputeV1(
  GetDiskComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_disk_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDiskIamPolicyComputeV1Result> getDiskIamPolicyComputeV1(
  GetDiskIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDiskIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified externalVpnGateway. Get a list of available externalVpnGateways by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_external_vpn_gateway_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExternalVpnGatewayComputeV1Result> getExternalVpnGatewayComputeV1(
  GetExternalVpnGatewayComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getExternalVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExternalVpnGatewayComputeV1Result.fromMap(result);
}

/// Returns the specified firewall.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_firewall_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallComputeV1Result> getFirewallComputeV1(
  GetFirewallComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewall',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallComputeV1Result.fromMap(result);
}

/// Returns the specified firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_firewall_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyComputeV1Result> getFirewallPolicyComputeV1(
  GetFirewallPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_firewall_policy_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFirewallPolicyIamPolicyComputeV1Result>
getFirewallPolicyIamPolicyComputeV1(
  GetFirewallPolicyIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFirewallPolicyIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified ForwardingRule resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_forwarding_rule_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardingRuleComputeV1Result> getForwardingRuleComputeV1(
  GetForwardingRuleComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardingRuleComputeV1Result.fromMap(result);
}

/// Returns the specified address resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_global_address_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalAddressComputeV1Result> getGlobalAddressComputeV1(
  GetGlobalAddressComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalAddressComputeV1Result.fromMap(result);
}

/// Returns the specified GlobalForwardingRule resource. Gets a list of available forwarding rules by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_global_forwarding_rule_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalForwardingRuleComputeV1Result> getGlobalForwardingRuleComputeV1(
  GetGlobalForwardingRuleComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalForwardingRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalForwardingRuleComputeV1Result.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_global_network_endpoint_group_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalNetworkEndpointGroupComputeV1Result>
getGlobalNetworkEndpointGroupComputeV1(
  GetGlobalNetworkEndpointGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalNetworkEndpointGroupComputeV1Result.fromMap(result);
}

/// Returns the specified global PublicDelegatedPrefix resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_global_public_delegated_prefix_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGlobalPublicDelegatedPrefixComputeV1Result>
getGlobalPublicDelegatedPrefixComputeV1(
  GetGlobalPublicDelegatedPrefixComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getGlobalPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGlobalPublicDelegatedPrefixComputeV1Result.fromMap(result);
}

/// Returns the specified HealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_health_check_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHealthCheckComputeV1Result> getHealthCheckComputeV1(
  GetHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHealthCheckComputeV1Result.fromMap(result);
}

/// Returns the specified HttpHealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_http_health_check_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpHealthCheckComputeV1Result> getHttpHealthCheckComputeV1(
  GetHttpHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHttpHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpHealthCheckComputeV1Result.fromMap(result);
}

/// Returns the specified HttpsHealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_https_health_check_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHttpsHealthCheckComputeV1Result> getHttpsHealthCheckComputeV1(
  GetHttpsHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getHttpsHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHttpsHealthCheckComputeV1Result.fromMap(result);
}

/// Returns the specified image.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_image_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageComputeV1Result> getImageComputeV1(
  GetImageComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_image_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImageIamPolicyComputeV1Result> getImageIamPolicyComputeV1(
  GetImageIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImageIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified Instance resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_instance_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceComputeV1Result> getInstanceComputeV1(
  GetInstanceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceComputeV1Result.fromMap(result);
}

/// Returns the specified zonal instance group. Get a list of available zonal instance groups by making a list() request. For managed instance groups, use the instanceGroupManagers or regionInstanceGroupManagers methods instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_instance_group_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupComputeV1Result> getInstanceGroupComputeV1(
  GetInstanceGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupComputeV1Result.fromMap(result);
}

/// Returns all of the details about the specified managed instance group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_instance_group_manager_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceGroupManagerComputeV1Result> getInstanceGroupManagerComputeV1(
  GetInstanceGroupManagerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceGroupManagerComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_instance_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceIamPolicyComputeV1Result> getInstanceIamPolicyComputeV1(
  GetInstanceIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified instance template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_instance_template_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateComputeV1Result> getInstanceTemplateComputeV1(
  GetInstanceTemplateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_instance_template_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceTemplateIamPolicyComputeV1Result>
getInstanceTemplateIamPolicyComputeV1(
  GetInstanceTemplateIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInstanceTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceTemplateIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified Interconnect. Get a list of available Interconnects by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_interconnect_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectComputeV1Result> getInterconnectComputeV1(
  GetInterconnectComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInterconnect',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectComputeV1Result.fromMap(result);
}

/// Returns the specified interconnect attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_interconnect_attachment_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterconnectAttachmentComputeV1Result>
getInterconnectAttachmentComputeV1(
  GetInterconnectAttachmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getInterconnectAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterconnectAttachmentComputeV1Result.fromMap(result);
}

/// Returns the specified License resource. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_license_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseComputeV1Result> getLicenseComputeV1(
  GetLicenseComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists. *Caution* This resource is intended for use only by third-party partners who are creating Cloud Marketplace images.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_license_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseIamPolicyComputeV1Result> getLicenseIamPolicyComputeV1(
  GetLicenseIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getLicenseIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified machine image.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_machine_image_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageComputeV1Result> getMachineImageComputeV1(
  GetMachineImageComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getMachineImage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_machine_image_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineImageIamPolicyComputeV1Result>
getMachineImageIamPolicyComputeV1(
  GetMachineImageIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getMachineImageIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineImageIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified network.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkComputeV1Result> getNetworkComputeV1(
  GetNetworkComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkComputeV1Result.fromMap(result);
}

/// Returns the specified NetworkAttachment resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_attachment_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentComputeV1Result> getNetworkAttachmentComputeV1(
  GetNetworkAttachmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_attachment_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAttachmentIamPolicyComputeV1Result>
getNetworkAttachmentIamPolicyComputeV1(
  GetNetworkAttachmentIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAttachmentIamPolicyComputeV1Result.fromMap(result);
}

/// Gets a specified NetworkEdgeSecurityService.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_edge_security_service_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEdgeSecurityServiceComputeV1Result>
getNetworkEdgeSecurityServiceComputeV1(
  GetNetworkEdgeSecurityServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkEdgeSecurityService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEdgeSecurityServiceComputeV1Result.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_endpoint_group_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkEndpointGroupComputeV1Result> getNetworkEndpointGroupComputeV1(
  GetNetworkEndpointGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkEndpointGroupComputeV1Result.fromMap(result);
}

/// Returns the specified network firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_firewall_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyComputeV1Result>
getNetworkFirewallPolicyComputeV1(
  GetNetworkFirewallPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_network_firewall_policy_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkFirewallPolicyIamPolicyComputeV1Result>
getNetworkFirewallPolicyIamPolicyComputeV1(
  GetNetworkFirewallPolicyIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkFirewallPolicyIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified NodeGroup. Get a list of available NodeGroups by making a list() request. Note: the "nodes" field should not be used. Use nodeGroups.listNodes instead.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_node_group_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupComputeV1Result> getNodeGroupComputeV1(
  GetNodeGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_node_group_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeGroupIamPolicyComputeV1Result> getNodeGroupIamPolicyComputeV1(
  GetNodeGroupIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeGroupIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeGroupIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified node template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_node_template_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTemplateComputeV1Result> getNodeTemplateComputeV1(
  GetNodeTemplateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_node_template_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNodeTemplateIamPolicyComputeV1Result>
getNodeTemplateIamPolicyComputeV1(
  GetNodeTemplateIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getNodeTemplateIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNodeTemplateIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified PacketMirroring resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_packet_mirroring_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPacketMirroringComputeV1Result> getPacketMirroringComputeV1(
  GetPacketMirroringComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPacketMirroring',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPacketMirroringComputeV1Result.fromMap(result);
}

/// Returns the specified PublicAdvertisedPrefix resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_public_advertised_prefix_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicAdvertisedPrefixComputeV1Result>
getPublicAdvertisedPrefixComputeV1(
  GetPublicAdvertisedPrefixComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPublicAdvertisedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicAdvertisedPrefixComputeV1Result.fromMap(result);
}

/// Returns the specified PublicDelegatedPrefix resource in the given region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_public_delegated_prefix_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicDelegatedPrefixComputeV1Result>
getPublicDelegatedPrefixComputeV1(
  GetPublicDelegatedPrefixComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getPublicDelegatedPrefix',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicDelegatedPrefixComputeV1Result.fromMap(result);
}

/// Returns the specified autoscaler.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_autoscaler_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionAutoscalerComputeV1Result> getRegionAutoscalerComputeV1(
  GetRegionAutoscalerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionAutoscaler',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionAutoscalerComputeV1Result.fromMap(result);
}

/// Returns the specified regional BackendService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_backend_service_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceComputeV1Result> getRegionBackendServiceComputeV1(
  GetRegionBackendServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionBackendService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_backend_service_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionBackendServiceIamPolicyComputeV1Result>
getRegionBackendServiceIamPolicyComputeV1(
  GetRegionBackendServiceIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionBackendServiceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionBackendServiceIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified commitment resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_commitment_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionCommitmentComputeV1Result> getRegionCommitmentComputeV1(
  GetRegionCommitmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionCommitment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionCommitmentComputeV1Result.fromMap(result);
}

/// Returns a specified regional persistent disk.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_disk_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskComputeV1Result> getRegionDiskComputeV1(
  GetRegionDiskComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionDisk',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_disk_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionDiskIamPolicyComputeV1Result> getRegionDiskIamPolicyComputeV1(
  GetRegionDiskIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionDiskIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionDiskIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified HealthCheck resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_health_check_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionHealthCheckComputeV1Result> getRegionHealthCheckComputeV1(
  GetRegionHealthCheckComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionHealthCheck',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckComputeV1Result.fromMap(result);
}

/// Returns the specified regional HealthCheckService resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_health_check_service_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionHealthCheckServiceComputeV1Result>
getRegionHealthCheckServiceComputeV1(
  GetRegionHealthCheckServiceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionHealthCheckService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionHealthCheckServiceComputeV1Result.fromMap(result);
}

/// Returns all of the details about the specified managed instance group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_instance_group_manager_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceGroupManagerComputeV1Result>
getRegionInstanceGroupManagerComputeV1(
  GetRegionInstanceGroupManagerComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionInstanceGroupManager',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceGroupManagerComputeV1Result.fromMap(result);
}

/// Returns the specified instance template.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_instance_template_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionInstanceTemplateComputeV1Result>
getRegionInstanceTemplateComputeV1(
  GetRegionInstanceTemplateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionInstanceTemplate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionInstanceTemplateComputeV1Result.fromMap(result);
}

/// Returns the specified network endpoint group.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_network_endpoint_group_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkEndpointGroupComputeV1Result>
getRegionNetworkEndpointGroupComputeV1(
  GetRegionNetworkEndpointGroupComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkEndpointGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkEndpointGroupComputeV1Result.fromMap(result);
}

/// Returns the specified network firewall policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_network_firewall_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyComputeV1Result>
getRegionNetworkFirewallPolicyComputeV1(
  GetRegionNetworkFirewallPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkFirewallPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_network_firewall_policy_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNetworkFirewallPolicyIamPolicyComputeV1Result>
getRegionNetworkFirewallPolicyIamPolicyComputeV1(
  GetRegionNetworkFirewallPolicyIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNetworkFirewallPolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNetworkFirewallPolicyIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified NotificationEndpoint resource in the given region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_notification_endpoint_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionNotificationEndpointComputeV1Result>
getRegionNotificationEndpointComputeV1(
  GetRegionNotificationEndpointComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionNotificationEndpoint',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionNotificationEndpointComputeV1Result.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_security_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSecurityPolicyComputeV1Result> getRegionSecurityPolicyComputeV1(
  GetRegionSecurityPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSecurityPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified SslCertificate resource in the specified region. Get a list of available SSL certificates by making a list() request.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_ssl_certificate_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslCertificateComputeV1Result> getRegionSslCertificateComputeV1(
  GetRegionSslCertificateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslCertificateComputeV1Result.fromMap(result);
}

/// Lists all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_ssl_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionSslPolicyComputeV1Result> getRegionSslPolicyComputeV1(
  GetRegionSslPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionSslPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetHttpProxy resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_target_http_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpProxyComputeV1Result>
getRegionTargetHttpProxyComputeV1(
  GetRegionTargetHttpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpProxyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetHttpsProxy resource in the specified region.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_target_https_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetHttpsProxyComputeV1Result>
getRegionTargetHttpsProxyComputeV1(
  GetRegionTargetHttpsProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetHttpsProxyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetTcpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_target_tcp_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionTargetTcpProxyComputeV1Result> getRegionTargetTcpProxyComputeV1(
  GetRegionTargetTcpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionTargetTcpProxyComputeV1Result.fromMap(result);
}

/// Returns the specified UrlMap resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_region_url_map_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionUrlMapComputeV1Result> getRegionUrlMapComputeV1(
  GetRegionUrlMapComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRegionUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionUrlMapComputeV1Result.fromMap(result);
}

/// Retrieves information about the specified reservation.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_reservation_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationComputeV1Result> getReservationComputeV1(
  GetReservationComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getReservation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_reservation_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReservationIamPolicyComputeV1Result> getReservationIamPolicyComputeV1(
  GetReservationIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getReservationIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReservationIamPolicyComputeV1Result.fromMap(result);
}

/// Retrieves all information of the specified resource policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_resource_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyComputeV1Result> getResourcePolicyComputeV1(
  GetResourcePolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getResourcePolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_resource_policy_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcePolicyIamPolicyComputeV1Result>
getResourcePolicyIamPolicyComputeV1(
  GetResourcePolicyIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getResourcePolicyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcePolicyIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified Route resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_route_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteComputeV1Result> getRouteComputeV1(
  GetRouteComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRoute',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteComputeV1Result.fromMap(result);
}

/// Returns the specified Router resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_router_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterComputeV1Result> getRouterComputeV1(
  GetRouterComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getRouter',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterComputeV1Result.fromMap(result);
}

/// List all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_security_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityPolicyComputeV1Result> getSecurityPolicyComputeV1(
  GetSecurityPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSecurityPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified ServiceAttachment resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_service_attachment_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentComputeV1Result> getServiceAttachmentComputeV1(
  GetServiceAttachmentComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getServiceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_service_attachment_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServiceAttachmentIamPolicyComputeV1Result>
getServiceAttachmentIamPolicyComputeV1(
  GetServiceAttachmentIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getServiceAttachmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServiceAttachmentIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified Snapshot resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_snapshot_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotComputeV1Result> getSnapshotComputeV1(
  GetSnapshotComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_snapshot_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotIamPolicyComputeV1Result> getSnapshotIamPolicyComputeV1(
  GetSnapshotIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSnapshotIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified SslCertificate resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_ssl_certificate_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslCertificateComputeV1Result> getSslCertificateComputeV1(
  GetSslCertificateComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSslCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslCertificateComputeV1Result.fromMap(result);
}

/// Lists all of the ordered rules present in a single specified policy.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_ssl_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslPolicyComputeV1Result> getSslPolicyComputeV1(
  GetSslPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSslPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified subnetwork.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_subnetwork_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkComputeV1Result> getSubnetworkComputeV1(
  GetSubnetworkComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSubnetwork',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkComputeV1Result.fromMap(result);
}

/// Gets the access control policy for a resource. May be empty if no such policy or resource exists.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_subnetwork_iam_policy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubnetworkIamPolicyComputeV1Result> getSubnetworkIamPolicyComputeV1(
  GetSubnetworkIamPolicyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getSubnetworkIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubnetworkIamPolicyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetGrpcProxy resource in the given scope.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_grpc_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetGrpcProxyComputeV1Result> getTargetGrpcProxyComputeV1(
  GetTargetGrpcProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetGrpcProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetGrpcProxyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetHttpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_http_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpProxyComputeV1Result> getTargetHttpProxyComputeV1(
  GetTargetHttpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetHttpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpProxyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetHttpsProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_https_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetHttpsProxyComputeV1Result> getTargetHttpsProxyComputeV1(
  GetTargetHttpsProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetHttpsProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetHttpsProxyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetInstance resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_instance_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetInstanceComputeV1Result> getTargetInstanceComputeV1(
  GetTargetInstanceComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetInstanceComputeV1Result.fromMap(result);
}

/// Returns the specified target pool.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_pool_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetPoolComputeV1Result> getTargetPoolComputeV1(
  GetTargetPoolComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetPoolComputeV1Result.fromMap(result);
}

/// Returns the specified TargetSslProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_ssl_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetSslProxyComputeV1Result> getTargetSslProxyComputeV1(
  GetTargetSslProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetSslProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetSslProxyComputeV1Result.fromMap(result);
}

/// Returns the specified TargetTcpProxy resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_tcp_proxy_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetTcpProxyComputeV1Result> getTargetTcpProxyComputeV1(
  GetTargetTcpProxyComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetTcpProxy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetTcpProxyComputeV1Result.fromMap(result);
}

/// Returns the specified target VPN gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_target_vpn_gateway_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetVpnGatewayComputeV1Result> getTargetVpnGatewayComputeV1(
  GetTargetVpnGatewayComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getTargetVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetVpnGatewayComputeV1Result.fromMap(result);
}

/// Returns the specified UrlMap resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_url_map_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUrlMapComputeV1Result> getUrlMapComputeV1(
  GetUrlMapComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getUrlMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUrlMapComputeV1Result.fromMap(result);
}

/// Returns the specified VPN gateway.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_vpn_gateway_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnGatewayComputeV1Result> getVpnGatewayComputeV1(
  GetVpnGatewayComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getVpnGateway',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnGatewayComputeV1Result.fromMap(result);
}

/// Returns the specified VpnTunnel resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_compute_v1_get_vpn_tunnel_compute_v1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpnTunnelComputeV1Result> getVpnTunnelComputeV1(
  GetVpnTunnelComputeV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:compute/v1:getVpnTunnel',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpnTunnelComputeV1Result.fromMap(result);
}
