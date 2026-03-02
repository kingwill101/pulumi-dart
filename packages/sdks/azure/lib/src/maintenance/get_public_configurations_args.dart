// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_maintenance_get_public_configurations_get_public_configurations_args_doc}
/// Arguments for getPublicConfigurations.
/// {@endtemplate}
/// {@macro pulumi_maintenance_get_public_configurations_get_public_configurations_args_doc}
class GetPublicConfigurationsArgs {
  /// The Azure location to filter the list of Public Maintenance Configurations against.
  final pulumi.Input<String>? location;
  /// The recurring window to filter the list of Public Maintenance Configurations against. Possible values are `Monday-Thursday` and `Friday-Sunday`
  final pulumi.Input<String>? recurEvery;
  /// The scope to filter the list of Public Maintenance Configurations against. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` and `SQLManagedInstance`.
  final pulumi.Input<String>? scope;

  /// Creates a new [GetPublicConfigurationsArgs].
  /// [location] The Azure location to filter the list of Public Maintenance Configurations against.
  /// [recurEvery] The recurring window to filter the list of Public Maintenance Configurations against. Possible values are `Monday-Thursday` and `Friday-Sunday`
  /// [scope] The scope to filter the list of Public Maintenance Configurations against. Possible values are `Extension`, `Host`, `InGuestPatch`, `OSImage`, `SQLDB` and `SQLManagedInstance`.
  GetPublicConfigurationsArgs({
    this.location,
    this.recurEvery,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'recurEvery': ?recurEvery,
      'scope': ?scope,
    };
  }

  factory GetPublicConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicConfigurationsArgs(
      location: map['location'] == null ? null : (map['location'] as String).input(),
      recurEvery: map['recurEvery'] == null ? null : (map['recurEvery'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope'] as String).input(),
    );
  }
}

