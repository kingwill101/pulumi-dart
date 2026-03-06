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
  const GetServiceConnectionTokenArgs({
    required this.location,
    this.project,
    required this.serviceConnectionTokenId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'serviceConnectionTokenId': serviceConnectionTokenId,
    };
  }

  factory GetServiceConnectionTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceConnectionTokenArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConnectionTokenId: pulumi.Input.fromValue(map['serviceConnectionTokenId'] as String),
    );
  }
}

