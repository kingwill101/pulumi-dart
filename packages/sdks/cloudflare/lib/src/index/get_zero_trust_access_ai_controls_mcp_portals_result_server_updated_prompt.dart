// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustAccessAiControlsMcpPortalsResultServerUpdatedPrompt {
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> name;
  final pulumi.Input<String> portalAlias;
  final pulumi.Input<String> portalDescription;
  final pulumi.Input<String> serverAlias;
  final pulumi.Input<String> serverDescription;

  /// Creates a new [GetZeroTrustAccessAiControlsMcpPortalsResultServerUpdatedPrompt].
  /// [enabled] Required.
  /// [name] Required.
  /// [portalAlias] Required.
  /// [portalDescription] Required.
  /// [serverAlias] Required.
  /// [serverDescription] Required.
  const GetZeroTrustAccessAiControlsMcpPortalsResultServerUpdatedPrompt({
    required this.enabled,
    required this.name,
    required this.portalAlias,
    required this.portalDescription,
    required this.serverAlias,
    required this.serverDescription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'name': name,
      'portalAlias': portalAlias,
      'portalDescription': portalDescription,
      'serverAlias': serverAlias,
      'serverDescription': serverDescription,
    };
  }

  factory GetZeroTrustAccessAiControlsMcpPortalsResultServerUpdatedPrompt.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessAiControlsMcpPortalsResultServerUpdatedPrompt(
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      portalAlias: pulumi.Input.fromValue(map['portalAlias'] as String),
      portalDescription: pulumi.Input.fromValue(map['portalDescription'] as String),
      serverAlias: pulumi.Input.fromValue(map['serverAlias'] as String),
      serverDescription: pulumi.Input.fromValue(map['serverDescription'] as String),
    );
  }
}
