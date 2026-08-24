// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsProductionMtlsCertificates {
  final pulumi.Input<String> certificateId;

  /// Creates a new [GetPagesProjectDeploymentConfigsProductionMtlsCertificates].
  /// [certificateId] Required.
  const GetPagesProjectDeploymentConfigsProductionMtlsCertificates({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory GetPagesProjectDeploymentConfigsProductionMtlsCertificates.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsProductionMtlsCertificates(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
