// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInputSourcePassthrough {
  /// Specifies the event device used in passthrough mode for the input device.
  final pulumi.Input<String> evDev;

  /// Creates a new [DomainDevicesInputSourcePassthrough].
  /// [evDev] Specifies the event device used in passthrough mode for the input device.
  const DomainDevicesInputSourcePassthrough({
    required this.evDev,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'evDev': evDev,
    };
  }

  factory DomainDevicesInputSourcePassthrough.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInputSourcePassthrough(
      evDev: pulumi.Input.fromValue(map['evDev'] as String),
    );
  }
}
