// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_aws_offering_ciem_response.dart';
import 'defender_cspm_aws_offering_data_sensitivity_discovery_response.dart';
import 'defender_cspm_aws_offering_databases_dspm_response.dart';
import 'defender_cspm_aws_offering_mdc_containers_agentless_discovery_k8_sresponse.dart';
import 'defender_cspm_aws_offering_mdc_containers_image_assessment_response.dart';
import 'defender_cspm_aws_offering_vm_scanners_response.dart';

/// The CSPM P1 for AWS offering
class DefenderCspmAwsOfferingResponse {
  /// Defenders CSPM Permissions Management offering configurations
  final pulumi.Input<DefenderCspmAwsOfferingCiemResponse>? ciem;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final pulumi.Input<DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse>? dataSensitivityDiscovery;
  /// The databases DSPM configuration
  final pulumi.Input<DefenderCspmAwsOfferingDatabasesDspmResponse>? databasesDspm;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final pulumi.Input<DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8SResponse>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender container image assessment configuration
  final pulumi.Input<DefenderCspmAwsOfferingMdcContainersImageAssessmentResponse>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmAws'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for CSPM offering VM scanning configuration
  final pulumi.Input<DefenderCspmAwsOfferingVmScannersResponse>? vmScanners;

  /// Creates a new [DefenderCspmAwsOfferingResponse].
  /// [ciem] Defenders CSPM Permissions Management offering configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [databasesDspm] The databases DSPM configuration
  /// [description] The offering description.
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM offering VM scanning configuration
  const DefenderCspmAwsOfferingResponse({
    this.ciem,
    this.dataSensitivityDiscovery,
    this.databasesDspm,
    required this.description,
    this.mdcContainersAgentlessDiscoveryK8S,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciem': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingCiemResponse, Map<String, dynamic>>(ciem, (value) => value.toMap()),
      'dataSensitivityDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse, Map<String, dynamic>>(dataSensitivityDiscovery, (value) => value.toMap()),
      'databasesDspm': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingDatabasesDspmResponse, Map<String, dynamic>>(databasesDspm, (value) => value.toMap()),
      'description': description,
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8SResponse, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingMdcContainersImageAssessmentResponse, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingVmScannersResponse, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponse(
      ciem: (() { final guardedValue = map['ciem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingCiemResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSensitivityDiscovery: (() { final guardedValue = map['dataSensitivityDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingDataSensitivityDiscoveryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databasesDspm: (() { final guardedValue = map['databasesDspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingDatabasesDspmResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8SResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingMdcContainersImageAssessmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingVmScannersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
