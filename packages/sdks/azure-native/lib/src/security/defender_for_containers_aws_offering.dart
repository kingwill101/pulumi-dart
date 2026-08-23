// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_aws_offering_cloud_watch_to_kinesis.dart';
import 'defender_for_containers_aws_offering_kinesis_to_s3.dart';
import 'defender_for_containers_aws_offering_kubernetes_data_collection.dart';
import 'defender_for_containers_aws_offering_kubernetes_service.dart';
import 'defender_for_containers_aws_offering_mdc_containers_agentless_discovery_k8_s.dart';
import 'defender_for_containers_aws_offering_mdc_containers_image_assessment.dart';
import 'defender_for_containers_aws_offering_vm_scanners.dart';

/// The Defender for Containers AWS offering
class DefenderForContainersAwsOffering {
  /// The cloudwatch to kinesis connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingCloudWatchToKinesis>? cloudWatchToKinesis;
  /// The externalId used by the data reader to prevent the confused deputy attack
  final pulumi.Input<String>? dataCollectionExternalId;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enablePolicyAgentAutoProvisioning;
  /// The kinesis to s3 connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingKinesisToS3>? kinesisToS3;
  /// The retention time in days of kube audit logs set on the CloudWatch log group
  final pulumi.Input<double>? kubeAuditRetentionTime;
  /// The kubernetes data collection connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingKubernetesDataCollection>? kubernetesDataCollection;
  /// The kubernetes service connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingKubernetesService>? kubernetesService;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final pulumi.Input<DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8S>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender container image assessment configuration
  final pulumi.Input<DefenderForContainersAwsOfferingMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersAws'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersAwsOfferingVmScanners>? vmScanners;

  /// Creates a new [DefenderForContainersAwsOffering].
  /// [cloudWatchToKinesis] The cloudwatch to kinesis connection configuration
  /// [dataCollectionExternalId] The externalId used by the data reader to prevent the confused deputy attack
  /// [enableAuditLogsAutoProvisioning] Is audit logs data collection enabled
  /// [enableDefenderAgentAutoProvisioning] Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  /// [enablePolicyAgentAutoProvisioning] Is Policy Kubernetes agent auto provisioning enabled
  /// [kinesisToS3] The kinesis to s3 connection configuration
  /// [kubeAuditRetentionTime] The retention time in days of kube audit logs set on the CloudWatch log group
  /// [kubernetesDataCollection] The kubernetes data collection connection configuration
  /// [kubernetesService] The kubernetes service connection configuration
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  const DefenderForContainersAwsOffering({
    this.cloudWatchToKinesis,
    this.dataCollectionExternalId,
    this.enableAuditLogsAutoProvisioning,
    this.enableDefenderAgentAutoProvisioning,
    this.enablePolicyAgentAutoProvisioning,
    this.kinesisToS3,
    this.kubeAuditRetentionTime,
    this.kubernetesDataCollection,
    this.kubernetesService,
    this.mdcContainersAgentlessDiscoveryK8S,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchToKinesis': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingCloudWatchToKinesis, Map<String, dynamic>>(cloudWatchToKinesis, (value) => value.toMap()),
      'dataCollectionExternalId': ?dataCollectionExternalId,
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'kinesisToS3': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingKinesisToS3, Map<String, dynamic>>(kinesisToS3, (value) => value.toMap()),
      'kubeAuditRetentionTime': ?kubeAuditRetentionTime,
      'kubernetesDataCollection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingKubernetesDataCollection, Map<String, dynamic>>(kubernetesDataCollection, (value) => value.toMap()),
      'kubernetesService': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingKubernetesService, Map<String, dynamic>>(kubernetesService, (value) => value.toMap()),
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8S, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOffering(
      cloudWatchToKinesis: (() { final guardedValue = map['cloudWatchToKinesis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingCloudWatchToKinesis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataCollectionExternalId: (() { final guardedValue = map['dataCollectionExternalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableAuditLogsAutoProvisioning: (() { final guardedValue = map['enableAuditLogsAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDefenderAgentAutoProvisioning: (() { final guardedValue = map['enableDefenderAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePolicyAgentAutoProvisioning: (() { final guardedValue = map['enablePolicyAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kinesisToS3: (() { final guardedValue = map['kinesisToS3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingKinesisToS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeAuditRetentionTime: (() { final guardedValue = map['kubeAuditRetentionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      kubernetesDataCollection: (() { final guardedValue = map['kubernetesDataCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingKubernetesDataCollection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesService: (() { final guardedValue = map['kubernetesService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingKubernetesService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8S.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
