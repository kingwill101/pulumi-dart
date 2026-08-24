// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates {
  final pulumi.Input<String> certificateId;

  /// Creates a new [GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates].
  /// [certificateId] Required.
  const GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultDeploymentConfigsPreviewMtlsCertificates(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
