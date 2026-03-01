// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saas_bot_defense_profile_protected_endpoint.dart';

/// {@template pulumi_index_saas_bot_defense_profile_saas_bot_defense_profile_args_doc}
/// The set of arguments for SaasBotDefenseProfile.
/// {@endtemplate}
/// {@macro pulumi_index_saas_bot_defense_profile_saas_bot_defense_profile_args_doc}
class SaasBotDefenseProfileArgs {
  /// Specifies the API key, enter the value provided by F5 Support.
  final pulumi.Input<String> apiKey;
  /// Specifies the Bot Defense API application ID, enter the value provided by F5 Support
  final pulumi.Input<String> applicationId;
  /// Distributed Cloud Services Bot Defense parent profile from which this profile will inherit settings.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies descriptive text that identifies the BD profile.
  final pulumi.Input<String>? description;
  /// Unique name for the Distributed Cloud Services Bot Defense profile
  final pulumi.Input<String> name;
  /// Use these settings to configure which pages on the website will be protected by BD
  final pulumi.Input<List<SaasBotDefenseProfileProtectedEndpoint>> protectedEndpoints;
  /// Specifies the web hostname to which API requests are made
  final pulumi.Input<String> shapeProtectionPool;
  /// Specifies a server-side SSL profile that is different from what the application pool uses
  final pulumi.Input<String> sslProfile;
  /// Specifies the tenant ID, enter the value provided by F5 Support
  final pulumi.Input<String> tenantId;

  /// Creates a new [SaasBotDefenseProfileArgs].
  /// [apiKey] Specifies the API key, enter the value provided by F5 Support.
  /// [applicationId] Specifies the Bot Defense API application ID, enter the value provided by F5 Support
  /// [defaultsFrom] Distributed Cloud Services Bot Defense parent profile from which this profile will inherit settings.
  /// [description] Specifies descriptive text that identifies the BD profile.
  /// [name] Unique name for the Distributed Cloud Services Bot Defense profile
  /// [protectedEndpoints] Use these settings to configure which pages on the website will be protected by BD
  /// [shapeProtectionPool] Specifies the web hostname to which API requests are made
  /// [sslProfile] Specifies a server-side SSL profile that is different from what the application pool uses
  /// [tenantId] Specifies the tenant ID, enter the value provided by F5 Support
  SaasBotDefenseProfileArgs({
    required pulumi.Output<String> apiKey,
    required pulumi.Output<String> applicationId,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? description,
    required pulumi.Output<String> name,
    required pulumi.Output<List<SaasBotDefenseProfileProtectedEndpoint>> protectedEndpoints,
    required pulumi.Output<String> shapeProtectionPool,
    required pulumi.Output<String> sslProfile,
    required pulumi.Output<String> tenantId,
  }) :
      apiKey = pulumi.Input.asInput<String>(apiKey),
      applicationId = pulumi.Input.asInput<String>(applicationId),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      protectedEndpoints = pulumi.Input.asInput<List<SaasBotDefenseProfileProtectedEndpoint>>(protectedEndpoints),
      shapeProtectionPool = pulumi.Input.asInput<String>(shapeProtectionPool),
      sslProfile = pulumi.Input.asInput<String>(sslProfile),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey,
      'applicationId': applicationId,
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'name': name,
      'protectedEndpoints': pulumi.Input.mapInputValue<List<SaasBotDefenseProfileProtectedEndpoint>, List<Map<String, dynamic>>>(protectedEndpoints, (value) => pulumi.Input.encodeList<SaasBotDefenseProfileProtectedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shapeProtectionPool': shapeProtectionPool,
      'sslProfile': sslProfile,
      'tenantId': tenantId,
    };
  }

  factory SaasBotDefenseProfileArgs.fromMap(Map<String, dynamic> map) {
    return SaasBotDefenseProfileArgs(
      apiKey: pulumi.Output.create<String>(map['apiKey'] as String),
      applicationId: pulumi.Output.create<String>(map['applicationId'] as String),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      protectedEndpoints: pulumi.Output.create<List<SaasBotDefenseProfileProtectedEndpoint>>(pulumi.Input.decodeList<SaasBotDefenseProfileProtectedEndpoint>(map['protectedEndpoints'], (value) => SaasBotDefenseProfileProtectedEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      shapeProtectionPool: pulumi.Output.create<String>(map['shapeProtectionPool'] as String),
      sslProfile: pulumi.Output.create<String>(map['sslProfile'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

