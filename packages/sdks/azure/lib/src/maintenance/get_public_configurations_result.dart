// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_public_configurations_config.dart';

/// Result data returned by getPublicConfigurations.
class GetPublicConfigurationsResult {
  /// A `configs` block as defined below.
  final List<GetPublicConfigurationsConfig>? configs;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
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
    this.configs,
    this.id,
    this.location,
    this.recurEvery,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configs': ?(() { final guardedValue = configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPublicConfigurationsConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'recurEvery': ?recurEvery,
      'scope': ?scope,
    };
  }

  factory GetPublicConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetPublicConfigurationsResult(
      configs: (() { final guardedValue = map['configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPublicConfigurationsConfig>(guardedValue, (value) => GetPublicConfigurationsConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurEvery: (() { final guardedValue = map['recurEvery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
