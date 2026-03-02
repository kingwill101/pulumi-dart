// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container.dart';
import 'google_cloud_run_v2_revision_scaling.dart';
import 'google_cloud_run_v2_revision_template_execution_environment.dart';
import 'google_cloud_run_v2_volume.dart';
import 'google_cloud_run_v2_vpc_access.dart';

/// RevisionTemplate describes the data a revision should have when created from a template.
class GoogleCloudRunV2RevisionTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>>? annotations;
  /// Holds the single container that defines the unit of execution for this Revision.
  final pulumi.Input<List<GoogleCloudRunV2Container>>? containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String>? encryptionKey;
  /// The sandbox environment to host this Revision.
  final pulumi.Input<GoogleCloudRunV2RevisionTemplateExecutionEnvironment>? executionEnvironment;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final pulumi.Input<Map<String, String>>? labels;
  /// Sets the maximum number of requests that each serving instance can receive.
  final pulumi.Input<int>? maxInstanceRequestConcurrency;
  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final pulumi.Input<String>? revision;
  /// Scaling settings for this Revision.
  final pulumi.Input<GoogleCloudRunV2RevisionScaling>? scaling;
  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String>? serviceAccount;
  /// Enable session affinity.
  final pulumi.Input<bool>? sessionAffinity;
  /// Max allowed time for an instance to respond to a request.
  final pulumi.Input<String>? timeout;
  /// A list of Volumes to make available to containers.
  final pulumi.Input<List<GoogleCloudRunV2Volume>>? volumes;
  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final pulumi.Input<GoogleCloudRunV2VpcAccess>? vpcAccess;

  /// Creates a new [GoogleCloudRunV2RevisionTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// [containers] Holds the single container that defines the unit of execution for this Revision.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The sandbox environment to host this Revision.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  /// [maxInstanceRequestConcurrency] Sets the maximum number of requests that each serving instance can receive.
  /// [revision] The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  /// [scaling] Scaling settings for this Revision.
  /// [serviceAccount] Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [sessionAffinity] Enable session affinity.
  /// [timeout] Max allowed time for an instance to respond to a request.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  GoogleCloudRunV2RevisionTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.revision,
    this.scaling,
    this.serviceAccount,
    this.sessionAffinity,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2Container>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GoogleCloudRunV2Container, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?encryptionKey,
      'executionEnvironment': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2RevisionTemplateExecutionEnvironment, String>(executionEnvironment, (value) => value.value),
      'labels': ?labels,
      'maxInstanceRequestConcurrency': ?maxInstanceRequestConcurrency,
      'revision': ?revision,
      'scaling': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2RevisionScaling, Map<String, dynamic>>(scaling, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'sessionAffinity': ?sessionAffinity,
      'timeout': ?timeout,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudRunV2Volume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GoogleCloudRunV2Volume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': ?pulumi.Input.mapOptionalInputValue<GoogleCloudRunV2VpcAccess, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2RevisionTemplate.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionTemplate(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as Map).cast<String, String>()).input(),
      containers: map['containers'] == null ? null : (pulumi.Input.decodeList<GoogleCloudRunV2Container>(map['containers']!, (value) => GoogleCloudRunV2Container.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionKey: map['encryptionKey'] == null ? null : (map['encryptionKey']! as String).input(),
      executionEnvironment: map['executionEnvironment'] == null ? null : (GoogleCloudRunV2RevisionTemplateExecutionEnvironment.fromValue(map['executionEnvironment']! as String)).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      maxInstanceRequestConcurrency: map['maxInstanceRequestConcurrency'] == null ? null : (map['maxInstanceRequestConcurrency']! as int).input(),
      revision: map['revision'] == null ? null : (map['revision']! as String).input(),
      scaling: map['scaling'] == null ? null : (GoogleCloudRunV2RevisionScaling.fromMap((map['scaling']! as Map).cast<String, dynamic>())).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (map['serviceAccount']! as String).input(),
      sessionAffinity: map['sessionAffinity'] == null ? null : (map['sessionAffinity']! as bool).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
      volumes: map['volumes'] == null ? null : (pulumi.Input.decodeList<GoogleCloudRunV2Volume>(map['volumes']!, (value) => GoogleCloudRunV2Volume.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vpcAccess: map['vpcAccess'] == null ? null : (GoogleCloudRunV2VpcAccess.fromMap((map['vpcAccess']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

