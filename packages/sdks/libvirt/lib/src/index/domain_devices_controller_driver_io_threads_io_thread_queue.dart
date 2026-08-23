// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesControllerDriverIoThreadsIoThreadQueue {
  /// Assigns a unique identifier to the queue associated with the specific I/O thread of the controller driver.
  final pulumi.Input<double> id;

  /// Creates a new [DomainDevicesControllerDriverIoThreadsIoThreadQueue].
  /// [id] Assigns a unique identifier to the queue associated with the specific I/O thread of the controller driver.
  const DomainDevicesControllerDriverIoThreadsIoThreadQueue({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DomainDevicesControllerDriverIoThreadsIoThreadQueue.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerDriverIoThreadsIoThreadQueue(
      id: pulumi.Input.fromValue(map['id'] as double),
    );
  }
}
