// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_tasks_deploy_container.dart';

class CustomTargetTypeTasksDeploy {
  /// This task is represented by a container that is executed in the Cloud Build execution environment.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeTasksDeployContainer>? container;

  /// Creates a new [CustomTargetTypeTasksDeploy].
  /// [container] This task is represented by a container that is executed in the Cloud Build execution environment.
  const CustomTargetTypeTasksDeploy({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeTasksDeployContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory CustomTargetTypeTasksDeploy.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeTasksDeploy(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeTasksDeployContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
