// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_aws_offering_ciem.dart';
import 'defender_cspm_aws_offering_data_sensitivity_discovery.dart';
import 'defender_cspm_aws_offering_databases_dspm.dart';
import 'defender_cspm_aws_offering_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_cspm_aws_offering_mdc_containers_image_assessment.dart';
import 'defender_cspm_aws_offering_vm_scanners.dart';

/// The CSPM P1 for AWS offering
class DefenderCspmAwsOffering {
  /// Defenders CSPM Permissions Management offering configurations
  final DefenderCspmAwsOfferingCiem? ciem;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final DefenderCspmAwsOfferingDataSensitivityDiscovery? dataSensitivityDiscovery;
  /// The databases DSPM configuration
  final DefenderCspmAwsOfferingDatabasesDspm? databasesDspm;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8s? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender container image assessment configuration
  final DefenderCspmAwsOfferingMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmAws'.
  final String offeringType;
  /// The Microsoft Defender for CSPM offering VM scanning configuration
  final DefenderCspmAwsOfferingVmScanners? vmScanners;

  /// Creates a new [DefenderCspmAwsOffering].
  /// [ciem] Defenders CSPM Permissions Management offering configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [databasesDspm] The databases DSPM configuration
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM offering VM scanning configuration
  DefenderCspmAwsOffering({
    this.ciem,
    this.dataSensitivityDiscovery,
    this.databasesDspm,
    this.mdcContainersAgentlessDiscoveryK8s,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciem': ?ciem == null ? null : ciem!.toMap(),
      'dataSensitivityDiscovery': ?dataSensitivityDiscovery == null ? null : dataSensitivityDiscovery!.toMap(),
      'databasesDspm': ?databasesDspm == null ? null : databasesDspm!.toMap(),
      'mdcContainersAgentlessDiscoveryK8s': ?mdcContainersAgentlessDiscoveryK8s == null ? null : mdcContainersAgentlessDiscoveryK8s!.toMap(),
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'offeringType': offeringType,
      'vmScanners': ?vmScanners == null ? null : vmScanners!.toMap(),
    };
  }

  factory DefenderCspmAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOffering(
      ciem: map['ciem'] == null ? null : DefenderCspmAwsOfferingCiem.fromMap((map['ciem'] as Map).cast<String, dynamic>()),
      dataSensitivityDiscovery: map['dataSensitivityDiscovery'] == null ? null : DefenderCspmAwsOfferingDataSensitivityDiscovery.fromMap((map['dataSensitivityDiscovery'] as Map).cast<String, dynamic>()),
      databasesDspm: map['databasesDspm'] == null ? null : DefenderCspmAwsOfferingDatabasesDspm.fromMap((map['databasesDspm'] as Map).cast<String, dynamic>()),
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s'] as Map).cast<String, dynamic>()),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderCspmAwsOfferingMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
      vmScanners: map['vmScanners'] == null ? null : DefenderCspmAwsOfferingVmScanners.fromMap((map['vmScanners'] as Map).cast<String, dynamic>()),
    );
  }
}

