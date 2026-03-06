// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper].
  /// [name] Package name.
  const OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgZypper(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

