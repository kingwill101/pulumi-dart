// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_driver_io_threads_io_thread.dart';

class DomainDevicesControllerDriverIoThreads {
  /// Configures details for a specific I/O thread associated with the controller driver.
  final List<DomainDevicesControllerDriverIoThreadsIoThread>? ioThreads;

  /// Creates a new [DomainDevicesControllerDriverIoThreads].
  /// [ioThreads] Configures details for a specific I/O thread associated with the controller driver.
  DomainDevicesControllerDriverIoThreads({
    this.ioThreads,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ioThreads': ?ioThreads == null ? null : pulumi.Input.encodeList<DomainDevicesControllerDriverIoThreadsIoThread, Map<String, dynamic>>(ioThreads!, (value) => value.toMap()),
    };
  }

  factory DomainDevicesControllerDriverIoThreads.fromMap(Map<String, dynamic> map) {
    return DomainDevicesControllerDriverIoThreads(
      ioThreads: map['ioThreads'] == null ? null : pulumi.Input.decodeList<DomainDevicesControllerDriverIoThreadsIoThread>(map['ioThreads'], (value) => DomainDevicesControllerDriverIoThreadsIoThread.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

