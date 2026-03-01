// ignore_for_file: unused_element, unnecessary_cast


class GetInstancesInstanceAlerts {
  /// The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  final int cpu;
  /// The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  final int io;
  /// The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  final int networkIn;
  /// The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  final int networkOut;
  /// The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  final int transferQuota;

  /// Creates a new [GetInstancesInstanceAlerts].
  /// [cpu] The percentage of CPU usage required to trigger an alert. If the average CPU usage over two hours exceeds this value, we'll send you an alert. If this is set to 0, the alert is disabled.
  /// [io] The amount of disk IO operation per second required to trigger an alert. If the average disk IO over two hours exceeds this value, we'll send you an alert. If set to 0, this alert is disabled.
  /// [networkIn] The amount of incoming traffic, in Mbit/s, required to trigger an alert. If the average incoming traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  /// [networkOut] The amount of outbound traffic, in Mbit/s, required to trigger an alert. If the average outbound traffic over two hours exceeds this value, we'll send you an alert. If this is set to 0 (zero), the alert is disabled.
  /// [transferQuota] The percentage of network transfer that may be used before an alert is triggered. When this value is exceeded, we'll alert you. If this is set to 0 (zero), the alert is disabled.
  GetInstancesInstanceAlerts({
    required this.cpu,
    required this.io,
    required this.networkIn,
    required this.networkOut,
    required this.transferQuota,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'io': io,
      'networkIn': networkIn,
      'networkOut': networkOut,
      'transferQuota': transferQuota,
    };
  }

  factory GetInstancesInstanceAlerts.fromMap(Map<String, dynamic> map) {
    return GetInstancesInstanceAlerts(
      cpu: map['cpu'] as int,
      io: map['io'] as int,
      networkIn: map['networkIn'] as int,
      networkOut: map['networkOut'] as int,
      transferQuota: map['transferQuota'] as int,
    );
  }
}

