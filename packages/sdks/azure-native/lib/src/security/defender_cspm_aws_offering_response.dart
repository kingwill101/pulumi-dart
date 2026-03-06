// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_aws_offering_response_ciem.dart';
import 'defender_cspm_aws_offering_response_data_sensitivity_discovery.dart';
import 'defender_cspm_aws_offering_response_databases_dspm.dart';
import 'defender_cspm_aws_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_cspm_aws_offering_response_mdc_containers_image_assessment.dart';
import 'defender_cspm_aws_offering_response_vm_scanners.dart';

/// The CSPM P1 for AWS offering
class DefenderCspmAwsOfferingResponse {
  /// Defenders CSPM Permissions Management offering configurations
  final pulumi.Input<DefenderCspmAwsOfferingResponseCiem>? ciem;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final pulumi.Input<DefenderCspmAwsOfferingResponseDataSensitivityDiscovery>? dataSensitivityDiscovery;
  /// The databases DSPM configuration
  final pulumi.Input<DefenderCspmAwsOfferingResponseDatabasesDspm>? databasesDspm;
  /// The offering description.
  final pulumi.Input<String> description;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final pulumi.Input<DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s>? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender container image assessment configuration
  final pulumi.Input<DefenderCspmAwsOfferingResponseMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmAws'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for CSPM offering VM scanning configuration
  final pulumi.Input<DefenderCspmAwsOfferingResponseVmScanners>? vmScanners;

  /// Creates a new [DefenderCspmAwsOfferingResponse].
  /// [ciem] Defenders CSPM Permissions Management offering configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [databasesDspm] The databases DSPM configuration
  /// [description] The offering description.
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM offering VM scanning configuration
  const DefenderCspmAwsOfferingResponse({
    this.ciem,
    this.dataSensitivityDiscovery,
    this.databasesDspm,
    required this.description,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciem': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseCiem, Map<String, dynamic>>(ciem, (value) => value.toMap()),
      'dataSensitivityDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseDataSensitivityDiscovery, Map<String, dynamic>>(dataSensitivityDiscovery, (value) => value.toMap()),
      'databasesDspm': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseDatabasesDspm, Map<String, dynamic>>(databasesDspm, (value) => value.toMap()),
      'description': description,
      'mdcContainersAgentlessDiscoveryK8s': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8s, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingResponseVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOfferingResponse(
      ciem: (() { final guardedValue = map['ciem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseCiem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSensitivityDiscovery: (() { final guardedValue = map['dataSensitivityDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseDataSensitivityDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databasesDspm: (() { final guardedValue = map['databasesDspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseDatabasesDspm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      mdcContainersAgentlessDiscoveryK8s: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingResponseVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

