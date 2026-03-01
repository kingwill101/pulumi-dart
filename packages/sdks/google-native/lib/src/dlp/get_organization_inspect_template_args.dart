// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_organization_inspect_template_args_doc}
/// Arguments for getOrganizationInspectTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_organization_inspect_template_args_doc}
class GetOrganizationInspectTemplateArgs {
  final pulumi.Input<String> inspectTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationInspectTemplateArgs].
  /// [inspectTemplateId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationInspectTemplateArgs({
    required pulumi.Output<String> inspectTemplateId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
  }) :
      inspectTemplateId = pulumi.Input.asInput<String>(inspectTemplateId),
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateId': inspectTemplateId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationInspectTemplateArgs(
      inspectTemplateId: pulumi.Output.create<String>(map['inspectTemplateId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

