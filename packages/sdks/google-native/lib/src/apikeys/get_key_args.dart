// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apikeys_v2_get_key_args_doc}
/// Arguments for getKey.
/// {@endtemplate}
/// {@macro pulumi_apikeys_v2_get_key_args_doc}
class GetKeyArgs {
  final pulumi.Input<String> keyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetKeyArgs].
  /// [keyId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetKeyArgs({required this.keyId, required this.location, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyId': keyId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyArgs(
      keyId: pulumi.Input.fromValue(map['keyId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
