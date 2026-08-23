// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_ekm_connection_args_doc}
/// Arguments for getEkmConnection.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_ekm_connection_args_doc}
class GetEkmConnectionArgs {
  final pulumi.Input<String> ekmConnectionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEkmConnectionArgs].
  /// [ekmConnectionId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetEkmConnectionArgs({
    required this.ekmConnectionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ekmConnectionId': ekmConnectionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEkmConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetEkmConnectionArgs(
      ekmConnectionId: pulumi.Input.fromValue(map['ekmConnectionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
