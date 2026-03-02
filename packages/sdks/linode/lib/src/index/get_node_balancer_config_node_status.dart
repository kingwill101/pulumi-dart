// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeBalancerConfigNodeStatus {
  /// The number of backends considered to be 'DOWN' and unhealthy. These are not in rotation, and not serving requests.
  final pulumi.Input<int> down;
  /// The number of backends considered to be 'UP' and healthy, and that are serving requests.
  final pulumi.Input<int> up;

  /// Creates a new [GetNodeBalancerConfigNodeStatus].
  /// [down] The number of backends considered to be 'DOWN' and unhealthy. These are not in rotation, and not serving requests.
  /// [up] The number of backends considered to be 'UP' and healthy, and that are serving requests.
  GetNodeBalancerConfigNodeStatus({
    required this.down,
    required this.up,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'down': down,
      'up': up,
    };
  }

  factory GetNodeBalancerConfigNodeStatus.fromMap(Map<String, dynamic> map) {
    return GetNodeBalancerConfigNodeStatus(
      down: (map['down'] as int).input(),
      up: (map['up'] as int).input(),
    );
  }
}

