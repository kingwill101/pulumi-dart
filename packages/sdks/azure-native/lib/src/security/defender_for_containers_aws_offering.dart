// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_aws_offering_cloud_watch_to_kinesis.dart';
import 'defender_for_containers_aws_offering_kinesis_to_s3.dart';
import 'defender_for_containers_aws_offering_kubernetes_data_collection.dart';
import 'defender_for_containers_aws_offering_kubernetes_service.dart';
import 'defender_for_containers_aws_offering_mdc_containers_agentless_discovery_k8s.dart';
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
  final pulumi.Input<DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8s>? mdcContainersAgentlessDiscoveryK8s;
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
  /// [mdcContainersAgentlessDiscoveryK8s] The Microsoft Defender container agentless discovery K8s configuration
  /// [mdcContainersImageAssessment] The Microsoft Defender container image assessment configuration
  /// [offeringType] The type of the security offering.
  /// [vmScanners] The Microsoft Defender for Container K8s VM host scanning configuration
  DefenderForContainersAwsOffering({
    this.cloudWatchToKinesis,
    this.dataCollectionExternalId,
    this.enableAuditLogsAutoProvisioning,
    this.enableDefenderAgentAutoProvisioning,
    this.enablePolicyAgentAutoProvisioning,
    this.kinesisToS3,
    this.kubeAuditRetentionTime,
    this.kubernetesDataCollection,
    this.kubernetesService,
    this.mdcContainersAgentlessDiscoveryK8s,
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
      'mdcContainersAgentlessDiscoveryK8s': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8s, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8s, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersAwsOffering.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOffering(
      cloudWatchToKinesis: map['cloudWatchToKinesis'] == null ? null : (DefenderForContainersAwsOfferingCloudWatchToKinesis.fromMap((map['cloudWatchToKinesis']! as Map).cast<String, dynamic>())).input(),
      dataCollectionExternalId: map['dataCollectionExternalId'] == null ? null : (map['dataCollectionExternalId']! as String).input(),
      enableAuditLogsAutoProvisioning: map['enableAuditLogsAutoProvisioning'] == null ? null : (map['enableAuditLogsAutoProvisioning']! as bool).input(),
      enableDefenderAgentAutoProvisioning: map['enableDefenderAgentAutoProvisioning'] == null ? null : (map['enableDefenderAgentAutoProvisioning']! as bool).input(),
      enablePolicyAgentAutoProvisioning: map['enablePolicyAgentAutoProvisioning'] == null ? null : (map['enablePolicyAgentAutoProvisioning']! as bool).input(),
      kinesisToS3: map['kinesisToS3'] == null ? null : (DefenderForContainersAwsOfferingKinesisToS3.fromMap((map['kinesisToS3']! as Map).cast<String, dynamic>())).input(),
      kubeAuditRetentionTime: map['kubeAuditRetentionTime'] == null ? null : (map['kubeAuditRetentionTime']! as double).input(),
      kubernetesDataCollection: map['kubernetesDataCollection'] == null ? null : (DefenderForContainersAwsOfferingKubernetesDataCollection.fromMap((map['kubernetesDataCollection']! as Map).cast<String, dynamic>())).input(),
      kubernetesService: map['kubernetesService'] == null ? null : (DefenderForContainersAwsOfferingKubernetesService.fromMap((map['kubernetesService']! as Map).cast<String, dynamic>())).input(),
      mdcContainersAgentlessDiscoveryK8s: map['mdcContainersAgentlessDiscoveryK8s'] == null ? null : (DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8s.fromMap((map['mdcContainersAgentlessDiscoveryK8s']! as Map).cast<String, dynamic>())).input(),
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : (DefenderForContainersAwsOfferingMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment']! as Map).cast<String, dynamic>())).input(),
      offeringType: (map['offeringType'] as String).input(),
      vmScanners: map['vmScanners'] == null ? null : (DefenderForContainersAwsOfferingVmScanners.fromMap((map['vmScanners']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

