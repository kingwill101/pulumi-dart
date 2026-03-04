// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1alpha_get_binding_gkehub_v1alpha_args_doc}
/// Arguments for getBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1alpha_get_binding_gkehub_v1alpha_args_doc}
class GetBindingGkehubV1alphaArgs {
  final pulumi.Input<String> bindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBindingGkehubV1alphaArgs].
  /// [bindingId] Required.
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  GetBindingGkehubV1alphaArgs({
    required this.bindingId,
    required this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingId': bindingId,
      'location': location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory GetBindingGkehubV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingGkehubV1alphaArgs(
      bindingId: pulumi.Input.fromValue(map['bindingId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
