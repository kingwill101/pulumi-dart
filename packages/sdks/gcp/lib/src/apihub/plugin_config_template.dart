// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_config_template_additional_config_template.dart';
import 'plugin_config_template_auth_config_template.dart';

class PluginConfigTemplate {
  /// The list of additional configuration variables for the plugin's
  /// configuration.
  /// Structure is documented below.
  final List<PluginConfigTemplateAdditionalConfigTemplate>? additionalConfigTemplates;
  /// AuthConfigTemplate represents the authentication template for a plugin.
  /// Structure is documented below.
  final PluginConfigTemplateAuthConfigTemplate? authConfigTemplate;

  /// Creates a new [PluginConfigTemplate].
  /// [additionalConfigTemplates] The list of additional configuration variables for the plugin's
  /// [authConfigTemplate] AuthConfigTemplate represents the authentication template for a plugin.
  PluginConfigTemplate({
    this.additionalConfigTemplates,
    this.authConfigTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigTemplates': ?additionalConfigTemplates == null ? null : pulumi.Input.encodeList<PluginConfigTemplateAdditionalConfigTemplate, Map<String, dynamic>>(additionalConfigTemplates!, (value) => value.toMap()),
      'authConfigTemplate': ?authConfigTemplate == null ? null : authConfigTemplate!.toMap(),
    };
  }

  factory PluginConfigTemplate.fromMap(Map<String, dynamic> map) {
    return PluginConfigTemplate(
      additionalConfigTemplates: map['additionalConfigTemplates'] == null ? null : pulumi.Input.decodeList<PluginConfigTemplateAdditionalConfigTemplate>(map['additionalConfigTemplates'], (value) => PluginConfigTemplateAdditionalConfigTemplate.fromMap((value as Map).cast<String, dynamic>())),
      authConfigTemplate: map['authConfigTemplate'] == null ? null : PluginConfigTemplateAuthConfigTemplate.fromMap((map['authConfigTemplate'] as Map).cast<String, dynamic>()),
    );
  }
}

