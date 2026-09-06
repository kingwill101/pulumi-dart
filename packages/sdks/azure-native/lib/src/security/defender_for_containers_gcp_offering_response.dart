// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_gcp_offering_data_pipeline_native_cloud_connection_response.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_agentless_discovery_k8_sresponse.dart';
import 'defender_for_containers_gcp_offering_mdc_containers_image_assessment_response.dart';
import 'defender_for_containers_gcp_offering_native_cloud_connection_response.dart';
import 'defender_for_containers_gcp_offering_vm_scanners_response.dart';

/// The containers GCP offering
class DefenderForContainersGcpOfferingResponse {
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse?>? dataPipelineNativeCloudConnection;
  /// The offering description.
  final pulumi.Input<String> description;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool?>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool?>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool?>? enablePolicyAgentAutoProvisioning;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8SResponse?>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderForContainersGcpOfferingMdcContainersImageAssessmentResponse?>? mdcContainersImageAssessment;
  /// The native cloud connection configuration
  final pulumi.Input<DefenderForContainersGcpOfferingNativeCloudConnectionResponse?>? nativeCloudConnection;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersGcpOfferingVmScannersResponse?>? vmScanners;

  /// Creates a new [DefenderForContainersGcpOfferingResponse].
  /// [dataPipelineNativeCloudConnection] The native cloud connection configuration
  /// [description] The offering description.
  /// [enableAuditLogsAutoProvisioning] Is audit logs data collection enabled
  /// [enableDefenderAgentAutoProvisioning] Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  /// [enablePolicyAgentAutoProvisioning] Is Policy Kubernetes agent auto provisioning enabled
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [nativeCloudConnection] The native cloud connection configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  const DefenderForContainersGcpOfferingResponse({
    this.dataPipelineNativeCloudConnection,
    required this.description,
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
      'dataPipelineNativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse, Map<String, dynamic>>(dataPipelineNativeCloudConnection, (value) => value.toMap()),
      'description': description,
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8SResponse, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingMdcContainersImageAssessmentResponse, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'nativeCloudConnection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingNativeCloudConnectionResponse, Map<String, dynamic>>(nativeCloudConnection, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersGcpOfferingVmScannersResponse, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersGcpOfferingResponse(
      dataPipelineNativeCloudConnection: (() { final guardedValue = map['dataPipelineNativeCloudConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingDataPipelineNativeCloudConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      enableAuditLogsAutoProvisioning: (() { final guardedValue = map['enableAuditLogsAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDefenderAgentAutoProvisioning: (() { final guardedValue = map['enableDefenderAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePolicyAgentAutoProvisioning: (() { final guardedValue = map['enablePolicyAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingMdcContainersAgentlessDiscoveryK8SResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingMdcContainersImageAssessmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nativeCloudConnection: (() { final guardedValue = map['nativeCloudConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingNativeCloudConnectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersGcpOfferingVmScannersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
