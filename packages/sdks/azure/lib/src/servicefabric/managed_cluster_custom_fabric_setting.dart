// ignore_for_file: unused_element, unnecessary_cast


class ManagedClusterCustomFabricSetting {
  /// Parameter name.
  final String parameter;
  /// Section name.
  final String section;
  /// Parameter value.
  final String value;

  /// Creates a new [ManagedClusterCustomFabricSetting].
  /// [parameter] Parameter name.
  /// [section] Section name.
  /// [value] Parameter value.
  ManagedClusterCustomFabricSetting({
    required this.parameter,
    required this.section,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'section': section,
      'value': value,
    };
  }

  factory ManagedClusterCustomFabricSetting.fromMap(Map<String, dynamic> map) {
    return ManagedClusterCustomFabricSetting(
      parameter: map['parameter'] as String,
      section: map['section'] as String,
      value: map['value'] as String,
    );
  }
}

