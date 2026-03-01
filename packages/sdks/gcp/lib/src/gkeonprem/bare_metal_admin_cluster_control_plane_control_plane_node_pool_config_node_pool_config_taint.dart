// ignore_for_file: unused_element, unnecessary_cast


class BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint {
  /// Available taint effects.
  final String? effect;
  /// (Optional)
  final String? key;
  /// (Optional)
  final String? value;

  /// Creates a new [BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint].
  /// [effect] Available taint effects.
  /// [key] (Optional)
  /// [value] (Optional)
  BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint.fromMap(Map<String, dynamic> map) {
    return BareMetalAdminClusterControlPlaneControlPlaneNodePoolConfigNodePoolConfigTaint(
      effect: map['effect'] == null ? null : map['effect'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

