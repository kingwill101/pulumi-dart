// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v2_organization_mute_config_v2_organization_mute_config_args_doc}
/// The set of arguments for V2OrganizationMuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v2_organization_mute_config_v2_organization_mute_config_args_doc}
class V2OrganizationMuteConfigArgs {
  /// A description of the mute config.
  final pulumi.Input<String>? description;
  /// An expression that defines the filter to apply across create/update
  /// events of findings. While creating a filter string, be mindful of
  /// the scope in which the mute configuration is being created. E.g.,
  /// If a filter contains project = X but is created under the
  /// project = Y scope, it might not match any findings.
  final pulumi.Input<String> filter;
  /// location Id is provided by organization. If not provided, Use global as default.
  final pulumi.Input<String>? location;
  /// Unique identifier provided by the client within the parent scope.
  final pulumi.Input<String> muteConfigId;
  /// The organization whose Cloud Security Command Center the Mute
  /// Config lives in.
  final pulumi.Input<String> organization;
  /// The type of the mute config.
  final pulumi.Input<String> type;

  /// Creates a new [V2OrganizationMuteConfigArgs].
  /// [description] A description of the mute config.
  /// [filter] An expression that defines the filter to apply across create/update
  /// [location] location Id is provided by organization. If not provided, Use global as default.
  /// [muteConfigId] Unique identifier provided by the client within the parent scope.
  /// [organization] The organization whose Cloud Security Command Center the Mute
  /// [type] The type of the mute config.
  V2OrganizationMuteConfigArgs({
    this.description,
    required this.filter,
    this.location,
    required this.muteConfigId,
    required this.organization,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'filter': filter,
      'location': ?location,
      'muteConfigId': muteConfigId,
      'organization': organization,
      'type': type,
    };
  }

  factory V2OrganizationMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return V2OrganizationMuteConfigArgs(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      filter: (map['filter'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      muteConfigId: (map['muteConfigId'] as String).input(),
      organization: (map['organization'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

