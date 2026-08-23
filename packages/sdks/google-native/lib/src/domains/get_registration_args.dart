// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domains_v1_get_registration_args_doc}
/// Arguments for getRegistration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1_get_registration_args_doc}
class GetRegistrationArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  /// Creates a new [GetRegistrationArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [registrationId] Required.
  const GetRegistrationArgs({
    required this.location,
    this.project,
    required this.registrationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'registrationId': registrationId,
    };
  }

  factory GetRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return GetRegistrationArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationId: pulumi.Input.fromValue(map['registrationId'] as String),
    );
  }
}
