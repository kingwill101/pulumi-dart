// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_builder_build_pack_group.dart';
import 'spring_cloud_builder_stack.dart';

/// Input properties used for looking up and filtering SpringCloudBuilder resources.
class SpringCloudBuilderState {
  /// One or more `build_pack_group` blocks as defined below.
  final pulumi.Input<List<SpringCloudBuilderBuildPackGroup>>? buildPackGroups;
  /// The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  final pulumi.Input<String>? springCloudServiceId;
  /// A `stack` block as defined below.
  final pulumi.Input<SpringCloudBuilderStack>? stack;

  /// Creates a new [SpringCloudBuilderState].
  /// [buildPackGroups] One or more `build_pack_group` blocks as defined below.
  /// [name] The name which should be used for this Spring Cloud Builder. Changing this forces a new Spring Cloud Builder to be created.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Builder to be created.
  /// [stack] A `stack` block as defined below.
  SpringCloudBuilderState({
    pulumi.Output<List<SpringCloudBuilderBuildPackGroup>>? buildPackGroups,
    pulumi.Output<String>? name,
    pulumi.Output<String>? springCloudServiceId,
    pulumi.Output<SpringCloudBuilderStack>? stack,
  }) :
      buildPackGroups = pulumi.Input.asOptionalInput<List<SpringCloudBuilderBuildPackGroup>>(buildPackGroups),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asOptionalInput<String>(springCloudServiceId),
      stack = pulumi.Input.asOptionalInput<SpringCloudBuilderStack>(stack);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildPackGroups': ?pulumi.Input.mapOptionalInputValue<List<SpringCloudBuilderBuildPackGroup>, List<Map<String, dynamic>>>(buildPackGroups, (value) => pulumi.Input.encodeList<SpringCloudBuilderBuildPackGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'springCloudServiceId': ?springCloudServiceId,
      'stack': ?pulumi.Input.mapOptionalInputValue<SpringCloudBuilderStack, Map<String, dynamic>>(stack, (value) => value.toMap()),
    };
  }

  factory SpringCloudBuilderState.fromMap(Map<String, dynamic> map) {
    return SpringCloudBuilderState(
      buildPackGroups: map['buildPackGroups'] == null ? null : pulumi.Output.create<List<SpringCloudBuilderBuildPackGroup>>(pulumi.Input.decodeList<SpringCloudBuilderBuildPackGroup>(map['buildPackGroups'], (value) => SpringCloudBuilderBuildPackGroup.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      springCloudServiceId: map['springCloudServiceId'] == null ? null : pulumi.Output.create<String>(map['springCloudServiceId'] as String),
      stack: map['stack'] == null ? null : pulumi.Output.create<SpringCloudBuilderStack>(SpringCloudBuilderStack.fromMap((map['stack'] as Map).cast<String, dynamic>())),
    );
  }
}

