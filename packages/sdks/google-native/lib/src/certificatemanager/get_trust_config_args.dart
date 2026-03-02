// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_v1_get_trust_config_args_doc}
/// Arguments for getTrustConfig.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_v1_get_trust_config_args_doc}
class GetTrustConfigArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> trustConfigId;

  /// Creates a new [GetTrustConfigArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [trustConfigId] Required.
  GetTrustConfigArgs({
    required this.location,
    this.project,
    required this.trustConfigId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'trustConfigId': trustConfigId,
    };
  }

  factory GetTrustConfigArgs.fromMap(Map<String, dynamic> map) {
    return GetTrustConfigArgs(
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      trustConfigId: (map['trustConfigId'] as String).input(),
    );
  }
}

