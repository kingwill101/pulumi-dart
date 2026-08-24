// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerVersionContainer {
  /// Select which Durable Object class should get this container attached.
  final pulumi.Input<String> className;

  /// Creates a new [WorkerVersionContainer].
  /// [className] Select which Durable Object class should get this container attached.
  const WorkerVersionContainer({
    required this.className,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
    };
  }

  factory WorkerVersionContainer.fromMap(Map<String, dynamic> map) {
    return WorkerVersionContainer(
      className: pulumi.Input.fromValue(map['className'] as String),
    );
  }
}
