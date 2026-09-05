// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesInterfacePortForwardRange {
  /// Specifies the ending port number in the forwarded range.
  final pulumi.Input<double?>? end;
  /// Identifies any excluded ports from the forwarding range.
  final pulumi.Input<String?>? exclude;
  /// Sets the starting port number for the forwarding range.
  final pulumi.Input<double> start;
  /// Specifies the target port to which traffic is forwarded.
  final pulumi.Input<double?>? to;

  /// Creates a new [DomainDevicesInterfacePortForwardRange].
  /// [end] Specifies the ending port number in the forwarded range.
  /// [exclude] Identifies any excluded ports from the forwarding range.
  /// [start] Sets the starting port number for the forwarding range.
  /// [to] Specifies the target port to which traffic is forwarded.
  const DomainDevicesInterfacePortForwardRange({
    this.end,
    this.exclude,
    required this.start,
    this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'end': ?end,
      'exclude': ?exclude,
      'start': start,
      'to': ?to,
    };
  }

  factory DomainDevicesInterfacePortForwardRange.fromMap(Map<String, dynamic> map) {
    return DomainDevicesInterfacePortForwardRange(
      end: (() { final guardedValue = map['end']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      exclude: (() { final guardedValue = map['exclude']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      start: pulumi.Input.fromValue((map['start'] as num).toDouble()),
      to: (() { final guardedValue = map['to']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
