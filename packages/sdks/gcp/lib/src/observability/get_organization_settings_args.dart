// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_observability_get_organization_settings_get_organization_settings_args_doc}
/// Arguments for getOrganizationSettings.
/// {@endtemplate}
/// {@macro pulumi_observability_get_organization_settings_get_organization_settings_args_doc}
class GetOrganizationSettingsArgs {
  /// The location of the settings.
  final pulumi.Input<String> location;
  /// The organization for which to retrieve settings.
  final pulumi.Input<String> organization;

  /// Creates a new [GetOrganizationSettingsArgs].
  /// [location] The location of the settings.
  /// [organization] The organization for which to retrieve settings.
  const GetOrganizationSettingsArgs({
    required this.location,
    required this.organization,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organization': organization,
    };
  }

  factory GetOrganizationSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationSettingsArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      organization: pulumi.Input.fromValue(map['organization'] as String),
    );
  }
}
