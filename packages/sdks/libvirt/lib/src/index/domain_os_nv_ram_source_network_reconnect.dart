// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainOsNvRamSourceNetworkReconnect {
  /// Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  final pulumi.Input<String> delay;

  /// Creates a new [DomainOsNvRamSourceNetworkReconnect].
  /// [delay] Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  DomainOsNvRamSourceNetworkReconnect({
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': delay,
    };
  }

  factory DomainOsNvRamSourceNetworkReconnect.fromMap(Map<String, dynamic> map) {
    return DomainOsNvRamSourceNetworkReconnect(
      delay: pulumi.Input.fromValue(map['delay'] as String),
    );
  }
}

