// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_tasks_deploy.dart';
import 'custom_target_type_tasks_render.dart';

class CustomTargetTypeTasks {
  /// The task responsible for deploy operations.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeTasksDeploy> deploy;
  /// The task responsible for render operations. If not provided then Cloud Deploy will perform its default rendering operation.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeTasksRender>? render;

  /// Creates a new [CustomTargetTypeTasks].
  /// [deploy] The task responsible for deploy operations.
  /// [render] The task responsible for render operations. If not provided then Cloud Deploy will perform its default rendering operation.
  const CustomTargetTypeTasks({
    required this.deploy,
    this.render,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploy': pulumi.Input.mapInputValue<CustomTargetTypeTasksDeploy, Map<String, dynamic>>(deploy, (value) => value.toMap()),
      'render': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeTasksRender, Map<String, dynamic>>(render, (value) => value.toMap()),
    };
  }

  factory CustomTargetTypeTasks.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeTasks(
      deploy: pulumi.Input.fromValue(CustomTargetTypeTasksDeploy.fromMap((map['deploy']! as Map).cast<String, dynamic>())),
      render: (() { final guardedValue = map['render']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeTasksRender.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
