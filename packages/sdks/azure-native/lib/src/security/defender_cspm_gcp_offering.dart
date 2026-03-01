// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_gcp_offering_ciem_discovery.dart';
import 'defender_cspm_gcp_offering_data_sensitivity_discovery.dart';
import 'defender_cspm_gcp_offering_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_cspm_gcp_offering_mdc_containers_image_assessment.dart';
import 'defender_cspm_gcp_offering_vm_scanners.dart';

/// The CSPM P1 for GCP offering
class DefenderCspmGcpOffering {
  /// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  final DefenderCspmGcpOfferingCiemDiscovery? ciemDiscovery;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final DefenderCspmGcpOfferingDataSensitivityDiscovery? dataSensitivityDiscovery;
  /// The Microsoft Defender Container agentless discovery configuration
  final DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8s? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender Container image assessment configuration
  final DefenderCspmGcpOfferingMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmGcp'.
  final String offeringType;
  /// The Microsoft Defender for CSPM VM scanning configuration
  final DefenderCspmGcpOfferingVmScanners? vmScanners;

  /// Creates a new [DefenderCspmGcpOffering].
  /// [ciemDiscovery] GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM VM scanning configuration
  DefenderCspmGcpOffering({
    this.ciemDiscovery,
    this.dataSensitivityDiscovery,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?ciemDiscovery == null ? null : ciemDiscovery!.toMap(),
      'dataSensitivityDiscovery': ?dataSensitivityDiscovery == null ? null : dataSensitivityDiscovery!.toMap(),
      'mdcContainersAgentlessDiscoveryK8s': ?mdcContainersAgentlessDiscoveryK8s == null ? null : mdcContainersAgentlessDiscoveryK8s!.toMap(),
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'offeringType': offeringType,
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderCspmGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOffering(
      ciemDiscovery: map['ciemDiscovery'] == null ? null : DefenderCspmGcpOfferingCiemDiscovery.fromMap((map['ciemDiscovery'] as Map).cast<String, dynamic>()),
      dataSensitivityDiscovery: map['dataSensitivityDiscovery'] == null ? null : DefenderCspmGcpOfferingDataSensitivityDiscovery.fromMap((map['dataSensitivityDiscovery'] as Map).cast<String, dynamic>()),
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>()),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderCspmGcpOfferingMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      vmScanners: map['vmScanners'] == null ? null : DefenderCspmGcpOfferingVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

