// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_certificate_args_doc}
class GetCertificateArgs {
  final pulumi.Input<String> certificateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateArgs].
  /// [certificateId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  GetCertificateArgs({
    required pulumi.Output<String> certificateId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
  }) :
      certificateId = pulumi.Input.asInput<String>(certificateId),
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateId': certificateId,
      'location': location,
      'productId': productId,
      'project': ?project,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      certificateId: pulumi.Output.create<String>(map['certificateId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

