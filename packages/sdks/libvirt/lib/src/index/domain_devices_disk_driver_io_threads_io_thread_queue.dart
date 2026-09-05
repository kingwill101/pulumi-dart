// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskDriverIoThreadsIoThreadQueue {
  /// Determines the identifier for the I/O queue associated with the thread.
  final pulumi.Input<double> id;

  /// Creates a new [DomainDevicesDiskDriverIoThreadsIoThreadQueue].
  /// [id] Determines the identifier for the I/O queue associated with the thread.
  const DomainDevicesDiskDriverIoThreadsIoThreadQueue({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DomainDevicesDiskDriverIoThreadsIoThreadQueue.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverIoThreadsIoThreadQueue(
      id: pulumi.Input.fromValue((map['id'] as num).toDouble()),
    );
  }
}
