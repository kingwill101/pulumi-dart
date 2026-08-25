// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'worker_pool_template_container.dart';
import 'worker_pool_template_node_selector.dart';
import 'worker_pool_template_volume.dart';
import 'worker_pool_template_vpc_access.dart';

class WorkerPoolTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Arbitrary identifier for the API client.
  final pulumi.Input<String?>? client;
  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String?>? clientVersion;
  /// Holds the containers that define the unit of execution for this WorkerPool.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateContainer>?>? containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String?>? encryptionKey;
  /// The action to take if the encryption key is revoked.
  /// Possible values are: `PREVENT_NEW`, `SHUTDOWN`.
  final pulumi.Input<String?>? encryptionKeyRevocationAction;
  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? encryptionKeyShutdownDuration;
  /// True if GPU zonal redundancy is disabled on this revision.
  final pulumi.Input<bool?>? gpuZonalRedundancyDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 WorkerPoolRevisionTemplate.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Node Selector describes the hardware requirements of the resources.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateNodeSelector?>? nodeSelector;
  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name.
  final pulumi.Input<String?>? revision;
  /// Email address of the IAM service account associated with the revision of the WorkerPool. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String?>? serviceAccount;
  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final pulumi.Input<List<WorkerPoolTemplateVolume>?>? volumes;
  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  /// Structure is documented below.
  final pulumi.Input<WorkerPoolTemplateVpcAccess?>? vpcAccess;

  /// Creates a new [WorkerPoolTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [containers] Holds the containers that define the unit of execution for this WorkerPool.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [encryptionKeyRevocationAction] The action to take if the encryption key is revoked.
  /// [encryptionKeyShutdownDuration] If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this revision.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [revision] The unique name for the revision. If this field is omitted, it will be automatically generated based on the WorkerPool name.
  /// [serviceAccount] Email address of the IAM service account associated with the revision of the WorkerPool. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  const WorkerPoolTemplate({
    this.annotations,
    this.client,
    this.clientVersion,
    this.containers,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.gpuZonalRedundancyDisabled,
    this.labels,
    this.nodeSelector,
    this.revision,
    this.serviceAccount,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'client': ?client,
      'clientVersion': ?clientVersion,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<WorkerPoolTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?encryptionKey,
      'encryptionKeyRevocationAction': ?encryptionKeyRevocationAction,
      'encryptionKeyShutdownDuration': ?encryptionKeyShutdownDuration,
      'gpuZonalRedundancyDisabled': ?gpuZonalRedundancyDisabled,
      'labels': ?labels,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateNodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'revision': ?revision,
      'serviceAccount': ?serviceAccount,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<WorkerPoolTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<WorkerPoolTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': ?pulumi.Input.mapOptionalInputValue<WorkerPoolTemplateVpcAccess, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory WorkerPoolTemplate.fromMap(Map<String, dynamic> map) {
    return WorkerPoolTemplate(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerPoolTemplateContainer>(guardedValue, (value) => WorkerPoolTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyRevocationAction: (() { final guardedValue = map['encryptionKeyRevocationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyShutdownDuration: (() { final guardedValue = map['encryptionKeyShutdownDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuZonalRedundancyDisabled: (() { final guardedValue = map['gpuZonalRedundancyDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolTemplateNodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkerPoolTemplateVolume>(guardedValue, (value) => WorkerPoolTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcAccess: (() { final guardedValue = map['vpcAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkerPoolTemplateVpcAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
