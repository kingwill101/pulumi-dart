// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataProductAccessGroupDefaultIamRoleConfig {
  /// Default IAM role associated with the access group, such as
  /// `roles/bigquery.dataViewer`.
  final pulumi.Input<String> role;

  /// Creates a new [DataProductAccessGroupDefaultIamRoleConfig].
  /// [role] Default IAM role associated with the access group, such as
  const DataProductAccessGroupDefaultIamRoleConfig({
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
    };
  }

  factory DataProductAccessGroupDefaultIamRoleConfig.fromMap(Map<String, dynamic> map) {
    return DataProductAccessGroupDefaultIamRoleConfig(
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}
