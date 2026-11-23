// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject {
  /// The Google Cloud project resource name.
  /// Format: `projects/{project_number}`. Only the project number is supported.
  /// Example: `projects/1234567890`
  final pulumi.Input<String> name;

  /// Creates a new [GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject].
  /// [name] The Google Cloud project resource name.
  const GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject.fromMap(Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingScopeClientScopeRestrictedProject(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
