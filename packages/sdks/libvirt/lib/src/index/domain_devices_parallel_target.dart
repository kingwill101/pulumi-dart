// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesParallelTarget {
  /// Specifies the port number for the target parallel device, determining its connection point.
  final pulumi.Input<double>? port;
  /// Sets the type attribute for the target parallel device, defining its interface specifications.
  final pulumi.Input<String>? type;

  /// Creates a new [DomainDevicesParallelTarget].
  /// [port] Specifies the port number for the target parallel device, determining its connection point.
  /// [type] Sets the type attribute for the target parallel device, defining its interface specifications.
  DomainDevicesParallelTarget({
    this.port,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'type': ?type,
    };
  }

  factory DomainDevicesParallelTarget.fromMap(Map<String, dynamic> map) {
    return DomainDevicesParallelTarget(
      port: map['port'] == null ? null : (map['port'] as double).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

