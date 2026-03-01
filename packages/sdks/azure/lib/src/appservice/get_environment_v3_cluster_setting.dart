// ignore_for_file: unused_element, unnecessary_cast


class GetEnvironmentV3ClusterSetting {
  /// The name of this v3 App Service Environment.
  final String name;
  /// The value for the Cluster Setting.
  final String value;

  /// Creates a new [GetEnvironmentV3ClusterSetting].
  /// [name] The name of this v3 App Service Environment.
  /// [value] The value for the Cluster Setting.
  GetEnvironmentV3ClusterSetting({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory GetEnvironmentV3ClusterSetting.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentV3ClusterSetting(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

