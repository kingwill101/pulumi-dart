// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_aws_offering_ciem.dart';
import 'defender_cspm_aws_offering_data_sensitivity_discovery.dart';
import 'defender_cspm_aws_offering_databases_dspm.dart';
import 'defender_cspm_aws_offering_mdc_containers_agentless_discovery_k8_s.dart';
import 'defender_cspm_aws_offering_mdc_containers_image_assessment.dart';
import 'defender_cspm_aws_offering_vm_scanners.dart';

/// The CSPM P1 for AWS offering
class DefenderCspmAwsOffering {
  /// Defenders CSPM Permissions Management offering configurations
  final pulumi.Input<DefenderCspmAwsOfferingCiem>? ciem;
  /// The Microsoft Defender Data Sensitivity discovery configuration
  final pulumi.Input<DefenderCspmAwsOfferingDataSensitivityDiscovery>? dataSensitivityDiscovery;
  /// The databases DSPM configuration
  final pulumi.Input<DefenderCspmAwsOfferingDatabasesDspm>? databasesDspm;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final pulumi.Input<DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8S>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender container image assessment configuration
  final pulumi.Input<DefenderCspmAwsOfferingMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmAws'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for CSPM offering VM scanning configuration
  final pulumi.Input<DefenderCspmAwsOfferingVmScanners>? vmScanners;

  /// Creates a new [DefenderCspmAwsOffering].
  /// [ciem] Defenders CSPM Permissions Management offering configurations
  /// [dataSensitivityDiscovery] The Microsoft Defender Data Sensitivity discovery configuration
  /// [databasesDspm] The databases DSPM configuration
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for CSPM offering VM scanning configuration
  const DefenderCspmAwsOffering({
    this.ciem,
    this.dataSensitivityDiscovery,
    this.databasesDspm,
    this.mdcContainersAgentlessDiscoveryK8S,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciem': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingCiem, Map<String, dynamic>>(ciem, (value) => value.toMap()),
      'dataSensitivityDiscovery': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingDataSensitivityDiscovery, Map<String, dynamic>>(dataSensitivityDiscovery, (value) => value.toMap()),
      'databasesDspm': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingDatabasesDspm, Map<String, dynamic>>(databasesDspm, (value) => value.toMap()),
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8S, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderCspmAwsOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderCspmAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmAwsOffering(
      ciem: (() { final guardedValue = map['ciem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingCiem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataSensitivityDiscovery: (() { final guardedValue = map['dataSensitivityDiscovery']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingDataSensitivityDiscovery.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databasesDspm: (() { final guardedValue = map['databasesDspm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingDatabasesDspm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingMdcContainersAgentlessDiscoveryK8S.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmAwsOfferingVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
