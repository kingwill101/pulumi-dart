// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionD1Databases {
  /// UUID of the D1 database.
  final pulumi.Input<String> id;

  /// Creates a new [PagesProjectDeploymentConfigsProductionD1Databases].
  /// [id] UUID of the D1 database.
  const PagesProjectDeploymentConfigsProductionD1Databases({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory PagesProjectDeploymentConfigsProductionD1Databases.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionD1Databases(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}
