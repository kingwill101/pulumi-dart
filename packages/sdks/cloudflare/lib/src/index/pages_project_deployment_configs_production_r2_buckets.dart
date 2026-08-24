// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionR2Buckets {
  /// Jurisdiction of the R2 bucket.
  final pulumi.Input<String?>? jurisdiction;
  /// Name of the R2 bucket.
  final pulumi.Input<String> name;

  /// Creates a new [PagesProjectDeploymentConfigsProductionR2Buckets].
  /// [jurisdiction] Jurisdiction of the R2 bucket.
  /// [name] Name of the R2 bucket.
  const PagesProjectDeploymentConfigsProductionR2Buckets({
    this.jurisdiction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jurisdiction': ?jurisdiction,
      'name': name,
    };
  }

  factory PagesProjectDeploymentConfigsProductionR2Buckets.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionR2Buckets(
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
