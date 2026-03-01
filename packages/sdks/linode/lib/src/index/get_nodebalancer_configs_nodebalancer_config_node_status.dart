// ignore_for_file: unused_element, unnecessary_cast


class GetNodebalancerConfigsNodebalancerConfigNodeStatus {
  /// The number of backends considered to be 'DOWN' and unhealthy. These are not in rotation, and not serving requests.
  final int down;
  /// The number of backends considered to be 'UP' and healthy, and that are serving requests.
  final int up;

  /// Creates a new [GetNodebalancerConfigsNodebalancerConfigNodeStatus].
  /// [down] The number of backends considered to be 'DOWN' and unhealthy. These are not in rotation, and not serving requests.
  /// [up] The number of backends considered to be 'UP' and healthy, and that are serving requests.
  GetNodebalancerConfigsNodebalancerConfigNodeStatus({
    required this.down,
    required this.up,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'down': down,
      'up': up,
    };
  }

  factory GetNodebalancerConfigsNodebalancerConfigNodeStatus.fromMap(Map<String, dynamic> map) {
    return GetNodebalancerConfigsNodebalancerConfigNodeStatus(
      down: map['down'] as int,
      up: map['up'] as int,
    );
  }
}

