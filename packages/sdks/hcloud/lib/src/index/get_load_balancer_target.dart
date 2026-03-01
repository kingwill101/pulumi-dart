// ignore_for_file: unused_element, unnecessary_cast


class GetLoadBalancerTarget {
  /// (string) Label Selector to add a group of resources based on the label.
  final String labelSelector;
  /// (int) ID of the server which should be a target for this Load Balancer.
  final int serverId;
  /// (string) Type of the target. `server` or `label_selector`
  final String type;

  /// Creates a new [GetLoadBalancerTarget].
  /// [labelSelector] (string) Label Selector to add a group of resources based on the label.
  /// [serverId] (int) ID of the server which should be a target for this Load Balancer.
  /// [type] (string) Type of the target. `server` or `label_selector`
  GetLoadBalancerTarget({
    required this.labelSelector,
    required this.serverId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labelSelector': labelSelector,
      'serverId': serverId,
      'type': type,
    };
  }

  factory GetLoadBalancerTarget.fromMap(Map<String, dynamic> map) {
    return GetLoadBalancerTarget(
      labelSelector: map['labelSelector'] as String,
      serverId: map['serverId'] as int,
      type: map['type'] as String,
    );
  }
}

