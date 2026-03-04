// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_controller_driver_io_threads_io_thread.dart';

class DomainDevicesControllerDriverIoThreads {
  /// Configures details for a specific I/O thread associated with the controller driver.
  final pulumi.Input<List<DomainDevicesControllerDriverIoThreadsIoThread>>?
  ioThreads;

  /// Creates a new [DomainDevicesControllerDriverIoThreads].
  /// [ioThreads] Configures details for a specific I/O thread associated with the controller driver.
  DomainDevicesControllerDriverIoThreads({this.ioThreads});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ioThreads':
          ?pulumi.Input.mapOptionalInputValue<
            List<DomainDevicesControllerDriverIoThreadsIoThread>,
            List<Map<String, dynamic>>
          >(
            ioThreads,
            (value) =>
                pulumi.Input.encodeList<
                  DomainDevicesControllerDriverIoThreadsIoThread,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory DomainDevicesControllerDriverIoThreads.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDevicesControllerDriverIoThreads(
      ioThreads: (() {
        final guardedValue = map['ioThreads'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi
              .Input.decodeList<DomainDevicesControllerDriverIoThreadsIoThread>(
            guardedValue,
            (value) => DomainDevicesControllerDriverIoThreadsIoThread.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
