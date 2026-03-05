import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_mute_config_args.dart';

/// Creates a mute config.
class OrganizationMuteConfig extends pulumi.CustomResource {
  /// The time at which the mute config was created. This field is set by the server and will be ignored if provided on config creation.
  late final pulumi.Output<String> createTime;
  /// A description of the mute config.
  late final pulumi.Output<String> description;
  /// The human readable name to be displayed for the mute config.
  late final pulumi.Output<String> displayName;
  /// An expression that defines the filter to apply across create/update events of findings. While creating a filter string, be mindful of the scope in which the mute configuration is being created. E.g., If a filter contains project = X but is created under the project = Y scope, it might not match any findings. The following field and operator combinations are supported: * severity: `=`, `:` * category: `=`, `:` * resource.name: `=`, `:` * resource.project_name: `=`, `:` * resource.project_display_name: `=`, `:` * resource.folders.resource_folder: `=`, `:` * resource.parent_name: `=`, `:` * resource.parent_display_name: `=`, `:` * resource.type: `=`, `:` * finding_class: `=`, `:` * indicator.ip_addresses: `=`, `:` * indicator.domains: `=`, `:`
  late final pulumi.Output<String> filter;
  /// Email address of the user who last edited the mute config. This field is set by the server and will be ignored if provided on config creation or update.
  late final pulumi.Output<String> mostRecentEditor;
  /// Required. Unique identifier provided by the client within the parent scope. It must consist of only lowercase letters, numbers, and hyphens, must start with a letter, must end with either a letter or a number, and must be 63 characters or less.
  late final pulumi.Output<String> muteConfigId;
  /// This field will be ignored if provided on config creation. Format "organizations/{organization}/muteConfigs/{mute_config}" "folders/{folder}/muteConfigs/{mute_config}" "projects/{project}/muteConfigs/{mute_config}" "organizations/{organization}/locations/global/muteConfigs/{mute_config}" "folders/{folder}/locations/global/muteConfigs/{mute_config}" "projects/{project}/locations/global/muteConfigs/{mute_config}"
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> organizationId;
  /// The most recent time at which the mute config was updated. This field is set by the server and will be ignored if provided on config creation or update.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [OrganizationMuteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationMuteConfig]. {@macro pulumi_securitycenter_v1_organization_mute_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationMuteConfig(
    String name, {
    OrganizationMuteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:securitycenter/v1:OrganizationMuteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    filter = registerOutput<String>('filter');
    mostRecentEditor = registerOutput<String>('mostRecentEditor');
    muteConfigId = registerOutput<String>('muteConfigId');
    this.name = registerOutput<String>('name');
    organizationId = registerOutput<String>('organizationId');
    updateTime = registerOutput<String>('updateTime');
  }
}
