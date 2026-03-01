// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privateca_v1_get_ca_pool_args_doc}
/// Arguments for getCaPool.
/// {@endtemplate}
/// {@macro pulumi_privateca_v1_get_ca_pool_args_doc}
class GetCaPoolArgs {
  final pulumi.Input<String> caPoolId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCaPoolArgs].
  /// [caPoolId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCaPoolArgs({
    required pulumi.Output<String> caPoolId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      caPoolId = pulumi.Input.asInput<String>(caPoolId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCaPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolArgs(
      caPoolId: pulumi.Output.create<String>(map['caPoolId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

