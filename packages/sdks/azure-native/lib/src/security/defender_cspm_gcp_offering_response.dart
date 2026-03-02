// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_gcp_offering_response_ciem_discovery.dart';
import 'defender_cspm_gcp_offering_response_data_sensitivity_discovery.dart';
import 'defender_cspm_gcp_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_cspm_gcp_offering_response_mdc_containers_image_assessment.dart';
import 'defender_cspm_gcp_offering_response_vm_scanners.dart';

/// The CSPM P1 for GCP offering
class DefenderCspmGcpOfferingResponse {
  /// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  final pulumi.Input<DefenderCspmGcpOfferingResponseCiemDiscovery>? ciemDiscovery;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final pulumi.Input<DefenderCspmGcpOfferingResponseDataSensitivityDiscovery>? dataSensitivityDiscovery;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderCspmGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s>? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderCspmGcpOfferingResponseMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for CSPM VM scanning configuration
  final pulumi.Input<DefenderCspmGcpOfferingResponseVmScanners>? vmScanners;

  /// Creates a new [DefenderCspmGcpOfferingResponse].
  /// [ciemDiscovery] GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [description] The offering description.
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM VM scanning configuration
  DefenderCspmGcpOfferingResponse({
    this.ciemDiscovery,
    this.dataSensitivityDiscovery,
    required this.description,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingResponseCiemDiscovery, Map<String, dynamic>>(ciemDiscovery, (value) => value.toMap()),
      'dataSensitivityDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingResponseDataSensitivityDiscovery, Map<String, dynamic>>(dataSensitivityDiscovery, (value) => value.toMap()),
      'description': description,
      'mdcContainersAgentlessDiscoveryK8s': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8s, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingResponseMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingResponseVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderCspmGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingResponse(
      ciemDiscovery: map['ciemDiscovery'] == null ? null : (DefenderCspmGcpOfferingResponseCiemDiscovery.fromMap((map['ciemDiscovery'] as Map).cast<String, dynamic>())).input(),
      dataSensitivityDiscovery: map['dataSensitivityDiscovery'] == null ? null : (DefenderCspmGcpOfferingResponseDataSensitivityDiscovery.fromMap((map['dataSensitivityDiscovery'] as Map).cast<String, dynamic>())).input(),
      description: (map['description'] as String).input(),
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : (DefenderCspmGcpOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>())).input(),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : (DefenderCspmGcpOfferingResponseMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderCspmGcpOfferingResponseVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

