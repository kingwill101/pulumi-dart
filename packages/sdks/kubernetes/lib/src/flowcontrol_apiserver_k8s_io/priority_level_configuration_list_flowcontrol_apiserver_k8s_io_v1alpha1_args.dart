// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'priority_level_configuration_resource.dart';

/// {@template pulumi_flowcontrol_apiserver_k8s_io_v1alpha1_priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1alpha1_args_doc}
/// The set of arguments for PriorityLevelConfigurationList.
/// {@endtemplate}
/// {@macro pulumi_flowcontrol_apiserver_k8s_io_v1alpha1_priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1alpha1_args_doc}
class PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1alpha1Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// `items` is a list of request-priorities.
  final pulumi.Input<List<PriorityLevelConfigurationResource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1alpha1Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] `items` is a list of request-priorities.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1alpha1Args({
    pulumi.Output<String>? apiVersion,
    required pulumi.Output<List<PriorityLevelConfigurationResource>> items,
    pulumi.Output<String>? kind,
    pulumi.Output<ListMeta>? metadata,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      items = pulumi.Input.asInput<List<PriorityLevelConfigurationResource>>(items),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ListMeta>(metadata);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1alpha1Args(
      apiVersion: map['apiVersion'] == null ? null : pulumi.Output.create<String>(map['apiVersion'] as String),
      items: pulumi.Output.create<List<PriorityLevelConfigurationResource>>((map['items'] as List).cast<PriorityLevelConfigurationResource>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<ListMeta>(ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())),
    );
  }
}

