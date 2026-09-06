// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_gcp_offering_data_pipeline_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_agentless_discovery_k8_s.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_image_assessment.dart';
import 'defender_for_containers_gcp_offering_native_cloud_connection.dart';
import 'defender_for_containers_gcp_offering_vm_scanners.dart';

/// The containers GCP offering
class DefenderForContainersGcpOffering {
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection?>? dataPipelineNativeCloudConnection;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool?>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool?>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool?>? enablePolicyAgentAutoProvisioning;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8S?>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderForContainersGcpOfferingMdcContainersImageAssessment?>? mdcContainersImageAssessment;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingNativeCloudConnection?>? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersGcpOfferingVmScanners?>? vmScanners;

  /// Creates a new [DefenderForContainersGcpOffering].
  /// [dataPipelineNativeCloudConnection] The native cloud connection configuration
  /// [enableAuditLogsAutoProvisioning] Is audit logs data collection enabled
  /// [enableDefenderAgentAutoProvisioning] Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  /// [enablePolicyAgentAutoProvisioning] Is Policy Kubernetes agent auto provisioning enabled
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  const DefenderForContainersGcpOffering({
    this.dataPipelineNativeCloudConnection,
    this.enableAuditLogsAutoProvisioning,
    this.enableDefenderAgentAutoProvisioning,
    this.enablePolicyAgentAutoProvisioning,
    this.mdcContainersAgentlessDiscoveryK8S,
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
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8S, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'nativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingNativeCloudConnection, Map<String, dynamic>>(nativeCloudConnection, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOffering(
      dataPipelineNativeCloudConnection: (() { final guardedValue = map['dataPipelineNativeCloudConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingDataPipelineNativeCloudConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enableAuditLogsAutoProvisioning: (() { final guardedValue = map['enableAuditLogsAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDefenderAgentAutoProvisioning: (() { final guardedValue = map['enableDefenderAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePolicyAgentAutoProvisioning: (() { final guardedValue = map['enablePolicyAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8S.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nativeCloudConnection: (() { final guardedValue = map['nativeCloudConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingNativeCloudConnection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
