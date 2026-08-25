// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_target_type_tasks_render_container.dart';

class CustomTargetTypeTasksRender {
  /// This task is represented by a container that is executed in the Cloud Build execution environment.
  /// Structure is documented below.
  final pulumi.Input<CustomTargetTypeTasksRenderContainer?>? container;

  /// Creates a new [CustomTargetTypeTasksRender].
  /// [container] This task is represented by a container that is executed in the Cloud Build execution environment.
  const CustomTargetTypeTasksRender({
    this.container,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'container': ?pulumi.Input.mapOptionalInputValue<CustomTargetTypeTasksRenderContainer, Map<String, dynamic>>(container, (value) => value.toMap()),
    };
  }

  factory CustomTargetTypeTasksRender.fromMap(Map<String, dynamic> map) {
    return CustomTargetTypeTasksRender(
      container: (() { final guardedValue = map['container']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomTargetTypeTasksRenderContainer.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
