// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_organizations_deidentify_template_args_doc}
/// Arguments for getOrganizationsDeidentifyTemplate.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_organizations_deidentify_template_args_doc}
class GetOrganizationsDeidentifyTemplateArgs {
  final pulumi.Input<String> deidentifyTemplateId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationsDeidentifyTemplateArgs].
  /// [deidentifyTemplateId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetOrganizationsDeidentifyTemplateArgs({
    required this.deidentifyTemplateId,
    required this.location,
    required this.organizationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deidentifyTemplateId': deidentifyTemplateId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationsDeidentifyTemplateArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetOrganizationsDeidentifyTemplateArgs(
      deidentifyTemplateId: pulumi.Input.fromValue(
        map['deidentifyTemplateId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      organizationId: pulumi.Input.fromValue(map['organizationId'] as String),
    );
  }
}
