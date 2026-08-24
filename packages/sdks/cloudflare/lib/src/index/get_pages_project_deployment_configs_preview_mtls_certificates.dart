// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectDeploymentConfigsPreviewMtlsCertificates {
  final pulumi.Input<String> certificateId;

  /// Creates a new [GetPagesProjectDeploymentConfigsPreviewMtlsCertificates].
  /// [certificateId] Required.
  const GetPagesProjectDeploymentConfigsPreviewMtlsCertificates({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory GetPagesProjectDeploymentConfigsPreviewMtlsCertificates.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectDeploymentConfigsPreviewMtlsCertificates(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
