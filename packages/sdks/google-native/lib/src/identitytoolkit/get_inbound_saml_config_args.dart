// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identitytoolkit_v2_get_inbound_saml_config_args_doc}
/// Arguments for getInboundSamlConfig.
/// {@endtemplate}
/// {@macro pulumi_identitytoolkit_v2_get_inbound_saml_config_args_doc}
class GetInboundSamlConfigArgs {
  final pulumi.Input<String> inboundSamlConfigId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetInboundSamlConfigArgs].
  /// [inboundSamlConfigId] Required.
  /// [project] Optional.
  /// [tenantId] Required.
  GetInboundSamlConfigArgs({
    required this.inboundSamlConfigId,
    this.project,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlConfigId': inboundSamlConfigId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetInboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlConfigArgs(
      inboundSamlConfigId: pulumi.Input.fromValue(
        map['inboundSamlConfigId'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
