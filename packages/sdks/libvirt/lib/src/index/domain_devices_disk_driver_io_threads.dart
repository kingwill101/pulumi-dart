// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_disk_driver_io_threads_io_thread.dart';

class DomainDevicesDiskDriverIoThreads {
  /// Defines individual I/O thread settings for the disk.
  final pulumi.Input<List<DomainDevicesDiskDriverIoThreadsIoThread>>? ioThreads;

  /// Creates a new [DomainDevicesDiskDriverIoThreads].
  /// [ioThreads] Defines individual I/O thread settings for the disk.
  DomainDevicesDiskDriverIoThreads({this.ioThreads});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ioThreads':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesDiskDriverIoThreadsIoThread>,
            List<Map<String, dynamic>>
          >(
            ioThreads,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesDiskDriverIoThreadsIoThread,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesDiskDriverIoThreads.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskDriverIoThreads(
      ioThreads: (() {
        final guardedValue = map['ioThreads'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DomainDevicesDiskDriverIoThreadsIoThread>(
            guardedValue,
            (value) => DomainDevicesDiskDriverIoThreadsIoThread.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
