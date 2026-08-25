// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_settings_endpoint_control_policy.dart';

/// {@template pulumi_ces_security_settings_security_settings_args_doc}
/// The set of arguments for SecuritySettings.
/// {@endtemplate}
/// {@macro pulumi_ces_security_settings_security_settings_args_doc}
class SecuritySettingsArgs {
  /// Optional. Endpoint control related settings.
  /// Structure is documented below.
  final pulumi.Input<SecuritySettingsEndpointControlPolicy?>? endpointControlPolicy;
  /// The location of the security settings.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [SecuritySettingsArgs].
  /// [endpointControlPolicy] Optional. Endpoint control related settings.
  /// [location] The location of the security settings.
  /// [project] The ID of the project in which the resource belongs.
  const SecuritySettingsArgs({
    this.endpointControlPolicy,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointControlPolicy': ?pulumi.Input.mapOptionalInputValue<SecuritySettingsEndpointControlPolicy, Map<String, dynamic>>(endpointControlPolicy, (value) => value.toMap()),
      'location': location,
      'project': ?project,
    };
  }

  factory SecuritySettingsArgs.fromMap(Map<String, dynamic> map) {
    return SecuritySettingsArgs(
      endpointControlPolicy: (() { final guardedValue = map['endpointControlPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecuritySettingsEndpointControlPolicy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
