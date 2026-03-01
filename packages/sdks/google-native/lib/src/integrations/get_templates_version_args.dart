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
    required pulumi.Output<String> integrationtemplateId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> versionId,
  }) :
      integrationtemplateId = pulumi.Input.asInput<String>(integrationtemplateId),
      location = pulumi.Input.asInput<String>(location),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      versionId = pulumi.Input.asInput<String>(versionId);

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
      integrationtemplateId: pulumi.Output.create<String>(map['integrationtemplateId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}

