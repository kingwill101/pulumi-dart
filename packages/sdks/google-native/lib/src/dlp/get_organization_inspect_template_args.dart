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
  const GetOrganizationInspectTemplateArgs({
    required this.inspectTemplateId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inspectTemplateId': inspectTemplateId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationInspectTemplateArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationInspectTemplateArgs(
      inspectTemplateId: pulumi.Input.fromValue(map['inspectTemplateId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
