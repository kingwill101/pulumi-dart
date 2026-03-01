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
    pulumi.Output<String>? description,
    required pulumi.Output<String> filter,
    pulumi.Output<String>? location,
    required pulumi.Output<String> muteConfigId,
    required pulumi.Output<String> organization,
    required pulumi.Output<String> type,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      filter = pulumi.Input.asInput<String>(filter),
      location = pulumi.Input.asOptionalInput<String>(location),
      muteConfigId = pulumi.Input.asInput<String>(muteConfigId),
      organization = pulumi.Input.asInput<String>(organization),
      type = pulumi.Input.asInput<String>(type);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filter: pulumi.Output.create<String>(map['filter'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      muteConfigId: pulumi.Output.create<String>(map['muteConfigId'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      type: pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

