// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmwareengine_v1_get_hcx_activation_key_args_doc}
/// Arguments for getHcxActivationKey.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_v1_get_hcx_activation_key_args_doc}
class GetHcxActivationKeyArgs {
  final pulumi.Input<String> hcxActivationKeyId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> privateCloudId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetHcxActivationKeyArgs].
  /// [hcxActivationKeyId] Required.
  /// [location] Required.
  /// [privateCloudId] Required.
  /// [project] Optional.
  GetHcxActivationKeyArgs({
    required this.hcxActivationKeyId,
    required this.location,
    required this.privateCloudId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hcxActivationKeyId': hcxActivationKeyId,
      'location': location,
      'privateCloudId': privateCloudId,
      'project': ?project,
    };
  }

  factory GetHcxActivationKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetHcxActivationKeyArgs(
      hcxActivationKeyId: pulumi.Input.fromValue(
        map['hcxActivationKeyId'] as String,
      ),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateCloudId: pulumi.Input.fromValue(map['privateCloudId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
