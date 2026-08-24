// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'component.dart';
import 'custom.dart';

/// {@template pulumi_index_refs_args_doc}
/// Arguments for refs.
/// {@endtemplate}
/// {@macro pulumi_index_refs_args_doc}
class RefsArgs {
  final pulumi.Input<Component> self;
  final pulumi.Input<Custom> resource;
  final pulumi.Input<List<Custom>> resourceList;
  final pulumi.Input<Map<String, Custom>> resourceMap;

  /// Creates a new [RefsArgs].
  /// [self] Required.
  /// [resource] Required.
  /// [resourceList] Required.
  /// [resourceMap] Required.
  const RefsArgs({
    required this.self,
    required this.resource,
    required this.resourceList,
    required this.resourceMap,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '__self__': self,
      'resource': resource,
      'resourceList': resourceList,
      'resourceMap': resourceMap,
    };
  }

  factory RefsArgs.fromMap(Map<String, dynamic> map) {
    return RefsArgs(
      self: pulumi.Input.fromValue(map['__self__'] as Component),
      resource: pulumi.Input.fromValue(map['resource'] as Custom),
      resourceList: pulumi.Input.fromValue((map['resourceList'] as List).cast<Custom>()),
      resourceMap: pulumi.Input.fromValue((map['resourceMap'] as Map).cast<String, Custom>()),
    );
  }
}
