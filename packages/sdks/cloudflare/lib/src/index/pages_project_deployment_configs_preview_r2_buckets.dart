// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewR2Buckets {
  /// Jurisdiction of the R2 bucket.
  final pulumi.Input<String?>? jurisdiction;
  /// Name of the R2 bucket.
  final pulumi.Input<String> name;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewR2Buckets].
  /// [jurisdiction] Jurisdiction of the R2 bucket.
  /// [name] Name of the R2 bucket.
  const PagesProjectDeploymentConfigsPreviewR2Buckets({
    this.jurisdiction,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jurisdiction': ?jurisdiction,
      'name': name,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewR2Buckets.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewR2Buckets(
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
