// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_devices_redir_filter_usb.dart';

class DomainDevicesRedirFilter {
  /// Sets the parameters for the USB device redirection filter.
  final pulumi.Input<List<DomainDevicesRedirFilterUsb>>? usbs;

  /// Creates a new [DomainDevicesRedirFilter].
  /// [usbs] Sets the parameters for the USB device redirection filter.
  const DomainDevicesRedirFilter({
    this.usbs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usbs': ?pulumi.Input.mapOptionalInputValue<List<DomainDevicesRedirFilterUsb>, List<Map<String, dynamic>>>(usbs, (value) => pulumi.Input.encodeList<DomainDevicesRedirFilterUsb, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DomainDevicesRedirFilter.fromMap(Map<String, dynamic> map) {
    return DomainDevicesRedirFilter(
      usbs: (() { final guardedValue = map['usbs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DomainDevicesRedirFilterUsb>(guardedValue, (value) => DomainDevicesRedirFilterUsb.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

