// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_core_portal_tenant_configuration_portal_tenant_configuration_args_doc}
/// The set of arguments for PortalTenantConfiguration.
/// {@endtemplate}
/// {@macro pulumi_core_portal_tenant_configuration_portal_tenant_configuration_args_doc}
class PortalTenantConfigurationArgs {
  /// Is the private tile markdown storage which used to display custom dynamic and static content enabled?
  ///
  /// > **Note:** When `private_markdown_storage_enforced` is set to `true`, only external storage configuration (URI) is allowed for Markdown tiles. Inline content configuration will be prohibited.
  final pulumi.Input<bool> privateMarkdownStorageEnforced;

  /// Creates a new [PortalTenantConfigurationArgs].
  /// [privateMarkdownStorageEnforced] Is the private tile markdown storage which used to display custom dynamic and static content enabled?
  PortalTenantConfigurationArgs({
    required pulumi.Output<bool> privateMarkdownStorageEnforced,
  }) :
      privateMarkdownStorageEnforced = pulumi.Input.asInput<bool>(privateMarkdownStorageEnforced);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateMarkdownStorageEnforced': privateMarkdownStorageEnforced,
    };
  }

  factory PortalTenantConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return PortalTenantConfigurationArgs(
      privateMarkdownStorageEnforced: pulumi.Output.create<bool>(map['privateMarkdownStorageEnforced'] as bool),
    );
  }
}

