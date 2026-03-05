// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourcePkgGooget {
  /// Package name.
  final pulumi.Input<String> name;

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
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

