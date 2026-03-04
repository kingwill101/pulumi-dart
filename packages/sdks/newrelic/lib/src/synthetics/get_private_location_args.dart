// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_synthetics_get_private_location_get_private_location_args_doc}
/// Arguments for getPrivateLocation.
/// {@endtemplate}
/// {@macro pulumi_synthetics_get_private_location_get_private_location_args_doc}
class GetPrivateLocationArgs {
  /// The New Relic account ID of the associated private location. If left empty will default to account ID specified in provider level configuration.
  final pulumi.Input<String>? accountId;

  /// The key of the private location.
  final pulumi.Input<List<String>>? keys;

  /// The name of the Synthetics monitor private location.
  final pulumi.Input<String> name;

  /// Creates a new [GetPrivateLocationArgs].
  /// [accountId] The New Relic account ID of the associated private location. If left empty will default to account ID specified in provider level configuration.
  /// [keys] The key of the private location.
  /// [name] The name of the Synthetics monitor private location.
  GetPrivateLocationArgs({this.accountId, this.keys, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'keys': ?keys,
      'name': name,
    };
  }

  factory GetPrivateLocationArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateLocationArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keys: (() {
        final guardedValue = map['keys'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
