// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_aws_offering_response_cloud_watch_to_kinesis.dart';
import 'defender_for_containers_aws_offering_response_kinesis_to_s3.dart';
import 'defender_for_containers_aws_offering_response_kubernetes_data_collection.dart';
import 'defender_for_containers_aws_offering_response_kubernetes_service.dart';
import 'defender_for_containers_aws_offering_response_mdc_containers_agentless_discovery_k8s.dart';
import 'defender_for_containers_aws_offering_response_mdc_containers_image_assessment.dart';
import 'defender_for_containers_aws_offering_response_vm_scanners.dart';

/// The Defender for Containers AWS offering
class DefenderForContainersAwsOfferingResponse {
  /// The cloudwatch to kinesis connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseCloudWatchToKinesis>? cloudWatchToKinesis;
  /// The externalId used by the data reader to prevent the confused deputy attack
  final pulumi.Input<String>? dataCollectionExternalId;
  /// The offering description.
  final pulumi.Input<String> description;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool>? enablePolicyAgentAutoProvisioning;
  /// The kinesis to s3 connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseKinesisToS3>? kinesisToS3;
  /// The retention time in days of kube audit logs set on the CloudWatch log group
  final pulumi.Input<double>? kubeAuditRetentionTime;
  /// The kubernetes data collection connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseKubernetesDataCollection>? kubernetesDataCollection;
  /// The kubernetes service connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseKubernetesService>? kubernetesService;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s>? mdcContainersAgentlessDiscoveryK8s;
  /// The Microsoft Defender container image assessment configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseMdcContainersImageAssessment>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersAws'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersAwsOfferingResponseVmScanners>? vmScanners;

  /// Creates a new [DefenderForContainersAwsOfferingResponse].
  /// [cloudWatchToKinesis] The cloudwatch to kinesis connection configuration
  /// [dataCollectionExternalId] The externalId used by the data reader to prevent the confused deputy attack
  /// [description] The offering description.
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
  const DefenderForContainersAwsOfferingResponse({
    this.cloudWatchToKinesis,
    this.dataCollectionExternalId,
    required this.description,
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
      'cloudWatchToKinesis': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseCloudWatchToKinesis, Map<String, dynamic>>(cloudWatchToKinesis, (value) => value.toMap()),
      'dataCollectionExternalId': ?dataCollectionExternalId,
      'description': description,
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'kinesisToS3': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseKinesisToS3, Map<String, dynamic>>(kinesisToS3, (value) => value.toMap()),
      'kubeAuditRetentionTime': ?kubeAuditRetentionTime,
      'kubernetesDataCollection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseKubernetesDataCollection, Map<String, dynamic>>(kubernetesDataCollection, (value) => value.toMap()),
      'kubernetesService': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseKubernetesService, Map<String, dynamic>>(kubernetesService, (value) => value.toMap()),
      'mdcContainersAgentlessDiscoveryK8s': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8s, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingResponseVmScanners, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponse(
      cloudWatchToKinesis: (() { final guardedValue = map['cloudWatchToKinesis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseCloudWatchToKinesis.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataCollectionExternalId: (() { final guardedValue = map['dataCollectionExternalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      enableAuditLogsAutoProvisioning: (() { final guardedValue = map['enableAuditLogsAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDefenderAgentAutoProvisioning: (() { final guardedValue = map['enableDefenderAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePolicyAgentAutoProvisioning: (() { final guardedValue = map['enablePolicyAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kinesisToS3: (() { final guardedValue = map['kinesisToS3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseKinesisToS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeAuditRetentionTime: (() { final guardedValue = map['kubeAuditRetentionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      kubernetesDataCollection: (() { final guardedValue = map['kubernetesDataCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseKubernetesDataCollection.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesService: (() { final guardedValue = map['kubernetesService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseKubernetesService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersAgentlessDiscoveryK8s: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8s']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseMdcContainersAgentlessDiscoveryK8s.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingResponseVmScanners.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

