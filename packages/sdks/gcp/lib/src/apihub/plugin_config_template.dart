// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_config_template_additional_config_template.dart';
import 'plugin_config_template_auth_config_template.dart';

class PluginConfigTemplate {
  /// The list of additional configuration variables for the plugin's
  /// configuration.
  /// Structure is documented below.
  final pulumi.Input<List<PluginConfigTemplateAdditionalConfigTemplate>>? additionalConfigTemplates;
  /// AuthConfigTemplate represents the authentication template for a plugin.
  /// Structure is documented below.
  final pulumi.Input<PluginConfigTemplateAuthConfigTemplate>? authConfigTemplate;

  /// Creates a new [PluginConfigTemplate].
  /// [additionalConfigTemplates] The list of additional configuration variables for the plugin's
  /// [authConfigTemplate] AuthConfigTemplate represents the authentication template for a plugin.
  PluginConfigTemplate({
    this.additionalConfigTemplates,
    this.authConfigTemplate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigTemplates': ?pulumi.Input.mapOptionalInputValue<List<PluginConfigTemplateAdditionalConfigTemplate>, List<Map<String, dynamic>>>(additionalConfigTemplates, (value) => pulumi.Input.encodeList<PluginConfigTemplateAdditionalConfigTemplate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'authConfigTemplate': ?pulumi.Input.mapOptionalInputValue<PluginConfigTemplateAuthConfigTemplate, Map<String, dynamic>>(authConfigTemplate, (value) => value.toMap()),
    };
  }

  factory PluginConfigTemplate.fromMap(Map<String, dynamic> map) {
    return PluginConfigTemplate(
      additionalConfigTemplates: map['additionalConfigTemplates'] == null ? null : (pulumi.Input.decodeList<PluginConfigTemplateAdditionalConfigTemplate>(map['additionalConfigTemplates'], (value) => PluginConfigTemplateAdditionalConfigTemplate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      authConfigTemplate: map['authConfigTemplate'] == null ? null : (PluginConfigTemplateAuthConfigTemplate.fromMap((map['authConfigTemplate'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

