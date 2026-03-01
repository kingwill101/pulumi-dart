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
    pulumi.Output<String>? location,
    pulumi.Output<String>? recurEvery,
    pulumi.Output<String>? scope,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      recurEvery = pulumi.Input.asOptionalInput<String>(recurEvery),
      scope = pulumi.Input.asOptionalInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'recurEvery': ?recurEvery,
      'scope': ?scope,
    };
  }

  factory GetPublicConfigurationsArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicConfigurationsArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      recurEvery: map['recurEvery'] == null ? null : pulumi.Output.create<String>(map['recurEvery'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
    );
  }
}

