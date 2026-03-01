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
    required pulumi.Output<String> inboundSamlConfigId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tenantId,
  }) :
      inboundSamlConfigId = pulumi.Input.asInput<String>(inboundSamlConfigId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inboundSamlConfigId': inboundSamlConfigId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetInboundSamlConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetInboundSamlConfigArgs(
      inboundSamlConfigId: pulumi.Output.create<String>(map['inboundSamlConfigId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

