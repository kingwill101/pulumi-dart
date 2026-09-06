// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_gcp_offering_ciem_discovery_response.dart';
import 'defender_cspm_gcp_offering_data_sensitivity_discovery_response.dart';
import 'defender_cspm_gcp_offering_mdc_containers_agentless_discovery_k8_sresponse.dart';
import 'defender_cspm_gcp_offering_mdc_containers_image_assessment_response.dart';
import 'defender_cspm_gcp_offering_vm_scanners_response.dart';

/// The CSPM P1 for GCP offering
class DefenderCspmGcpOfferingResponse {
  /// GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  final pulumi.Input<DefenderCspmGcpOfferingCiemDiscoveryResponse?>? ciemDiscovery;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final pulumi.Input<DefenderCspmGcpOfferingDataSensitivityDiscoveryResponse?>? dataSensitivityDiscovery;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender Container agentless discovery configuration
  final pulumi.Input<DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8SResponse?>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderCspmGcpOfferingMdcContainersImageAssessmentResponse?>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmGcp'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for CSPM VM scanning configuration
  final pulumi.Input<DefenderCspmGcpOfferingVmScannersResponse?>? vmScanners;

  /// Creates a new [DefenderCspmGcpOfferingResponse].
  /// [ciemDiscovery] GCP Defenders CSPM Permissions Management OIDC (Open ID connect) connection configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [description] The offering description.
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender Container agentless discovery configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM VM scanning configuration
  const DefenderCspmGcpOfferingResponse({
    this.ciemDiscovery,
    this.dataSensitivityDiscovery,
    required this.description,
    this.mdcContainersAgentlessDiscoveryK8S,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciemDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingCiemDiscoveryResponse, Map<String, dynamic>>(ciemDiscovery, (value) => value.toMap()),
      'dataSensitivityDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingDataSensitivityDiscoveryResponse, Map<String, dynamic>>(dataSensitivityDiscovery, (value) => value.toMap()),
      'description': description,
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8SResponse, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingMdcContainersImageAssessmentResponse, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderCspmGcpOfferingVmScannersResponse, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderCspmGcpOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmGcpOfferingResponse(
      ciemDiscovery: (() { final guardedValue = map['ciemDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingCiemDiscoveryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSensitivityDiscovery: (() { final guardedValue = map['dataSensitivityDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingDataSensitivityDiscoveryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingMdcContainersAgentlessDiscoveryK8SResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingMdcContainersImageAssessmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmGcpOfferingVmScannersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
