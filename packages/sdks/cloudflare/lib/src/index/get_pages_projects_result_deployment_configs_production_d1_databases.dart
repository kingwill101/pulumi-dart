// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionD1Databases {
  /// UUID of the D1 database.
  final pulumi.Input<String> id;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionD1Databases].
  /// [id] UUID of the D1 database.
  const GetPagesProjectsResultDeploymentConfigsProductionD1Databases({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionD1Databases.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionD1Databases(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
