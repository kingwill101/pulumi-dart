// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_condition.dart';
import 'instance_container.dart';
import 'instance_container_status.dart';
import 'instance_terminal_condition.dart';
import 'instance_volume.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// Cloud Run API v2 does not support annotations with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected in new resources.
  /// This field follows Kubernetes annotations' namespacing, limits, and rules.
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effectiveAnnotations` for all of the annotations present on the resource.
  final pulumi.Input<Map<String, String>?>? annotations;
  /// Arbitrary identifier for the API client.
  final pulumi.Input<String?>? client;
  /// Arbitrary version identifier for the API client.
  final pulumi.Input<String?>? clientVersion;
  /// The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Instance does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceCondition>?>? conditions;
  /// Status information for each of the specified containers. The status includes the resolved digest for specified images.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceContainerStatus>?>? containerStatuses;
  /// Holds the single container that defines the unit of execution for this Instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceContainer>?>? containers;
  /// The creation time.
  final pulumi.Input<String?>? createTime;
  /// Email address of the authenticated creator.
  final pulumi.Input<String?>? creator;
  /// Disables public resolution of the default URI of this Instance.
  final pulumi.Input<bool?>? defaultUriDisabled;
  /// The deletion time.
  final pulumi.Input<String?>? deleteTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveAnnotations;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>?>? effectiveLabels;
  /// A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  final pulumi.Input<String?>? encryptionKey;
  /// The action to take if the encryption key is revoked.
  /// Possible values are: `PREVENT_NEW`, `SHUTDOWN`.
  final pulumi.Input<String?>? encryptionKeyRevocationAction;
  /// If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// A duration in seconds with up to nine fractional digits, ending with 's'. Example: "3.5s".
  final pulumi.Input<String?>? encryptionKeyShutdownDuration;
  /// A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  final pulumi.Input<String?>? etag;
  /// For a deleted resource, the time after which it will be permanently deleted.
  final pulumi.Input<String?>? expireTime;
  /// A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String?>? generation;
  /// Provides the ingress settings for this Instance. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// Possible values are: `INGRESS_TRAFFIC_ALL`, `INGRESS_TRAFFIC_INTERNAL_ONLY`, `INGRESS_TRAFFIC_INTERNAL_LOAD_BALANCER`.
  final pulumi.Input<String?>? ingress;
  /// Disables IAM permission check for run.routes.invoke for callers of this Instance. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  final pulumi.Input<bool?>? invokerIamDisabled;
  /// Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// environment, state, etc. For more information, visit https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels or https://cloud.google.com/run/docs/configuring/labels.
  /// Cloud Run API v2 does not support labels with `run.googleapis.com`, `cloud.googleapis.com`, `serving.knative.dev`, or `autoscaling.knative.dev` namespaces, and they will be rejected.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Email address of the last authenticated modifier.
  final pulumi.Input<String?>? lastModifier;
  /// The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// For example, if ALPHA is provided as input, but only BETA and GA-level features are used, this field will be BETA on output.
  /// Possible values are: `UNIMPLEMENTED`, `PRELAUNCH`, `EARLY_ACCESS`, `ALPHA`, `BETA`, `GA`, `DEPRECATED`.
  final pulumi.Input<String?>? launchStage;
  /// The location of the cloud run instance
  final pulumi.Input<String?>? location;
  /// The Google Console URI to obtain logs for the Instance.
  final pulumi.Input<String?>? logUri;
  /// Name of the Instance.
  final pulumi.Input<String?>? name;
  /// The generation of this Instance currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  final pulumi.Input<String?>? observedGeneration;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>?>? pulumiLabels;
  /// Returns true if the Instance is currently being acted upon by the system to bring it into the desired state.
  /// When a new Instance is created, or an existing one is updated, Cloud Run will asynchronously perform all necessary steps to bring the Instance to the desired serving state. This process is called reconciliation. While reconciliation is in process, observedGeneration will have a transient value that might mismatch the intended state: Once reconciliation is over (and this field is false), there are two possible outcomes: reconciliation succeeded and the serving state matches the Instance, or there was an error, and reconciliation failed. This state can be found in terminalCondition.state.
  final pulumi.Input<bool?>? reconciling;
  /// Restart policy for the Instance. If not provided, the default is ON_FAILURE.
  /// Possible values are: `ALWAYS`, `ON_FAILURE`, `NEVER`.
  final pulumi.Input<String?>? restartPolicy;
  /// Reserved for future use. True if this service satisfies zone separation.
  final pulumi.Input<bool?>? satisfiesPzs;
  /// Email address of the IAM service account associated with the Instance. The service account represents the identity of the running Instance, and determines what permissions the instance has.
  final pulumi.Input<String?>? serviceAccount;
  /// The Condition of this Instance, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceTerminalCondition>?>? terminalConditions;
  /// Server assigned unique identifier for the instance. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  final pulumi.Input<String?>? uid;
  /// The last-modified time.
  final pulumi.Input<String?>? updateTime;
  /// All URLs serving traffic for this Instance.
  final pulumi.Input<List<String>?>? urls;
  /// A list of Volumes to make available to containers.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceVolume>?>? volumes;

  /// Creates a new [InstanceState].
  /// [annotations] Unstructured key value map that may be set by external tools to store and arbitrary metadata. They are not queryable and should be preserved when modifying objects.
  /// [client] Arbitrary identifier for the API client.
  /// [clientVersion] Arbitrary version identifier for the API client.
  /// [conditions] The Conditions of all other associated sub-resources. They contain additional diagnostics information in case the Instance does not reach its Serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [containerStatuses] Status information for each of the specified containers. The status includes the resolved digest for specified images.
  /// [containers] Holds the single container that defines the unit of execution for this Instance.
  /// [createTime] The creation time.
  /// [creator] Email address of the authenticated creator.
  /// [defaultUriDisabled] Disables public resolution of the default URI of this Instance.
  /// [deleteTime] The deletion time.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveAnnotations] All of annotations (key/value pairs) present on the resource in GCP, including the annotations configured through Terraform, other clients and services.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [encryptionKey] A reference to a customer managed encryption key (CMEK) to use to encrypt this container image. For more information, go to https://cloud.google.com/run/docs/securing/using-cmek
  /// [encryptionKeyRevocationAction] The action to take if the encryption key is revoked.
  /// [encryptionKeyShutdownDuration] If encryptionKeyRevocationAction is SHUTDOWN, the duration before shutting down all instances. The minimum increment is 1 hour.
  /// [etag] A system-generated fingerprint for this version of the resource. May be used to detect modification conflict during updates.
  /// [expireTime] For a deleted resource, the time after which it will be permanently deleted.
  /// [generation] A number that monotonically increases every time the user modifies the desired state. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [ingress] Provides the ingress settings for this Instance. On output, returns the currently observed ingress settings, or INGRESS_TRAFFIC_UNSPECIFIED if no revision is active.
  /// [invokerIamDisabled] Disables IAM permission check for run.routes.invoke for callers of this Instance. For more information, visit https://cloud.google.com/run/docs/securing/managing-access#invoker_check.
  /// [labels] Unstructured key value map that can be used to organize and categorize objects. User-provided labels are shared with Google's billing system, so they can be used to filter, or break down billing charges by team, component,
  /// [lastModifier] Email address of the last authenticated modifier.
  /// [launchStage] The launch stage as defined by [Google Cloud Platform Launch Stages](https://cloud.google.com/products#product-launch-stages). Cloud Run supports ALPHA, BETA, and GA. If no value is specified, GA is assumed. Set the launch stage to a preview stage on input to allow use of preview features in that stage. On read (or output), describes whether the resource uses preview features.
  /// [location] The location of the cloud run instance
  /// [logUri] The Google Console URI to obtain logs for the Instance.
  /// [name] Name of the Instance.
  /// [observedGeneration] The generation of this Instance currently serving traffic. See comments in reconciling for additional information on reconciliation process in Cloud Run. Please note that unlike v1, this is an int64 value. As with most Google APIs, its JSON representation will be a string instead of an integer.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Returns true if the Instance is currently being acted upon by the system to bring it into the desired state.
  /// [restartPolicy] Restart policy for the Instance. If not provided, the default is ON_FAILURE.
  /// [satisfiesPzs] Reserved for future use. True if this service satisfies zone separation.
  /// [serviceAccount] Email address of the IAM service account associated with the Instance. The service account represents the identity of the running Instance, and determines what permissions the instance has.
  /// [terminalConditions] The Condition of this Instance, containing its readiness status, and detailed error information in case it did not reach a serving state. See comments in reconciling for additional information on reconciliation process in Cloud Run.
  /// [uid] Server assigned unique identifier for the instance. The value is a UUID4 string and guaranteed to remain unchanged until the resource is deleted.
  /// [updateTime] The last-modified time.
  /// [urls] All URLs serving traffic for this Instance.
  /// [volumes] A list of Volumes to make available to containers.
  const InstanceState({
    this.annotations,
    this.client,
    this.clientVersion,
    this.conditions,
    this.containerStatuses,
    this.containers,
    this.createTime,
    this.creator,
    this.defaultUriDisabled,
    this.deleteTime,
    this.deletionPolicy,
    this.effectiveAnnotations,
    this.effectiveLabels,
    this.encryptionKey,
    this.encryptionKeyRevocationAction,
    this.encryptionKeyShutdownDuration,
    this.etag,
    this.expireTime,
    this.generation,
    this.ingress,
    this.invokerIamDisabled,
    this.labels,
    this.lastModifier,
    this.launchStage,
    this.location,
    this.logUri,
    this.name,
    this.observedGeneration,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.restartPolicy,
    this.satisfiesPzs,
    this.serviceAccount,
    this.terminalConditions,
    this.uid,
    this.updateTime,
    this.urls,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'client': ?client,
      'clientVersion': ?clientVersion,
      'conditions': ?pulumi.Input.mapOptionalInputValue<List<InstanceCondition>, List<Map<String, dynamic>>>(conditions, (value) => pulumi.Input.encodeList<InstanceCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerStatuses': ?pulumi.Input.mapOptionalInputValue<List<InstanceContainerStatus>, List<Map<String, dynamic>>>(containerStatuses, (value) => pulumi.Input.encodeList<InstanceContainerStatus, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containers': ?pulumi.Input.mapOptionalInputValue<List<InstanceContainer>, List<Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeList<InstanceContainer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTime': ?createTime,
      'creator': ?creator,
      'defaultUriDisabled': ?defaultUriDisabled,
      'deleteTime': ?deleteTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveAnnotations': ?effectiveAnnotations,
      'effectiveLabels': ?effectiveLabels,
      'encryptionKey': ?encryptionKey,
      'encryptionKeyRevocationAction': ?encryptionKeyRevocationAction,
      'encryptionKeyShutdownDuration': ?encryptionKeyShutdownDuration,
      'etag': ?etag,
      'expireTime': ?expireTime,
      'generation': ?generation,
      'ingress': ?ingress,
      'invokerIamDisabled': ?invokerIamDisabled,
      'labels': ?labels,
      'lastModifier': ?lastModifier,
      'launchStage': ?launchStage,
      'location': ?location,
      'logUri': ?logUri,
      'name': ?name,
      'observedGeneration': ?observedGeneration,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'restartPolicy': ?restartPolicy,
      'satisfiesPzs': ?satisfiesPzs,
      'serviceAccount': ?serviceAccount,
      'terminalConditions': ?pulumi.Input.mapOptionalInputValue<List<InstanceTerminalCondition>, List<Map<String, dynamic>>>(terminalConditions, (value) => pulumi.Input.encodeList<InstanceTerminalCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uid': ?uid,
      'updateTime': ?updateTime,
      'urls': ?urls,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<InstanceVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<InstanceVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientVersion: (() { final guardedValue = map['clientVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      conditions: (() { final guardedValue = map['conditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceCondition>(guardedValue, (value) => InstanceCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containerStatuses: (() { final guardedValue = map['containerStatuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceContainerStatus>(guardedValue, (value) => InstanceContainerStatus.fromMap((value as Map).cast<String, dynamic>()))); })(),
      containers: (() { final guardedValue = map['containers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceContainer>(guardedValue, (value) => InstanceContainer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creator: (() { final guardedValue = map['creator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultUriDisabled: (() { final guardedValue = map['defaultUriDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveAnnotations: (() { final guardedValue = map['effectiveAnnotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      encryptionKey: (() { final guardedValue = map['encryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyRevocationAction: (() { final guardedValue = map['encryptionKeyRevocationAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionKeyShutdownDuration: (() { final guardedValue = map['encryptionKeyShutdownDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      generation: (() { final guardedValue = map['generation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingress: (() { final guardedValue = map['ingress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      invokerIamDisabled: (() { final guardedValue = map['invokerIamDisabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lastModifier: (() { final guardedValue = map['lastModifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      launchStage: (() { final guardedValue = map['launchStage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logUri: (() { final guardedValue = map['logUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      observedGeneration: (() { final guardedValue = map['observedGeneration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      restartPolicy: (() { final guardedValue = map['restartPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      satisfiesPzs: (() { final guardedValue = map['satisfiesPzs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      terminalConditions: (() { final guardedValue = map['terminalConditions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceTerminalCondition>(guardedValue, (value) => InstanceTerminalCondition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      urls: (() { final guardedValue = map['urls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceVolume>(guardedValue, (value) => InstanceVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
