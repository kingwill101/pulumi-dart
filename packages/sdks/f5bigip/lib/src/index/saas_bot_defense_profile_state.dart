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
  final pulumi.Input<List<SaasBotDefenseProfileProtectedEndpoint>>?
  protectedEndpoints;

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
    this.apiKey,
    this.applicationId,
    this.defaultsFrom,
    this.description,
    this.name,
    this.protectedEndpoints,
    this.shapeProtectionPool,
    this.sslProfile,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'applicationId': ?applicationId,
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'name': ?name,
      'protectedEndpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<SaasBotDefenseProfileProtectedEndpoint>,
            List<Map<String, dynamic>>
          >(
            protectedEndpoints,
            (value) =>
                pulumi.Input.encodeList<
                  SaasBotDefenseProfileProtectedEndpoint,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'shapeProtectionPool': ?shapeProtectionPool,
      'sslProfile': ?sslProfile,
      'tenantId': ?tenantId,
    };
  }

  factory SaasBotDefenseProfileState.fromMap(Map<String, dynamic> map) {
    return SaasBotDefenseProfileState(
      apiKey: (() {
        final guardedValue = map['apiKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      applicationId: (() {
        final guardedValue = map['applicationId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      defaultsFrom: (() {
        final guardedValue = map['defaultsFrom'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protectedEndpoints: (() {
        final guardedValue = map['protectedEndpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SaasBotDefenseProfileProtectedEndpoint>(
            guardedValue,
            (value) => SaasBotDefenseProfileProtectedEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      shapeProtectionPool: (() {
        final guardedValue = map['shapeProtectionPool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslProfile: (() {
        final guardedValue = map['sslProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tenantId: (() {
        final guardedValue = map['tenantId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
