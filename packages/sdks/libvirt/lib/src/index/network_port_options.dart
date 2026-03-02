// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkPortOptions {
  /// Specifies whether the network port is isolated, preventing traffic flow from other ports.
  final pulumi.Input<String>? isolated;

  /// Creates a new [NetworkPortOptions].
  /// [isolated] Specifies whether the network port is isolated, preventing traffic flow from other ports.
  NetworkPortOptions({
    this.isolated,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isolated': ?isolated,
    };
  }

  factory NetworkPortOptions.fromMap(Map<String, dynamic> map) {
    return NetworkPortOptions(
      isolated: map['isolated'] == null ? null : (map['isolated'] as String).input(),
    );
  }
}

