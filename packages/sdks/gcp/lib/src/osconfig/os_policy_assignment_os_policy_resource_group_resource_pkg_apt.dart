// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt].
  /// [name] Package name.
  OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourcePkgApt(
      name: (map['name'] as String).input(),
    );
  }
}

