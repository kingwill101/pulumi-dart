// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_component_refs_args_doc}
/// Arguments for Component.refs.
/// {@endtemplate}
/// {@macro pulumi_index_component_refs_args_doc}
class ComponentRefsArgs {
  final pulumi.Input<pulumi.CustomResource> resource;
  final pulumi.Input<List<pulumi.CustomResource>> resourceList;
  final pulumi.Input<Map<String, pulumi.CustomResource>> resourceMap;

  /// Creates a new [ComponentRefsArgs].
  /// [resource] Required.
  /// [resourceList] Required.
  /// [resourceMap] Required.
  const ComponentRefsArgs({
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

  factory ComponentRefsArgs.fromMap(Map<String, dynamic> map) {
    return ComponentRefsArgs(
      resource: pulumi.Input.fromValue(map['resource'] as pulumi.CustomResource),
      resourceList: pulumi.Input.fromValue((map['resourceList'] as List).cast<pulumi.CustomResource>()),
      resourceMap: pulumi.Input.fromValue((map['resourceMap'] as Map).cast<String, pulumi.CustomResource>()),
    );
  }
}
