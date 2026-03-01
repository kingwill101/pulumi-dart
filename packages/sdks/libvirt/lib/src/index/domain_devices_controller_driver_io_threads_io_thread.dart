// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_driver_io_threads_io_thread_queue.dart';

class DomainDevicesControllerDriverIoThreadsIoThread {
  /// Assigns a unique identifier to the I/O thread for the controller driver.
  final double? id;
  /// Sets the configuration for I/O queues associated with the specific I/O thread of the controller driver.
  final List<DomainDevicesControllerDriverIoThreadsIoThreadQueue>? queues;

  /// Creates a new [DomainDevicesControllerDriverIoThreadsIoThread].
  /// [id] Assigns a unique identifier to the I/O thread for the controller driver.
  /// [queues] Sets the configuration for I/O queues associated with the specific I/O thread of the controller driver.
  DomainDevicesControllerDriverIoThreadsIoThread({
    this.id,
    this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'queues': ?queues == null ? null : pulumi.Input.encodeList<DomainDevicesControllerDriverIoThreadsIoThreadQueue, Map<String, dynamic>>(queues!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesControllerDriverIoThreadsIoThread.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerDriverIoThreadsIoThread(
      id: map['id'] == null ? null : map['id'] as double,
      queues: map['queues'] == null ? null : pulumi.Input.decodeList<DomainDevicesControllerDriverIoThreadsIoThreadQueue>(map['queues'], (value) => DomainDevicesControllerDriverIoThreadsIoThreadQueue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

