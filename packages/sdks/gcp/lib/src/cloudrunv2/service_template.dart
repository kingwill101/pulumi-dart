// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_template_container.dart';
import 'service_template_node_selector.dart';
import 'service_template_sandboxes.dart';
import 'service_template_scaling.dart';
import 'service_template_service_mesh.dart';
import 'service_template_volume.dart';
import 'service_template_vpc_access.dart';

class ServiceTemplate {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system annotations in v1 now have a corresponding field in v2 RevisionTemplate.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Holds the containers that define the unit of execution for this Service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateContainer>?>? containers;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String?>? encryptionKey;
  /// The sandbox environment to host this Revision.
  /// Possible values are: `EXECUTION_ENVIRONMENT_GEN1`, `EXECUTION_ENVIRONMENT_GEN2`.
  final pulumi.Input<String?>? executionEnvironment;
  /// True if GPU zonal redundancy is disabled on this revision.
  final pulumi.Input<bool?>? gpuZonalRedundancyDisabled;
  /// Disables health checking containers during deployment.
  final pulumi.Input<bool?>? healthCheckDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// All system labels in v1 now have a corresponding field in v2 RevisionTemplate.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Sets the maximum number of requests that each serving instance can receive.
  /// If not specified or 0, defaults to 80 when requested CPU &gt;= 1 and defaults to 1 when requested CPU &lt; 1.
  final pulumi.Input<int?>? maxInstanceRequestConcurrency;
  /// Node Selector describes the hardware requirements of the resources.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateNodeSelector?>? nodeSelector;
  /// The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  final pulumi.Input<String?>? revision;
  /// Configuration for sandboxes.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateSandboxes?>? sandboxes;
  /// Scaling settings for this Revision.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateScaling?>? scaling;
  /// Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  final pulumi.Input<String?>? serviceAccount;
  /// (Optional, Beta)
  /// Enables Cloud Service Mesh for this Revision.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateServiceMesh?>? serviceMesh;
  /// Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity
  final pulumi.Input<bool?>? sessionAffinity;
  /// Max allowed time for an instance to respond to a request.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? timeout;
  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceTemplateVolume>?>? volumes;
  /// VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  /// Structure is documented below.
  final pulumi.Input<ServiceTemplateVpcAccess?>? vpcAccess;

  /// Creates a new [ServiceTemplate].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [containers] Holds the containers that define the unit of execution for this Service.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [executionEnvironment] The sandbox environment to host this Revision.
  /// [gpuZonalRedundancyDisabled] True if GPU zonal redundancy is disabled on this revision.
  /// [healthCheckDisabled] Disables health checking containers during deployment.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component, environment, state, etc.
  /// [maxInstanceRequestConcurrency] Sets the maximum number of requests that each serving instance can receive.
  /// [nodeSelector] Node Selector describes the hardware requirements of the resources.
  /// [revision] The unique name for the revision. If this field is omitted, it will be automatically generated based on the Service name.
  /// [sandboxes] Configuration for sandboxes.
  /// [scaling] Scaling settings for this Revision.
  /// [serviceAccount] Email address of the IAM service account associated with the revision of the service. The service account represents the identity of the running revision, and determines what permissions the revision has. If not provided, the revision will use the project's default service account.
  /// [serviceMesh] (Optional, Beta)
  /// [sessionAffinity] Enables session affinity. For more information, go to https://cloud.google.com/run/docs/configuring/session-affinity
  /// [timeout] Max allowed time for an instance to respond to a request.
  /// [volumes] A list of Volumes to make available to containers.
  /// [vpcAccess] VPC Access configuration to use for this Task. For more information, visit https://cloud.google.com/run/docs/configuring/connecting-vpc.
  const ServiceTemplate({
    this.annotations,
    this.containers,
    this.encryptionKey,
    this.executionEnvironment,
    this.gpuZonalRedundancyDisabled,
    this.healthCheckDisabled,
    this.labels,
    this.maxInstanceRequestConcurrency,
    this.nodeSelector,
    this.revision,
    this.sandboxes,
    this.scaling,
    this.serviceAccount,
    this.serviceMesh,
    this.sessionAffinity,
    this.timeout,
    this.volumes,
    this.vpcAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'containers': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<ServiceTemplateContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionKey': ?encryptionKey,
      'executionEnvironment': ?executionEnvironment,
      'gpuZonalRedundancyDisabled': ?gpuZonalRedundancyDisabled,
      'healthCheckDisabled': ?healthCheckDisabled,
      'labels': ?labels,
      'maxInstanceRequestConcurrency': ?maxInstanceRequestConcurrency,
      'nodeSelector': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateNodeSelector, Map<String, dynamic>>(nodeSelector, (value) => value.toMap()),
      'revision': ?revision,
      'sandboxes': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateSandboxes, Map<String, dynamic>>(sandboxes, (value) => value.toMap()),
      'scaling': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateScaling, Map<String, dynamic>>(scaling, (value) => value.toMap()),
      'serviceAccount': ?serviceAccount,
      'serviceMesh': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateServiceMesh, Map<String, dynamic>>(serviceMesh, (value) => value.toMap()),
      'sessionAffinity': ?sessionAffinity,
      'timeout': ?timeout,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<ServiceTemplateVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<ServiceTemplateVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vpcAccess': ?pulumi.Input.mapOptionalInputValue<ServiceTemplateVpcAccess, Map<String, dynamic>>(vpcAccess, (value) => value.toMap()),
    };
  }

  factory ServiceTemplate.fromMap(Map<String, dynamic> map) {
    return ServiceTemplate(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTemplateContainer>(guardedValue, (value) => ServiceTemplateContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionEnvironment: (() { final guardedValue = map['executionEnvironment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gpuZonalRedundancyDisabled: (() { final guardedValue = map['gpuZonalRedundancyDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckDisabled: (() { final guardedValue = map['healthCheckDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      maxInstanceRequestConcurrency: (() { final guardedValue = map['maxInstanceRequestConcurrency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      nodeSelector: (() { final guardedValue = map['nodeSelector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateNodeSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sandboxes: (() { final guardedValue = map['sandboxes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateSandboxes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scaling: (() { final guardedValue = map['scaling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateScaling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceMesh: (() { final guardedValue = map['serviceMesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateServiceMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceTemplateVolume>(guardedValue, (value) => ServiceTemplateVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
      vpcAccess: (() { final guardedValue = map['vpcAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceTemplateVpcAccess.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
