// ignore_for_file: unused_element, unnecessary_cast


class AwsNodePoolManagement {
  /// Optional. Whether or not the nodes will be automatically repaired.
  final bool? autoRepair;

  /// Creates a new [AwsNodePoolManagement].
  /// [autoRepair] Optional. Whether or not the nodes will be automatically repaired.
  AwsNodePoolManagement({
    this.autoRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRepair': ?autoRepair,
    };
  }

  factory AwsNodePoolManagement.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolManagement(
      autoRepair: map['autoRepair'] == null ? null : map['autoRepair'] as bool,
    );
  }
}

