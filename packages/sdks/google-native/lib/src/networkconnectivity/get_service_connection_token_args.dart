// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkconnectivity_v1_get_service_connection_token_args_doc}
/// Arguments for getServiceConnectionToken.
/// {@endtemplate}
/// {@macro pulumi_networkconnectivity_v1_get_service_connection_token_args_doc}
class GetServiceConnectionTokenArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> serviceConnectionTokenId;

  /// Creates a new [GetServiceConnectionTokenArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [serviceConnectionTokenId] Required.
  GetServiceConnectionTokenArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> serviceConnectionTokenId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceConnectionTokenId = pulumi.Input.asInput<String>(serviceConnectionTokenId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceConnectionTokenId': serviceConnectionTokenId,
    };
  }

  factory GetServiceConnectionTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionTokenArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceConnectionTokenId: pulumi.Output.create<String>(map['serviceConnectionTokenId'] as String),
    );
  }
}

