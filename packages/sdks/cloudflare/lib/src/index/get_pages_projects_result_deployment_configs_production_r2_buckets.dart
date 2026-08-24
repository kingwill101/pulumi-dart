// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionR2Buckets {
  /// Jurisdiction of the R2 bucket.
  final pulumi.Input<String> jurisdiction;
  /// Name of the R2 bucket.
  final pulumi.Input<String> name;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionR2Buckets].
  /// [jurisdiction] Jurisdiction of the R2 bucket.
  /// [name] Name of the R2 bucket.
  const GetPagesProjectsResultDeploymentConfigsProductionR2Buckets({
    required this.jurisdiction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jurisdiction': jurisdiction,
      'name': name,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionR2Buckets.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionR2Buckets(
      jurisdiction: pulumi.Input.fromValue(map['jurisdiction'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
