// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'plugin_config_template_auth_config_template_service_account.dart';

class PluginConfigTemplateAuthConfigTemplate {
  /// Config for Google service account authentication.
  /// Structure is documented below.
  final pulumi.Input<PluginConfigTemplateAuthConfigTemplateServiceAccount?>? serviceAccount;
  /// The list of authentication types supported by the plugin.
  final pulumi.Input<List<String>> supportedAuthTypes;

  /// Creates a new [PluginConfigTemplateAuthConfigTemplate].
  /// [serviceAccount] Config for Google service account authentication.
  /// [supportedAuthTypes] The list of authentication types supported by the plugin.
  const PluginConfigTemplateAuthConfigTemplate({
    this.serviceAccount,
    required this.supportedAuthTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<PluginConfigTemplateAuthConfigTemplateServiceAccount, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'supportedAuthTypes': supportedAuthTypes,
    };
  }

  factory PluginConfigTemplateAuthConfigTemplate.fromMap(Map<String, dynamic> map) {
    return PluginConfigTemplateAuthConfigTemplate(
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PluginConfigTemplateAuthConfigTemplateServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      supportedAuthTypes: pulumi.Input.fromValue((map['supportedAuthTypes'] as List).cast<String>()),
    );
  }
}
