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
    required this.caPoolId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caPoolId': caPoolId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCaPoolArgs.fromMap(Map<String, dynamic> map) {
    return GetCaPoolArgs(
      caPoolId: (map['caPoolId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

