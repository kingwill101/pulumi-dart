// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gdc_service_instance_gdce_cluster.dart';

/// Input properties used for looking up and filtering GdcServiceInstance resources.
class GdcServiceInstanceState {
  /// The timestamp when the resource was created.
  final pulumi.Input<String>? createTime;
  /// User-provided human-readable name to be used in user interfaces.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Effective service account associated with ServiceInstance. This will be the service_account if specified. Otherwise, it will be an automatically created per-resource P4SA that also automatically has Fleet Workload. Identity bindings applied.
  final pulumi.Input<String>? effectiveServiceAccount;
  /// Gdce cluster information.
  /// Structure is documented below.
  final pulumi.Input<GdcServiceInstanceGdceCluster>? gdceCluster;
  /// The labels to associate with this service instance. Labels may be used for filtering and billing tracking.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the resource.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the service instance.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Whether the service instance is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  final pulumi.Input<bool>? reconciling;
  /// The intended state to which the service instance is reconciling. Possible values:
  /// * `CREATING`
  /// * `ACTIVE`
  /// * `DISCONNECTED`
  /// * `DELETING`
  /// * `STOPPING`
  /// * `STOPPED`
  /// * `STARTING`
  /// * `UPDATING`
  /// * `FAILED`
  final pulumi.Input<String>? requestedState;
  /// Requested service account to associate with ServiceInstance.
  final pulumi.Input<String>? serviceAccount;
  /// Id of the service instance.
  final pulumi.Input<String>? serviceInstanceId;
  /// Spark-specific service instance configuration.
  final pulumi.Input<Map<String, dynamic>>? sparkServiceInstanceConfig;
  /// The current state. Possible values:
  /// * `CREATING`
  /// * `ACTIVE`
  /// * `DISCONNECTED`
  /// * `DELETING`
  /// * `STOPPING`
  /// * `STOPPED`
  /// * `STARTING`
  /// * `UPDATING`
  /// * `FAILED`
  final pulumi.Input<String>? state;
  /// A message explaining the current state.
  final pulumi.Input<String>? stateMessage;
  /// System generated unique identifier for this service instance, formatted as UUID4.
  final pulumi.Input<String>? uid;
  /// The timestamp when the resource was most recently updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [GdcServiceInstanceState].
  /// [createTime] The timestamp when the resource was created.
  /// [displayName] User-provided human-readable name to be used in user interfaces.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [effectiveServiceAccount] Effective service account associated with ServiceInstance. This will be the service_account if specified. Otherwise, it will be an automatically created per-resource P4SA that also automatically has Fleet Workload. Identity bindings applied.
  /// [gdceCluster] Gdce cluster information.
  /// [labels] The labels to associate with this service instance. Labels may be used for filtering and billing tracking.
  /// [location] Location of the resource.
  /// [name] Identifier. The name of the service instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Whether the service instance is currently reconciling. True if the current state of the resource does not match the intended state, and the system is working to reconcile them, whether or not the change was user initiated.
  /// [requestedState] The intended state to which the service instance is reconciling. Possible values:
  /// [serviceAccount] Requested service account to associate with ServiceInstance.
  /// [serviceInstanceId] Id of the service instance.
  /// [sparkServiceInstanceConfig] Spark-specific service instance configuration.
  /// [state] The current state. Possible values:
  /// [stateMessage] A message explaining the current state.
  /// [uid] System generated unique identifier for this service instance, formatted as UUID4.
  /// [updateTime] The timestamp when the resource was most recently updated.
  GdcServiceInstanceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? effectiveServiceAccount,
    pulumi.Output<GdcServiceInstanceGdceCluster>? gdceCluster,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? requestedState,
    pulumi.Output<String>? serviceAccount,
    pulumi.Output<String>? serviceInstanceId,
    pulumi.Output<Map<String, dynamic>>? sparkServiceInstanceConfig,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateMessage,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      effectiveServiceAccount = pulumi.Input.asOptionalInput<String>(effectiveServiceAccount),
      gdceCluster = pulumi.Input.asOptionalInput<GdcServiceInstanceGdceCluster>(gdceCluster),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      requestedState = pulumi.Input.asOptionalInput<String>(requestedState),
      serviceAccount = pulumi.Input.asOptionalInput<String>(serviceAccount),
      serviceInstanceId = pulumi.Input.asOptionalInput<String>(serviceInstanceId),
      sparkServiceInstanceConfig = pulumi.Input.asOptionalInput<Map<String, dynamic>>(sparkServiceInstanceConfig),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateMessage = pulumi.Input.asOptionalInput<String>(stateMessage),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'effectiveServiceAccount': ?effectiveServiceAccount,
      'gdceCluster': ?pulumi.Input.mapOptionalInputValue<GdcServiceInstanceGdceCluster, Map<String, dynamic>>(gdceCluster, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'requestedState': ?requestedState,
      'serviceAccount': ?serviceAccount,
      'serviceInstanceId': ?serviceInstanceId,
      'sparkServiceInstanceConfig': ?sparkServiceInstanceConfig,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GdcServiceInstanceState.fromMap(Map<String, dynamic> map) {
    return GdcServiceInstanceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      effectiveServiceAccount: map['effectiveServiceAccount'] == null ? null : pulumi.Output.create<String>(map['effectiveServiceAccount'] as String),
      gdceCluster: map['gdceCluster'] == null ? null : pulumi.Output.create<GdcServiceInstanceGdceCluster>(GdcServiceInstanceGdceCluster.fromMap((map['gdceCluster'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      requestedState: map['requestedState'] == null ? null : pulumi.Output.create<String>(map['requestedState'] as String),
      serviceAccount: map['serviceAccount'] == null ? null : pulumi.Output.create<String>(map['serviceAccount'] as String),
      serviceInstanceId: map['serviceInstanceId'] == null ? null : pulumi.Output.create<String>(map['serviceInstanceId'] as String),
      sparkServiceInstanceConfig: map['sparkServiceInstanceConfig'] == null ? null : pulumi.Output.create<Map<String, dynamic>>((map['sparkServiceInstanceConfig'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateMessage: map['stateMessage'] == null ? null : pulumi.Output.create<String>(map['stateMessage'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

