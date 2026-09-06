// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_for_containers_aws_offering_cloud_watch_to_kinesis_response.dart';
import 'defender_for_containers_aws_offering_kinesis_to_s3_response.dart';
import 'defender_for_containers_aws_offering_kubernetes_data_collection_response.dart';
import 'defender_for_containers_aws_offering_kubernetes_service_response.dart';
import 'defender_for_containers_aws_offering_mdc_containers_agentless_discovery_k8_sresponse.dart';
import 'defender_for_containers_aws_offering_mdc_containers_image_assessment_response.dart';
import 'defender_for_containers_aws_offering_vm_scanners_response.dart';

/// The Defender for Containers AWS offering
class DefenderForContainersAwsOfferingResponse {
  /// The cloudwatch to kinesis connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingCloudWatchToKinesisResponse?>? cloudWatchToKinesis;
  /// The externalId used by the data reader to prevent the confused deputy attack
  final pulumi.Input<String?>? dataCollectionExternalId;
  /// The offering description.
  final pulumi.Input<String> description;
  /// Is audit logs data collection enabled
  final pulumi.Input<bool?>? enableAuditLogsAutoProvisioning;
  /// Is Microsoft Defender for Cloud Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool?>? enableDefenderAgentAutoProvisioning;
  /// Is Policy Kubernetes agent auto provisioning enabled
  final pulumi.Input<bool?>? enablePolicyAgentAutoProvisioning;
  /// The kinesis to s3 connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingKinesisToS3Response?>? kinesisToS3;
  /// The retention time in days of kube audit logs set on the CloudWatch log group
  final pulumi.Input<double?>? kubeAuditRetentionTime;
  /// The kubernetes data collection connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingKubernetesDataCollectionResponse?>? kubernetesDataCollection;
  /// The kubernetes service connection configuration
  final pulumi.Input<DefenderForContainersAwsOfferingKubernetesServiceResponse?>? kubernetesService;
  /// The Microsoft Defender container agentless discovery K8s configuration
  final pulumi.Input<DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8SResponse?>? mdcContainersAgentlessDiscoveryK8S;
  /// The Microsoft Defender container image assessment configuration
  final pulumi.Input<DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse?>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderForContainersAws'.
  final pulumi.Input<String> offeringType;
  /// The Microsoft Defender for Container K8s VM host scanning configuration
  final pulumi.Input<DefenderForContainersAwsOfferingVmScannersResponse?>? vmScanners;

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
  /// [mdcContainersAgentlessDiscoveryK8S] The Microsoft Defender container agentless discovery K8s configuration
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
    this.mdcContainersAgentlessDiscoveryK8S,
    this.mdcContainersImageAssessment,
    required this.offeringType,
    this.vmScanners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchToKinesis': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingCloudWatchToKinesisResponse, Map<String, dynamic>>(cloudWatchToKinesis, (value) => value.toMap()),
      'dataCollectionExternalId': ?dataCollectionExternalId,
      'description': description,
      'enableAuditLogsAutoProvisioning': ?enableAuditLogsAutoProvisioning,
      'enableDefenderAgentAutoProvisioning': ?enableDefenderAgentAutoProvisioning,
      'enablePolicyAgentAutoProvisioning': ?enablePolicyAgentAutoProvisioning,
      'kinesisToS3': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingKinesisToS3Response, Map<String, dynamic>>(kinesisToS3, (value) => value.toMap()),
      'kubeAuditRetentionTime': ?kubeAuditRetentionTime,
      'kubernetesDataCollection': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingKubernetesDataCollectionResponse, Map<String, dynamic>>(kubernetesDataCollection, (value) => value.toMap()),
      'kubernetesService': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingKubernetesServiceResponse, Map<String, dynamic>>(kubernetesService, (value) => value.toMap()),
      'mdcContainersAgentlessDiscoveryK8S': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8SResponse, Map<String, dynamic>>(mdcContainersAgentlessDiscoveryK8S, (value) => value.toMap()),
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
      'vmScanners': ?pulumi.Input.mapOptionalInputValue<DefenderForContainersAwsOfferingVmScannersResponse, Map<String, dynamic>>(vmScanners, (value) => value.toMap()),
    };
  }

  factory DefenderForContainersAwsOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponse(
      cloudWatchToKinesis: (() { final guardedValue = map['cloudWatchToKinesis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingCloudWatchToKinesisResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataCollectionExternalId: (() { final guardedValue = map['dataCollectionExternalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      enableAuditLogsAutoProvisioning: (() { final guardedValue = map['enableAuditLogsAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableDefenderAgentAutoProvisioning: (() { final guardedValue = map['enableDefenderAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enablePolicyAgentAutoProvisioning: (() { final guardedValue = map['enablePolicyAgentAutoProvisioning']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kinesisToS3: (() { final guardedValue = map['kinesisToS3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingKinesisToS3Response.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubeAuditRetentionTime: (() { final guardedValue = map['kubeAuditRetentionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      kubernetesDataCollection: (() { final guardedValue = map['kubernetesDataCollection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingKubernetesDataCollectionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kubernetesService: (() { final guardedValue = map['kubernetesService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingKubernetesServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersAgentlessDiscoveryK8S: (() { final guardedValue = map['mdcContainersAgentlessDiscoveryK8S']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingMdcContainersAgentlessDiscoveryK8SResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingMdcContainersImageAssessmentResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
      vmScanners: (() { final guardedValue = map['vmScanners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderForContainersAwsOfferingVmScannersResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
