// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_gcp_offering_response_data_pipeline_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_for_containers_gcp_offering_response_mdc_containers_image_assessment.dart';
import 'defender_for_containers_gcp_offering_response_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_response_vm_scanners.dart';

/// The containers GCP offering
class DefenderForContainersGcpOfferingResponse {
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection>? dataPipelineNativeCloudConnection;
  /// The offering description.
  final pulumi.Input<String> description;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enablePolicyAgentAutoProvisioning;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderForContainersGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s>? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingResponseNativeCloudConnection>? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersGcpOfferingResponseVmScanners>? vmScanners;

  /// Creates a new [DefenderForContainersGcpOfferingResponse].
  /// [dataPipelineNativeCloudConnection] The native cloud connection configuration
  /// [description] The offering description.
  /// [enableAuditLogsAutoProvisioning] Is audit logs data collection enabled
  /// [enableDefenderAgentAutoProvisioning] Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  /// [enablePolicyAgentAutoProvisioning] Is Policy Kubernetes agent auto provisioning enabled
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  DefenderForContainersGcpOfferingResponse({
    this.dataPipelineNativeCloudConnection,
    required this.description,
    this.enableAuditLogsAutoProvisioning,
    this.enableDefenderAgentAutoProvisioning,
    this.enablePolicyAgentAutoProvisioning,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    this.nativeCloudConnection,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataPipelineNativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection, Map<String, dynamic>>(dataPipelineNativeCloudConnection, (value) => value.toMap()),
      'description': description,
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'mdcContainersAgentlessDiscoveryK8s': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8s, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'nativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingResponseNativeCloudConnection, Map<String, dynamic>>(nativeCloudConnection, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingResponseVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingResponse(
      dataPipelineNativeCloudConnection: map['dataPipelineNativeCloudConnection'] == null ? null : (DefenderForContainersGcpOfferingResponseDataPipelineNativeCloudConnection.fromMap((map['dataPipelineNativeCloudConnection']! as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      enableAuditLogsAutoProvisioning: map['enableAuditLogsAutoProvisioning'] == null ? null : (map['enableAuditLogsAutoProvisioning']! as bool).input(),
      enableDefenderAgentAutoProvisioning: map['enableDefenderAgentAutoProvisioning'] == null ? null : (map['enableDefenderAgentAutoProvisioning']! as bool).input(),
      enablePolicyAgentAutoProvisioning: map['enablePolicyAgentAutoProvisioning'] == null ? null : (map['enablePolicyAgentAutoProvisioning']! as bool).input(),
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : (DefenderForContainersGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s']! as Map).cast<String, dynamic>())).input(),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : (DefenderForContainersGcpOfferingResponseMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment']! as Map).cast<String, dynamic>())).input(),
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : (DefenderForContainersGcpOfferingResponseNativeCloudConnection.fromMap((map['nativeCloudConnection']! as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderForContainersGcpOfferingResponseVmScanners.fromMap((map['vmScanners']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

