// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionContainer {
  /// Select which Durable Object class should get this container attached.
  final pulumi.Input<String> className;

  /// Creates a new [GetWorkerVersionContainer].
  /// [className] Select which Durable Object class should get this container attached.
  const GetWorkerVersionContainer({
    required this.className,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
    };
  }

  factory GetWorkerVersionContainer.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionContainer(
      className: pulumi.Input.fromValue(map['className'] as String),
    );
  }
}
