// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_driver_io_threads_io_thread_queue.dart';

class DomainDevicesDiskDriverIoThreadsIoThread {
  /// Specifies the identifier for the I/O thread configuration.
  final pulumi.Input<double>? id;
  /// Sets the queues for the I/O thread to manage I/O requests.
  final pulumi.Input<List<DomainDevicesDiskDriverIoThreadsIoThreadQueue>>? queues;

  /// Creates a new [DomainDevicesDiskDriverIoThreadsIoThread].
  /// [id] Specifies the identifier for the I/O thread configuration.
  /// [queues] Sets the queues for the I/O thread to manage I/O requests.
  DomainDevicesDiskDriverIoThreadsIoThread({
    this.id,
    this.queues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'queues': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesDiskDriverIoThreadsIoThreadQueue>, List<Map<String, dynamic>>>(queues, (value) => pulumi.Input.encodeList<DomainDevicesDiskDriverIoThreadsIoThreadQueue, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesDiskDriverIoThreadsIoThread.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverIoThreadsIoThread(
      id: map['id'] == null ? null : (map['id'] as double).input(),
      queues: map['queues'] == null ? null : (pulumi.Input.decodeList<DomainDevicesDiskDriverIoThreadsIoThreadQueue>(map['queues'], (value) => DomainDevicesDiskDriverIoThreadsIoThreadQueue.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

