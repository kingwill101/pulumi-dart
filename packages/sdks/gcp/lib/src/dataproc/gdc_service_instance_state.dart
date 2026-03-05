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
    this.createTime,
    this.displayName,
    this.effectiveLabels,
    this.effectiveServiceAccount,
    this.gdceCluster,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.requestedState,
    this.serviceAccount,
    this.serviceInstanceId,
    this.sparkServiceInstanceConfig,
    this.state,
    this.stateMessage,
    this.uid,
    this.updateTime,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      effectiveServiceAccount: (() { final guardedValue = map['effectiveServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gdceCluster: (() { final guardedValue = map['gdceCluster']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GdcServiceInstanceGdceCluster.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      requestedState: (() { final guardedValue = map['requestedState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceInstanceId: (() { final guardedValue = map['serviceInstanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sparkServiceInstanceConfig: (() { final guardedValue = map['sparkServiceInstanceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

