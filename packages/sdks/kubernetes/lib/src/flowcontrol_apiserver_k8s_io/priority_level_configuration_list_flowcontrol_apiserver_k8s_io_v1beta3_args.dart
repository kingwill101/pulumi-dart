// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'priority_level_configuration_flowcontrol_apiserver_k8s_io_v1beta3_resource.dart';

/// {@template pulumi_flowcontrol_apiserver_k8s_io_v1beta3_priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
/// The set of arguments for PriorityLevelConfigurationList.
/// {@endtemplate}
/// {@macro pulumi_flowcontrol_apiserver_k8s_io_v1beta3_priority_level_configuration_list_flowcontrol_apiserver_k8s_io_v1beta3_args_doc}
class PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// `items` is a list of request-priorities.
  final pulumi.Input<List<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta3Resource>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  final pulumi.Input<ListMeta>? metadata;

  /// Creates a new [PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [items] `items` is a list of request-priorities.
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] `metadata` is the standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
  PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Args({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'items': items,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ListMeta, Map<String, dynamic>>(metadata, (value) => value.toMap()),
    };
  }

  factory PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Args.fromMap(Map<String, dynamic> map) {
    return PriorityLevelConfigurationListFlowcontrolApiserverK8sIoV1beta3Args(
      apiVersion: map['apiVersion'] == null ? null : (map['apiVersion'] as String).input(),
      items: ((map['items'] as List).cast<PriorityLevelConfigurationFlowcontrolApiserverK8sIoV1beta3Resource>()).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      metadata: map['metadata'] == null ? null : (ListMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

