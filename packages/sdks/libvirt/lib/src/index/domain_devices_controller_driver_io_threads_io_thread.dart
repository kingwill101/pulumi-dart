// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_driver_io_threads_io_thread_queue.dart';

class DomainDevicesControllerDriverIoThreadsIoThread {
  /// Assigns a unique identifier to the I/O thread for the controller driver.
  final pulumi.Input<double>? id;
  /// Sets the configuration for I/O queues associated with the specific I/O thread of the controller driver.
  final pulumi.Input<List<DomainDevicesControllerDriverIoThreadsIoThreadQueue>>? queues;

  /// Creates a new [DomainDevicesControllerDriverIoThreadsIoThread].
  /// [id] Assigns a unique identifier to the I/O thread for the controller driver.
  /// [queues] Sets the configuration for I/O queues associated with the specific I/O thread of the controller driver.
  const DomainDevicesControllerDriverIoThreadsIoThread({
    this.id,
    this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'queues': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesControllerDriverIoThreadsIoThreadQueue>, List<Map<String, dynamic>>>(queues, (value) => pulumi.Input.encodeList<DomainDevicesControllerDriverIoThreadsIoThreadQueue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesControllerDriverIoThreadsIoThread.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerDriverIoThreadsIoThread(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesControllerDriverIoThreadsIoThreadQueue>(guardedValue, (value) => DomainDevicesControllerDriverIoThreadsIoThreadQueue.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

