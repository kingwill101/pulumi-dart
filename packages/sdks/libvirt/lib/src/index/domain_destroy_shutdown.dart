// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDestroyShutdown {
  /// Experimental: seconds to wait for guest shutdown before failing destroy. Defaults to 30.
  final pulumi.Input<double?>? timeout;

  /// Creates a new [DomainDestroyShutdown].
  /// [timeout] Experimental: seconds to wait for guest shutdown before failing destroy. Defaults to 30.
  const DomainDestroyShutdown({
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'timeout': ?timeout,
    };
  }

  factory DomainDestroyShutdown.fromMap(Map<String, dynamic> map) {
    return DomainDestroyShutdown(
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
