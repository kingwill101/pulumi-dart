// ignore_for_file: unused_element, unnecessary_cast

import 'defender_for_containers_gcp_offering_data_pipeline_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_image_assessment.dart';
import 'defender_for_containers_gcp_offering_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_vm_scanners.dart';

/// The containers GCP offering
class DefenderForContainersGcpOffering {
  /// The native cloud connection configuration
  final DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection? dataPipelineNativeCloudConnection;
  /// Is audit logs data collection enabled
  final bool? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final bool? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final bool? enablePolicyAgentAutoProvisioning;
  /// The Microsoft Defender Container agentless discovery configuration
  final DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8s? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final DefenderForContainersGcpOfferingMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The native cloud connection configuration
  final DefenderForContainersGcpOfferingNativeCloudConnection? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersGcp'.
  final String offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final DefenderForContainersGcpOfferingVmScanners? vmScanners;

  /// Creates a new [DefenderForContainersGcpOffering].
  /// [dataPipelineNativeCloudConnection] The native cloud connection configuration
  /// [enableAuditLogsAutoProvisioning] Is audit logs data collection enabled
  /// [enableDefenderAgentAutoProvisioning] Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  /// [enablePolicyAgentAutoProvisioning] Is Policy Kubernetes agent auto provisioning enabled
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  DefenderForContainersGcpOffering({
    this.dataPipelineNativeCloudConnection,
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
      'dataPipelineNativeCloudConnection': ?dataPipelineNativeCloudConnection == null ? null : dataPipelineNativeCloudConnection!.toMap(),
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'mdcContainersAgentlessDiscoveryK8s': ?mdcContainersAgentlessDiscoveryK8s == null ? null : mdcContainersAgentlessDiscoveryK8s!.toMap(),
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'nativeCloudConnection': ?nativeCloudConnection == null ? null : nativeCloudConnection!.toMap(),
      'offeringType': offeringType,
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderForContainersGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOffering(
      dataPipelineNativeCloudConnection: map['dataPipelineNativeCloudConnection'] == null ? null : DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection.fromMap((map['dataPipelineNativeCloudConnection'] as Map).cast<String, dynamic>()),
      enableAuditLogsAutoProvisioning: map['enableAuditLogsAutoProvisioning'] == null ? null : map['enableAuditLogsAutoProvisioning'] as bool,
      enableDefenderAgentAutoProvisioning: map['enableDefenderAgentAutoProvisioning'] == null ? null : map['enableDefenderAgentAutoProvisioning'] as bool,
      enablePolicyAgentAutoProvisioning: map['enablePolicyAgentAutoProvisioning'] == null ? null : map['enablePolicyAgentAutoProvisioning'] as bool,
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>()),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderForContainersGcpOfferingMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : DefenderForContainersGcpOfferingNativeCloudConnection.fromMap((map['nativeCloudConnection'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      vmScanners: map['vmScanners'] == null ? null : DefenderForContainersGcpOfferingVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

