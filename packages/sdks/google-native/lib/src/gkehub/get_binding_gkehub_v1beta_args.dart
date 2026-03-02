// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkehub_v1beta_get_binding_gkehub_v1beta_args_doc}
/// Arguments for getBinding.
/// {@endtemplate}
/// {@macro pulumi_gkehub_v1beta_get_binding_gkehub_v1beta_args_doc}
class GetBindingGkehubV1betaArgs {
  final pulumi.Input<String> bindingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> membershipId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetBindingGkehubV1betaArgs].
  /// [bindingId] Required.
  /// [location] Required.
  /// [membershipId] Required.
  /// [project] Optional.
  GetBindingGkehubV1betaArgs({
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

  factory GetBindingGkehubV1betaArgs.fromMap(Map<String, dynamic> map) {
    return GetBindingGkehubV1betaArgs(
      bindingId: (map['bindingId'] as String).input(),
      location: (map['location'] as String).input(),
      membershipId: (map['membershipId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

