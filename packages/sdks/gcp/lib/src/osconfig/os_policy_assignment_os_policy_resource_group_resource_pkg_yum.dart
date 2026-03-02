// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum].
  /// [name] Package name.
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgYum(
      name: (map['name'] as String).input(),
    );
  }
}

