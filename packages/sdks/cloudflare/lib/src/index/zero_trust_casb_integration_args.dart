// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_casb_integration_anthropic.dart';
import 'zero_trust_casb_integration_aws.dart';
import 'zero_trust_casb_integration_box.dart';
import 'zero_trust_casb_integration_google_cloud_platform.dart';
import 'zero_trust_casb_integration_google_workspace.dart';
import 'zero_trust_casb_integration_openai.dart';

/// {@template pulumi_index_zero_trust_casb_integration_zero_trust_casb_integration_args_doc}
/// The set of arguments for ZeroTrustCasbIntegration.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_casb_integration_zero_trust_casb_integration_args_doc}
class ZeroTrustCasbIntegrationArgs {
  /// Cloudflare account identifier.
  final pulumi.Input<String> accountId;
  /// Anthropic integration configuration.
  final pulumi.Input<ZeroTrustCasbIntegrationAnthropic?>? anthropic;
  /// AWS integration configuration.
  final pulumi.Input<ZeroTrustCasbIntegrationAws?>? aws;
  /// Box integration configuration.
  final pulumi.Input<ZeroTrustCasbIntegrationBox?>? box;
  /// DLP profile IDs to associate with the integration.
  final pulumi.Input<List<String>?>? dlpProfiles;
  /// Google Cloud Platform integration configuration.
  final pulumi.Input<ZeroTrustCasbIntegrationGoogleCloudPlatform?>? googleCloudPlatform;
  /// Google Workspace integration configuration.
  final pulumi.Input<ZeroTrustCasbIntegrationGoogleWorkspace?>? googleWorkspace;
  /// Name of the integration.
  final pulumi.Input<String> name;
  /// OpenAI integration configuration.
  final pulumi.Input<ZeroTrustCasbIntegrationOpenai?>? openai;
  /// Whether the integration is paused.
  final pulumi.Input<bool> paused;
  /// Permission scopes granted to the integration.
  final pulumi.Input<List<String>?>? permissions;
  /// Use cases to enroll the integration in.
  final pulumi.Input<List<String>?>? useCases;

  /// Creates a new [ZeroTrustCasbIntegrationArgs].
  /// [accountId] Cloudflare account identifier.
  /// [anthropic] Anthropic integration configuration.
  /// [aws] AWS integration configuration.
  /// [box] Box integration configuration.
  /// [dlpProfiles] DLP profile IDs to associate with the integration.
  /// [googleCloudPlatform] Google Cloud Platform integration configuration.
  /// [googleWorkspace] Google Workspace integration configuration.
  /// [name] Name of the integration.
  /// [openai] OpenAI integration configuration.
  /// [paused] Whether the integration is paused.
  /// [permissions] Permission scopes granted to the integration.
  /// [useCases] Use cases to enroll the integration in.
  const ZeroTrustCasbIntegrationArgs({
    required this.accountId,
    this.anthropic,
    this.aws,
    this.box,
    this.dlpProfiles,
    this.googleCloudPlatform,
    this.googleWorkspace,
    required this.name,
    this.openai,
    required this.paused,
    this.permissions,
    this.useCases,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'anthropic': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationAnthropic, Map<String, dynamic>>(anthropic, (value) => value.toMap()),
      'aws': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationAws, Map<String, dynamic>>(aws, (value) => value.toMap()),
      'box': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationBox, Map<String, dynamic>>(box, (value) => value.toMap()),
      'dlpProfiles': ?dlpProfiles,
      'googleCloudPlatform': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationGoogleCloudPlatform, Map<String, dynamic>>(googleCloudPlatform, (value) => value.toMap()),
      'googleWorkspace': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationGoogleWorkspace, Map<String, dynamic>>(googleWorkspace, (value) => value.toMap()),
      'name': name,
      'openai': ?pulumi.Input.mapOptionalInputValue<ZeroTrustCasbIntegrationOpenai, Map<String, dynamic>>(openai, (value) => value.toMap()),
      'paused': paused,
      'permissions': ?permissions,
      'useCases': ?useCases,
    };
  }

  factory ZeroTrustCasbIntegrationArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      anthropic: (() { final guardedValue = map['anthropic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationAnthropic.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      aws: (() { final guardedValue = map['aws']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationAws.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      box: (() { final guardedValue = map['box']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationBox.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dlpProfiles: (() { final guardedValue = map['dlpProfiles']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      googleCloudPlatform: (() { final guardedValue = map['googleCloudPlatform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationGoogleCloudPlatform.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      googleWorkspace: (() { final guardedValue = map['googleWorkspace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationGoogleWorkspace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      openai: (() { final guardedValue = map['openai']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZeroTrustCasbIntegrationOpenai.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      useCases: (() { final guardedValue = map['useCases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
