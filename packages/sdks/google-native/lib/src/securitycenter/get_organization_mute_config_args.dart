// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_securitycenter_v1_get_organization_mute_config_args_doc}
/// Arguments for getOrganizationMuteConfig.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_v1_get_organization_mute_config_args_doc}
class GetOrganizationMuteConfigArgs {
  final pulumi.Input<String> muteConfigId;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetOrganizationMuteConfigArgs].
  /// [muteConfigId] Required.
  /// [organizationId] Required.
  GetOrganizationMuteConfigArgs({
    required pulumi.Output<String> muteConfigId,
    required pulumi.Output<String> organizationId,
  }) :
      muteConfigId = pulumi.Input.asInput<String>(muteConfigId),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'muteConfigId': muteConfigId,
      'organizationId': organizationId,
    };
  }

  factory GetOrganizationMuteConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetOrganizationMuteConfigArgs(
      muteConfigId: pulumi.Output.create<String>(map['muteConfigId'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}

