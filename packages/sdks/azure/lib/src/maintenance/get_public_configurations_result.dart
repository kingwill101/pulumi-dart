// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_configurations_config.dart';

/// Result data returned by getPublicConfigurations.
class GetPublicConfigurationsResult {
  /// A `configs` block as defined below.
  final List<GetPublicConfigurationsConfig> configs;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure location of the Public Maintenance Configuration.
  final String? location;
  /// The rate at which a maintenance window is expected to recur.
  final String? recurEvery;
  final String? scope;

  /// Creates a new [GetPublicConfigurationsResult].
  /// [configs] A `configs` block as defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure location of the Public Maintenance Configuration.
  /// [recurEvery] The rate at which a maintenance window is expected to recur.
  /// [scope] Optional.
  const GetPublicConfigurationsResult({
    required this.configs,
    required this.id,
    this.location,
    this.recurEvery,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': pulumi.Input.encodeList<GetPublicConfigurationsConfig, Map<String, dynamic>>(configs, (value) => value.toMap()),
      'id': id,
      'location': ?location,
      'recurEvery': ?recurEvery,
      'scope': ?scope,
    };
  }

  factory GetPublicConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicConfigurationsResult(
      configs: pulumi.Input.decodeList<GetPublicConfigurationsConfig>(map['configs']!, (value) => GetPublicConfigurationsConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurEvery: (() { final guardedValue = map['recurEvery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

