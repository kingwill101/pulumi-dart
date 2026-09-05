// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainUpdateShutdown {
  /// Experimental: seconds to wait for guest shutdown before forcing a stop during update. Defaults to 30.
  final pulumi.Input<double?>? timeout;

  /// Creates a new [DomainUpdateShutdown].
  /// [timeout] Experimental: seconds to wait for guest shutdown before forcing a stop during update. Defaults to 30.
  const DomainUpdateShutdown({
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeout': ?timeout,
    };
  }

  factory DomainUpdateShutdown.fromMap(Map<String, dynamic> map) {
    return DomainUpdateShutdown(
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
