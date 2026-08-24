// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates {
  final pulumi.Input<String> certificateId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates].
  /// [certificateId] Required.
  const GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsProductionMtlsCertificates(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
