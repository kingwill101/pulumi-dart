// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_builder_build_pack_group.dart';
import 'spring_cloud_builder_stack.dart';

/// {@template pulumi_appplatform_spring_cloud_builder_spring_cloud_builder_args_doc}
/// The set of arguments for SpringCloudBuilder.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_builder_spring_cloud_builder_args_doc}
class SpringCloudBuilderArgs {
  /// One or more `buildPackGroup` blocks as defined below.
  final pulumi.Input<List<SpringCloudBuilderBuildPackGroup>> buildPackGroups;
  /// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// A `stack` block as defined below.
  final pulumi.Input<SpringCloudBuilderStack> stack;

  /// Creates a new [SpringCloudBuilderArgs].
  /// [buildPackGroups] One or more `buildPackGroup` blocks as defined below.
  /// [name] The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  /// [stack] A `stack` block as defined below.
  const SpringCloudBuilderArgs({
    required this.buildPackGroups,
    this.name,
    required this.springCloudServiceId,
    required this.stack,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildPackGroups': pulumi.Input.mapInputValue<List<SpringCloudBuilderBuildPackGroup>, List<Map<String, dynamic>>>(buildPackGroups, (value) => pulumi.Input.encodeList<SpringCloudBuilderBuildPackGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
      'stack': pulumi.Input.mapInputValue<SpringCloudBuilderStack, Map<String, dynamic>>(stack, (value) => value.toMap()),
    };
  }

  factory SpringCloudBuilderArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuilderArgs(
      buildPackGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<SpringCloudBuilderBuildPackGroup>(map['buildPackGroups']!, (value) => SpringCloudBuilderBuildPackGroup.fromMap((value as Map).cast<String, dynamic>()))),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      springCloudServiceId: pulumi.Input.fromValue(map['springCloudServiceId'] as String),
      stack: pulumi.Input.fromValue(SpringCloudBuilderStack.fromMap((map['stack']! as Map).cast<String, dynamic>())),
    );
  }
}
