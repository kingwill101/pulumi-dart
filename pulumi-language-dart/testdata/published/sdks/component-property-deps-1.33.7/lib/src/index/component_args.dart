// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom.dart';

/// {@template pulumi_index_component_args_doc}
/// The set of arguments for Component.
/// {@endtemplate}
/// {@macro pulumi_index_component_args_doc}
class ComponentArgs {
  final pulumi.Input<Custom> resource;
  final pulumi.Input<List<Custom>> resourceList;
  final pulumi.Input<Map<String, Custom>> resourceMap;

  /// Creates a new [ComponentArgs].
  /// [resource] Required.
  /// [resourceList] Required.
  /// [resourceMap] Required.
  const ComponentArgs({
    required this.resource,
    required this.resourceList,
    required this.resourceMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resource': resource,
      'resourceList': resourceList,
      'resourceMap': resourceMap,
    };
  }

  factory ComponentArgs.fromMap(Map<String, dynamic> map) {
    return ComponentArgs(
      resource: pulumi.Input.fromValue(map['resource'] as Custom),
      resourceList: pulumi.Input.fromValue((map['resourceList'] as List).cast<Custom>()),
      resourceMap: pulumi.Input.fromValue((map['resourceMap'] as Map).cast<String, Custom>()),
    );
  }
}
