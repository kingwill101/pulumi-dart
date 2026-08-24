// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkerVersionsResultContainer {
  /// Select which Durable Object class should get this container attached.
  final pulumi.Input<String> className;

  /// Creates a new [GetWorkerVersionsResultContainer].
  /// [className] Select which Durable Object class should get this container attached.
  const GetWorkerVersionsResultContainer({
    required this.className,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'className': className,
    };
  }

  factory GetWorkerVersionsResultContainer.fromMap(Map<String, dynamic> map) {
    return GetWorkerVersionsResultContainer(
      className: pulumi.Input.fromValue(map['className'] as String),
    );
  }
}
