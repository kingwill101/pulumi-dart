// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_interface_coalesce_rx.dart';

class DomainDevicesInterfaceCoalesce {
  /// Controls the coalescing settings specifically for received network packets at the interface.
  final pulumi.Input<DomainDevicesInterfaceCoalesceRx>? rx;

  /// Creates a new [DomainDevicesInterfaceCoalesce].
  /// [rx] Controls the coalescing settings specifically for received network packets at the interface.
  DomainDevicesInterfaceCoalesce({
    this.rx,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rx': ?pulumi.Input.mapOptionalInputValue<DomainDevicesInterfaceCoalesceRx, Map<String, dynamic>>(rx, (value) => value.toMap()),
    };
  }

  factory DomainDevicesInterfaceCoalesce.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfaceCoalesce(
      rx: map['rx'] == null ? null : (DomainDevicesInterfaceCoalesceRx.fromMap((map['rx']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

