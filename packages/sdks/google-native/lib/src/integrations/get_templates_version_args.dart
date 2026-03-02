// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_get_templates_version_args_doc}
/// Arguments for getTemplatesVersion.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_get_templates_version_args_doc}
class GetTemplatesVersionArgs {
  final pulumi.Input<String> integrationtemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> versionId;

  /// Creates a new [GetTemplatesVersionArgs].
  /// [integrationtemplateId] Required.
  /// [location] Required.
  /// [productId] Required.
  /// [project] Optional.
  /// [versionId] Required.
  GetTemplatesVersionArgs({
    required this.integrationtemplateId,
    required this.location,
    required this.productId,
    this.project,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'integrationtemplateId': integrationtemplateId,
      'location': location,
      'productId': productId,
      'project': ?project,
      'versionId': versionId,
    };
  }

  factory GetTemplatesVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetTemplatesVersionArgs(
      integrationtemplateId: (map['integrationtemplateId'] as String).input(),
      location: (map['location'] as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      versionId: (map['versionId'] as String).input(),
    );
  }
}

