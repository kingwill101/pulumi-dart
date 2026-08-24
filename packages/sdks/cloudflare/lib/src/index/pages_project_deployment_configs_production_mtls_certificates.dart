// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsProductionMtlsCertificates {
  final pulumi.Input<String> certificateId;

  /// Creates a new [PagesProjectDeploymentConfigsProductionMtlsCertificates].
  /// [certificateId] Required.
  const PagesProjectDeploymentConfigsProductionMtlsCertificates({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory PagesProjectDeploymentConfigsProductionMtlsCertificates.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsProductionMtlsCertificates(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
