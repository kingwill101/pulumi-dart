// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_gcp_offering_ciem_discovery.dart';
import 'defender_cspm_gcp_offering_data_sensitivity_discovery.dart';
import 'defender_cspm_gcp_offering_mdc_containers_agentless_discovery_k8_s.dart';
import 'defender_cspm_gcp_offering_mdc_containers_image_assessment.dart';
import 'defender_cspm_gcp_offering_vm_scanners.dart';

/// The CSPM P1 for GCP offering
class DefenderCspmGcpOffering {
  /// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  final pulumi.Input<DefenderCspmGcpOfferingCiemDiscovery>? ciemDiscovery;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final pulumi.Input<DefenderCspmGcpOfferingDataSensitivityDiscovery>? dataSensitivityDiscovery;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8S>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderCspmGcpOfferingMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for CSPM VM scanning configuration
  final pulumi.Input<DefenderCspmGcpOfferingVmScanners>? vmScanners;

  /// Creates a new [DefenderCspmGcpOffering].
  /// [ciemDiscovery] GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM VM scanning configuration
  const DefenderCspmGcpOffering({
    this.ciemDiscovery,
    this.dataSensitivityDiscovery,
    this.mdcContainersAgentlessDiscoveryK8S,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingCiemDiscovery, Map<String, dynamic>>(ciemDiscovery, (value) => value.toMap()),
      'dataSensitivityDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingDataSensitivityDiscovery, Map<String, dynamic>>(dataSensitivityDiscovery, (value) => value.toMap()),
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8S, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderCspmGcpOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOffering(
      ciemDiscovery: (() { final guardedValue = map['ciemDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingCiemDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSensitivityDiscovery: (() { final guardedValue = map['dataSensitivityDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingDataSensitivityDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8S.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
