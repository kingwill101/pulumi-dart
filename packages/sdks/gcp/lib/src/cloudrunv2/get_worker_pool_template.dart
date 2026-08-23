// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container.dart';
import 'get_worker_pool_template_node_selector.dart';
import 'get_worker_pool_template_volume.dart';
import 'get_worker_pool_template_vpc_access.dart';

class GetWorkerPoolTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  ///
  /// Cloud Run API v2 does not support annotations with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  ///
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>> annotations;
  /// Arbitrary identifier for the API client.
  final pulumi.Input<String> client;
  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String> clientVersion;
  /// Holds the containers that define the unit of execution for this WorkerPool.
  final pulumi.Input<List<GetWorkerPoolTemplateContainer>> containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String> encryptionKey;
  /// The action to take if the encryption key is revoked. Possible values: ["PREVENT_NEW", "SHUTDOWN"]
  final pulumi.Input<String> encryptionKeyRevocationAction;
  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  ///
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String> encryptionKeyShutdownDuration;
  /// True if GPU zonal redundancy is disabled on this revision.
  final pulumi.Input<bool> gpuZonalRedundancyDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  ///
  /// Cloud Run API v2 does not support labels with 'run.googleapis.com', 'cloud.googleapis.com', 'serving.knative.dev', or 'autoscaling.knative.dev' namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  final pulumi.Input<Map<String, String>> labels;
  /// Node Selector describes the hardware requirements of the resources.
  final pulumi.Input<List<GetWorkerPoolTemplateNodeSelector>> nodeSelectors;
  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name.
  final pulumi.Input<String> revision;
  /// Email address of the IAM service account associated with the revision of the WorkerPool. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String> serviceAccount;
  /// A list of Volumes to make available to containers.
  final pulumi.Input<List<GetWorkerPoolTemplateVolume>> volumes;
  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final pulumi.Input<List<GetWorkerPoolTemplateVpcAccess>> vpcAccesses;

  /// Creates a new [GetWorkerPoolTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [containers] Holds the containers that define the unit of execution for this WorkerPool.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [encryptionKeyRevocationAction] The action to take if the encryption key is revoked. Possible values: ["PREVENT_NEW", "SHUTDOWN"]
  /// [encryptionKeyShutdownDuration] If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this revision.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// [nodeSelectors] Node Selector describes the hardware requirements of the resources.
  /// [revision] The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name.
  /// [serviceAccount] Email address of the IAM service account associated with the revision of the WorkerPool. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccesses] VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  const GetWorkerPoolTemplate({
    required this.annotations,
    required this.client,
    required this.clientVersion,
    required this.containers,
    required this.encryptionKey,
    required this.encryptionKeyRevocationAction,
    required this.encryptionKeyShutdownDuration,
    required this.gpuZonalRedundancyDisabled,
    required this.labels,
    required this.nodeSelectors,
    required this.revision,
    required this.serviceAccount,
    required this.volumes,
    required this.vpcAccesses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'client': client,
      'clientVersion': clientVersion,
      'containers': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': encryptionKey,
      'encryptionKeyRevocationAction': encryptionKeyRevocationAction,
      'encryptionKeyShutdownDuration': encryptionKeyShutdownDuration,
      'gpuZonalRedundancyDisabled': gpuZonalRedundancyDisabled,
      'labels': labels,
      'nodeSelectors': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateNodeSelector>, List<Map<String, dynamic>>>(nodeSelectors, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateNodeSelector, Map<String, dynamic>>(value, (value) => value.toMap())),
      'revision': revision,
      'serviceAccount': serviceAccount,
      'volumes': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccesses': pulumi.Input.mapInputValue<List<GetWorkerPoolTemplateVpcAccess>, List<Map<String, dynamic>>>(vpcAccesses, (value) => pulumi.Input.encodeList<GetWorkerPoolTemplateVpcAccess, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkerPoolTemplate.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplate(
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      client: pulumi.Input.fromValue(map['client'] as String),
      clientVersion: pulumi.Input.fromValue(map['clientVersion'] as String),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateContainer>(map['containers']!, (value) => GetWorkerPoolTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionKey: pulumi.Input.fromValue(map['encryptionKey'] as String),
      encryptionKeyRevocationAction: pulumi.Input.fromValue(map['encryptionKeyRevocationAction'] as String),
      encryptionKeyShutdownDuration: pulumi.Input.fromValue(map['encryptionKeyShutdownDuration'] as String),
      gpuZonalRedundancyDisabled: pulumi.Input.fromValue(map['gpuZonalRedundancyDisabled'] as bool),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      nodeSelectors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateNodeSelector>(map['nodeSelectors']!, (value) => GetWorkerPoolTemplateNodeSelector.fromMap((value as Map).cast<String, dynamic>()))),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      volumes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVolume>(map['volumes']!, (value) => GetWorkerPoolTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))),
      vpcAccesses: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkerPoolTemplateVpcAccess>(map['vpcAccesses']!, (value) => GetWorkerPoolTemplateVpcAccess.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
