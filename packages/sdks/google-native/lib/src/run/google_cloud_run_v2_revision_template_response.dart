// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_run_v2_container_response.dart';
import 'google_cloud_run_v2_revision_scaling_response.dart';
import 'google_cloud_run_v2_volume_response.dart';
import 'google_cloud_run_v2_vpc_access_response.dart';

/// RevisionTemplate describes the data a revision should have when created from a template.
class GoogleCloudRunV2RevisionTemplateResponse {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects. Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system annotations in v1 now have a corresponding field in v2 RevisionTemplate. This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>> annotations;
  /// Holds the single container that defines the unit of execution for this Revision.
  final pulumi.Input<List<GoogleCloudRunV2ContainerResponse>> containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String> encryptionKey;
  /// The sandbox environment to host this Revision.
  final pulumi.Input<String> executionEnvironment;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc. For more information, visit https://cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels. Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected. All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final pulumi.Input<Map<String, String>> labels;
  /// Sets the maximum number of requests that each serving instance can receive.
  final pulumi.Input<int> maxInstanceRequestConcurrency;
  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final pulumi.Input<String> revision;
  /// Scaling settings for this Revision.
  final pulumi.Input<GoogleCloudRunV2RevisionScalingResponse> scaling;
  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String> serviceAccount;
  /// Enable session affinity.
  final pulumi.Input<bool> sessionAffinity;
  /// Max allowed time for an instance to respond to a request.
  final pulumi.Input<String> timeout;
  /// A list of Volumes to make available to containers.
  final pulumi.Input<List<GoogleCloudRunV2VolumeResponse>> volumes;
  /// VPC Access configuration to use for this Revision. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  final pulumi.Input<GoogleCloudRunV2VpcAccessResponse> vpcAccess;

  /// Creates a new [GoogleCloudRunV2RevisionTemplateResponse].
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
  const GoogleCloudRunV2RevisionTemplateResponse({
    required this.annotations,
    required this.containers,
    required this.encryptionKey,
    required this.executionEnvironment,
    required this.labels,
    required this.maxInstanceRequestConcurrency,
    required this.revision,
    required this.scaling,
    required this.serviceAccount,
    required this.sessionAffinity,
    required this.timeout,
    required this.volumes,
    required this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'containers': pulumi.Input.mapInputValue<List<GoogleCloudRunV2ContainerResponse>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<GoogleCloudRunV2ContainerResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': encryptionKey,
      'executionEnvironment': executionEnvironment,
      'labels': labels,
      'maxInstanceRequestConcurrency': maxInstanceRequestConcurrency,
      'revision': revision,
      'scaling': pulumi.Input.mapInputValue<GoogleCloudRunV2RevisionScalingResponse, Map<String, dynamic>>(scaling, (value) => value.toMap()),
      'serviceAccount': serviceAccount,
      'sessionAffinity': sessionAffinity,
      'timeout': timeout,
      'volumes': pulumi.Input.mapInputValue<List<GoogleCloudRunV2VolumeResponse>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<GoogleCloudRunV2VolumeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': pulumi.Input.mapInputValue<GoogleCloudRunV2VpcAccessResponse, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory GoogleCloudRunV2RevisionTemplateResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2RevisionTemplateResponse(
      annotations: pulumi.Input.fromValue((map['annotations'] as Map).cast<String, String>()),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2ContainerResponse>(map['containers']!, (value) => GoogleCloudRunV2ContainerResponse.fromMap((value as Map).cast<String, dynamic>()))),
      encryptionKey: pulumi.Input.fromValue(map['encryptionKey'] as String),
      executionEnvironment: pulumi.Input.fromValue(map['executionEnvironment'] as String),
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
      maxInstanceRequestConcurrency: pulumi.Input.fromValue(map['maxInstanceRequestConcurrency'] as int),
      revision: pulumi.Input.fromValue(map['revision'] as String),
      scaling: pulumi.Input.fromValue(GoogleCloudRunV2RevisionScalingResponse.fromMap((map['scaling']! as Map).cast<String, dynamic>())),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
      sessionAffinity: pulumi.Input.fromValue(map['sessionAffinity'] as bool),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
      volumes: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudRunV2VolumeResponse>(map['volumes']!, (value) => GoogleCloudRunV2VolumeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      vpcAccess: pulumi.Input.fromValue(GoogleCloudRunV2VpcAccessResponse.fromMap((map['vpcAccess']! as Map).cast<String, dynamic>())),
    );
  }
}
