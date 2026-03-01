// ignore_for_file: unused_element, unnecessary_cast


class GetClusterSecondaryConfig {
  /// Name of the primary cluster must be in the format
  /// 'projects/{project}/locations/{location}/clusters/{cluster_id}'
  final String primaryClusterName;

  /// Creates a new [GetClusterSecondaryConfig].
  /// [primaryClusterName] Name of the primary cluster must be in the format
  GetClusterSecondaryConfig({
    required this.primaryClusterName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'primaryClusterName': primaryClusterName,
    };
  }

  factory GetClusterSecondaryConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecondaryConfig(
      primaryClusterName: map['primaryClusterName'] as String,
    );
  }
}

