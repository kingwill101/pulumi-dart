// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datastream_v1_get_private_connection_args_doc}
/// Arguments for getPrivateConnection.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_get_private_connection_args_doc}
class GetPrivateConnectionArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateConnectionId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetPrivateConnectionArgs].
  /// [location] Required.
  /// [privateConnectionId] Required.
  /// [project] Optional.
  GetPrivateConnectionArgs({
    required this.location,
    required this.privateConnectionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'privateConnectionId': privateConnectionId,
      'project': ?project,
    };
  }

  factory GetPrivateConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      privateConnectionId: pulumi.Input.fromValue(
        map['privateConnectionId'] as String,
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
