// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_builder_build_pack_group.dart';
import 'spring_cloud_builder_stack.dart';

/// {@template pulumi_appplatform_spring_cloud_builder_spring_cloud_builder_args_doc}
/// The set of arguments for SpringCloudBuilder.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_builder_spring_cloud_builder_args_doc}
class SpringCloudBuilderArgs {
  /// One or more `build_pack_group` blocks as defined below.
  final pulumi.Input<List<SpringCloudBuilderBuildPackGroup>> buildPackGroups;
  /// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  final pulumi.Input<String> springCloudServiceId;
  /// A `stack` block as defined below.
  final pulumi.Input<SpringCloudBuilderStack> stack;

  /// Creates a new [SpringCloudBuilderArgs].
  /// [buildPackGroups] One or more `build_pack_group` blocks as defined below.
  /// [name] The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  /// [stack] A `stack` block as defined below.
  SpringCloudBuilderArgs({
    required pulumi.Output<List<SpringCloudBuilderBuildPackGroup>> buildPackGroups,
    pulumi.Output<String>? name,
    required pulumi.Output<String> springCloudServiceId,
    required pulumi.Output<SpringCloudBuilderStack> stack,
  }) :
      buildPackGroups = pulumi.Input.asInput<List<SpringCloudBuilderBuildPackGroup>>(buildPackGroups),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId),
      stack = pulumi.Input.asInput<SpringCloudBuilderStack>(stack);

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
      buildPackGroups: pulumi.Output.create<List<SpringCloudBuilderBuildPackGroup>>(pulumi.Input.decodeList<SpringCloudBuilderBuildPackGroup>(map['buildPackGroups'], (value) => SpringCloudBuilderBuildPackGroup.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudServiceId: pulumi.Output.create<String>(map['springCloudServiceId'] as String),
      stack: pulumi.Output.create<SpringCloudBuilderStack>(SpringCloudBuilderStack.fromMap((map['stack'] as Map).cast<String, dynamic>())),
    );
  }
}

