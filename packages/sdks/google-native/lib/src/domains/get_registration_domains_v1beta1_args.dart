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
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> registrationId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      registrationId = pulumi.Input.asInput<String>(registrationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'registrationId': registrationId,
    };
  }

  factory GetRegistrationDomainsV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetRegistrationDomainsV1beta1Args(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      registrationId: pulumi.Output.create<String>(map['registrationId'] as String),
    );
  }
}

