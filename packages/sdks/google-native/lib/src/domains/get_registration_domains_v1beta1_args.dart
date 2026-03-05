// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_domains_v1beta1_get_registration_domains_v1beta1_args_doc}
/// Arguments for getRegistration.
/// {@endtemplate}
/// {@macro pulumi_domains_v1beta1_get_registration_domains_v1beta1_args_doc}
class GetRegistrationDomainsV1beta1Args {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> registrationId;

  /// Creates a new [GetRegistrationDomainsV1beta1Args].
  /// [location] Required.
  /// [project] Optional.
  /// [registrationId] Required.
  GetRegistrationDomainsV1beta1Args({
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

  factory GetRegistrationDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRegistrationDomainsV1beta1Args(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationId: pulumi.Input.fromValue(map['registrationId'] as String),
    );
  }
}

