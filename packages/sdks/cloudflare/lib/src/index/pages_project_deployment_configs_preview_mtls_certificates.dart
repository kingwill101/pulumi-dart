// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectDeploymentConfigsPreviewMtlsCertificates {
  final pulumi.Input<String> certificateId;

  /// Creates a new [PagesProjectDeploymentConfigsPreviewMtlsCertificates].
  /// [certificateId] Required.
  const PagesProjectDeploymentConfigsPreviewMtlsCertificates({
    required this.certificateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
    };
  }

  factory PagesProjectDeploymentConfigsPreviewMtlsCertificates.fromMap(Map<String, dynamic> map) {
    return PagesProjectDeploymentConfigsPreviewMtlsCertificates(
      certificateId: pulumi.Input.fromValue(map['certificateId'] as String),
    );
  }
}
