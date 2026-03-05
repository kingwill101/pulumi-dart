// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DomainDevicesDiskMirrorSourceNetworkReconnect {
  /// Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  final pulumi.Input<String> delay;

  /// Creates a new [DomainDevicesDiskMirrorSourceNetworkReconnect].
  /// [delay] Sets the delay duration before attempting to reconnect to a network storage source after a failure.
  DomainDevicesDiskMirrorSourceNetworkReconnect({
    required this.delay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'delay': delay,
    };
  }

  factory DomainDevicesDiskMirrorSourceNetworkReconnect.fromMap(Map<String, dynamic> map) {
    return DomainDevicesDiskMirrorSourceNetworkReconnect(
      delay: pulumi.Input.fromValue(map['delay'] as String),
    );
  }
}

