// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_gcp_offering_data_pipeline_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_image_assessment.dart';
import 'defender_for_containers_gcp_offering_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_vm_scanners.dart';

/// The containers GCP offering
class DefenderForContainersGcpOffering {
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection>? dataPipelineNativeCloudConnection;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enablePolicyAgentAutoProvisioning;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8s>? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderForContainersGcpOfferingMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingNativeCloudConnection>? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersGcpOfferingVmScanners>? vmScanners;

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
      'dataPipelineNativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection, Map<String, dynamic>>(dataPipelineNativeCloudConnection, (value) => value.toMap()),
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'mdcContainersAgentlessDiscoveryK8s': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8s, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8s, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'nativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingNativeCloudConnection, Map<String, dynamic>>(nativeCloudConnection, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOffering(
      dataPipelineNativeCloudConnection: map['dataPipelineNativeCloudConnection'] == null ? null : (DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection.fromMap((map['dataPipelineNativeCloudConnection']! as Map).cast<String, dynamic>())).input(),
      enableAuditLogsAutoProvisioning: map['enableAuditLogsAutoProvisioning'] == null ? null : (map['enableAuditLogsAutoProvisioning']! as bool).input(),
      enableDefenderAgentAutoProvisioning: map['enableDefenderAgentAutoProvisioning'] == null ? null : (map['enableDefenderAgentAutoProvisioning']! as bool).input(),
      enablePolicyAgentAutoProvisioning: map['enablePolicyAgentAutoProvisioning'] == null ? null : (map['enablePolicyAgentAutoProvisioning']! as bool).input(),
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : (DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s']! as Map).cast<String, dynamic>())).input(),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : (DefenderForContainersGcpOfferingMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment']! as Map).cast<String, dynamic>())).input(),
      nativeCloudConnection: map['nativeCloudConnection'] == null ? null : (DefenderForContainersGcpOfferingNativeCloudConnection.fromMap((map['nativeCloudConnection']! as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderForContainersGcpOfferingVmScanners.fromMap((map['vmScanners']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

