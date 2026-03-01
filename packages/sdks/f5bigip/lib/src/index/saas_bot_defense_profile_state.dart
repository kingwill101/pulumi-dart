// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'saas_bot_defense_profile_protected_endpoint.dart';

/// Input properties used for looking up and filtering SaasBotDefenseProfile resources.
class SaasBotDefenseProfileState {
  /// Specifies the API key, enter the value provided by F5 Support.
  final pulumi.Input<String>? apiKey;
  /// Specifies the Bot Defense API application ID, enter the value provided by F5 Support
  final pulumi.Input<String>? applicationId;
  /// Distributed Cloud Services Bot Defense parent profile from which this profile will inherit settings.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies descriptive text that identifies the BD profile.
  final pulumi.Input<String>? description;
  /// Unique name for the Distributed Cloud Services Bot Defense profile
  final pulumi.Input<String>? name;
  /// Use these settings to configure which pages on the website will be protected by BD
  final pulumi.Input<List<SaasBotDefenseProfileProtectedEndpoint>>? protectedEndpoints;
  /// Specifies the web hostname to which API requests are made
  final pulumi.Input<String>? shapeProtectionPool;
  /// Specifies a server-side SSL profile that is different from what the application pool uses
  final pulumi.Input<String>? sslProfile;
  /// Specifies the tenant ID, enter the value provided by F5 Support
  final pulumi.Input<String>? tenantId;

  /// Creates a new [SaasBotDefenseProfileState].
  /// [apiKey] Specifies the API key, enter the value provided by F5 Support.
  /// [applicationId] Specifies the Bot Defense API application ID, enter the value provided by F5 Support
  /// [defaultsFrom] Distributed Cloud Services Bot Defense parent profile from which this profile will inherit settings.
  /// [description] Specifies descriptive text that identifies the BD profile.
  /// [name] Unique name for the Distributed Cloud Services Bot Defense profile
  /// [protectedEndpoints] Use these settings to configure which pages on the website will be protected by BD
  /// [shapeProtectionPool] Specifies the web hostname to which API requests are made
  /// [sslProfile] Specifies a server-side SSL profile that is different from what the application pool uses
  /// [tenantId] Specifies the tenant ID, enter the value provided by F5 Support
  SaasBotDefenseProfileState({
    pulumi.Output<String>? apiKey,
    pulumi.Output<String>? applicationId,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<List<SaasBotDefenseProfileProtectedEndpoint>>? protectedEndpoints,
    pulumi.Output<String>? shapeProtectionPool,
    pulumi.Output<String>? sslProfile,
    pulumi.Output<String>? tenantId,
  }) :
      apiKey = pulumi.Input.asOptionalInput<String>(apiKey),
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectedEndpoints = pulumi.Input.asOptionalInput<List<SaasBotDefenseProfileProtectedEndpoint>>(protectedEndpoints),
      shapeProtectionPool = pulumi.Input.asOptionalInput<String>(shapeProtectionPool),
      sslProfile = pulumi.Input.asOptionalInput<String>(sslProfile),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationId': ?applicationId,
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'name': ?name,
      'protectedEndpoints': ?pulumi.Input.mapOptionalInputValue<List<SaasBotDefenseProfileProtectedEndpoint>, List<Map<String, dynamic>>>(protectedEndpoints, (value) => pulumi.Input.encodeList<SaasBotDefenseProfileProtectedEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'shapeProtectionPool': ?shapeProtectionPool,
      'sslProfile': ?sslProfile,
      'tenantId': ?tenantId,
    };
  }

  factory SaasBotDefenseProfileState.fromMap(Map<String, dynamic> map) {
    return SaasBotDefenseProfileState(
      apiKey: map['apiKey'] == null ? null : pulumi.Output.create<String>(map['apiKey'] as String),
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectedEndpoints: map['protectedEndpoints'] == null ? null : pulumi.Output.create<List<SaasBotDefenseProfileProtectedEndpoint>>(pulumi.Input.decodeList<SaasBotDefenseProfileProtectedEndpoint>(map['protectedEndpoints'], (value) => SaasBotDefenseProfileProtectedEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      shapeProtectionPool: map['shapeProtectionPool'] == null ? null : pulumi.Output.create<String>(map['shapeProtectionPool'] as String),
      sslProfile: map['sslProfile'] == null ? null : pulumi.Output.create<String>(map['sslProfile'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}

