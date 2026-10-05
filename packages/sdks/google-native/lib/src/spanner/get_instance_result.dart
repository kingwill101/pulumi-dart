// ignore_for_file: unused_element, unnecessary_cast

import 'autoscaling_config_response.dart';
import 'free_instance_metadata_response.dart';

/// Result data returned by getInstance.
class GetInstanceResult {
  /// Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autoscaling is enabled, node_count and processing_units are treated as OUTPUT_ONLY fields and reflect the current compute capacity allocated to the instance.
  final AutoscalingConfigResponse? autoscalingConfig;
  /// The name of the instance's configuration. Values are of the form `projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
  final String? config;
  /// The time at which the instance was created.
  final String? createTime;
  /// The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
  final String? displayName;
  /// Deprecated. This field is not populated.
  final List<String>? endpointUris;
  /// Free instance metadata. Only populated for free instances.
  final FreeInstanceMetadataResponse? freeInstanceMetadata;
  /// The `InstanceType` of the current instance.
  final String? instanceType;
  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  final Map<String, String>? labels;
  /// A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.
  final String? name;
  /// The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. Users can set the node_count field to specify the target number of nodes allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  final int? nodeCount;
  /// The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. Users can set the processing_units field to specify the target number of processing units allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  final int? processingUnits;
  /// The current instance state. For CreateInstance, the state must be either omitted or set to `CREATING`. For UpdateInstance, the state must be either omitted or set to `READY`.
  final String? state;
  /// The time at which the instance was most recently updated.
  final String? updateTime;

  /// Creates a new [GetInstanceResult].
  /// [autoscalingConfig] Optional. The autoscaling configuration. Autoscaling is enabled if this field is set. When autoscaling is enabled, node_count and processing_units are treated as OUTPUT_ONLY fields and reflect the current compute capacity allocated to the instance.
  /// [config] The name of the instance's configuration. Values are of the form `projects//instanceConfigs/`. See also InstanceConfig and ListInstanceConfigs.
  /// [createTime] The time at which the instance was created.
  /// [displayName] The descriptive name for this instance as it appears in UIs. Must be unique per project and between 4 and 30 characters in length.
  /// [endpointUris] Deprecated. This field is not populated.
  /// [freeInstanceMetadata] Free instance metadata. Only populated for free instances.
  /// [instanceType] The `InstanceType` of the current instance.
  /// [labels] Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. And so you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  /// [name] A unique identifier for the instance, which cannot be changed after the instance is created. Values are of the form `projects//instances/a-z*[a-z0-9]`. The final segment of the name must be between 2 and 64 characters in length.
  /// [nodeCount] The number of nodes allocated to this instance. At most one of either node_count or processing_units should be present in the message. Users can set the node_count field to specify the target number of nodes allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  /// [processingUnits] The number of processing units allocated to this instance. At most one of processing_units or node_count should be present in the message. Users can set the processing_units field to specify the target number of processing units allocated to the instance. This may be zero in API responses for instances that are not yet in state `READY`. See [the documentation](https://cloud.google.com/spanner/docs/compute-capacity) for more information about nodes and processing units.
  /// [state] The current instance state. For CreateInstance, the state must be either omitted or set to `CREATING`. For UpdateInstance, the state must be either omitted or set to `READY`.
  /// [updateTime] The time at which the instance was most recently updated.
  const GetInstanceResult({
    this.autoscalingConfig,
    this.config,
    this.createTime,
    this.displayName,
    this.endpointUris,
    this.freeInstanceMetadata,
    this.instanceType,
    this.labels,
    this.name,
    this.nodeCount,
    this.processingUnits,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingConfig': ?autoscalingConfig?.toMap(),
      'config': ?config,
      'createTime': ?createTime,
      'displayName': ?displayName,
      'endpointUris': ?endpointUris,
      'freeInstanceMetadata': ?freeInstanceMetadata?.toMap(),
      'instanceType': ?instanceType,
      'labels': ?labels,
      'name': ?name,
      'nodeCount': ?nodeCount,
      'processingUnits': ?processingUnits,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetInstanceResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceResult(
      autoscalingConfig: (() { final guardedValue = map['autoscalingConfig']; if (guardedValue == null) return null; return AutoscalingConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointUris: (() { final guardedValue = map['endpointUris']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      freeInstanceMetadata: (() { final guardedValue = map['freeInstanceMetadata']; if (guardedValue == null) return null; return FreeInstanceMetadataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeCount: (() { final guardedValue = map['nodeCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      processingUnits: (() { final guardedValue = map['processingUnits']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
