// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewD1Databases {
  /// UUID of the D1 database.
  final pulumi.Input<String> id;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewD1Databases].
  /// [id] UUID of the D1 database.
  const GetPagesProjectsResultDeploymentConfigsPreviewD1Databases({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewD1Databases.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewD1Databases(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
