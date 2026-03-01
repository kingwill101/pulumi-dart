// ignore_for_file: unused_element, unnecessary_cast


/// RollingUpdateStatefulSetStrategy is used to communicate parameter for RollingUpdateStatefulSetStrategyType.
class RollingUpdateStatefulSetStrategyAppsV1beta2 {
  /// Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
  final int? partition;

  /// Creates a new [RollingUpdateStatefulSetStrategyAppsV1beta2].
  /// [partition] Partition indicates the ordinal at which the StatefulSet should be partitioned. Default value is 0.
  RollingUpdateStatefulSetStrategyAppsV1beta2({
    this.partition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partition': ?partition,
    };
  }

  factory RollingUpdateStatefulSetStrategyAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return RollingUpdateStatefulSetStrategyAppsV1beta2(
      partition: map['partition'] == null ? null : map['partition'] as int,
    );
  }
}

