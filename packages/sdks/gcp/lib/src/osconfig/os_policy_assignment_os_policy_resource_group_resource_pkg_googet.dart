// ignore_for_file: unused_element, unnecessary_cast


class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget {
  /// Package name.
  final String name;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget].
  /// [name] Package name.
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget(
      name: map['name'] as String,
    );
  }
}

