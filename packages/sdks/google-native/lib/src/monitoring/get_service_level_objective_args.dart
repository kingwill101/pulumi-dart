// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_monitoring_v3_get_service_level_objective_args_doc}
/// Arguments for getServiceLevelObjective.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_get_service_level_objective_args_doc}
class GetServiceLevelObjectiveArgs {
  final pulumi.Input<String> serviceId;
  final pulumi.Input<String> serviceLevelObjectiveId;
  final pulumi.Input<String> v3Id;
  final pulumi.Input<String> v3Id1;
  final pulumi.Input<String>? view;

  /// Creates a new [GetServiceLevelObjectiveArgs].
  /// [serviceId] Required.
  /// [serviceLevelObjectiveId] Required.
  /// [v3Id] Required.
  /// [v3Id1] Required.
  /// [view] Optional.
  GetServiceLevelObjectiveArgs({
    required this.serviceId,
    required this.serviceLevelObjectiveId,
    required this.v3Id,
    required this.v3Id1,
    this.view,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serviceId': serviceId,
      'serviceLevelObjectiveId': serviceLevelObjectiveId,
      'v3Id': v3Id,
      'v3Id1': v3Id1,
      'view': ?view,
    };
  }

  factory GetServiceLevelObjectiveArgs.fromMap(Map<String, dynamic> map) {
    return GetServiceLevelObjectiveArgs(
      serviceId: (map['serviceId'] as String).input(),
      serviceLevelObjectiveId: (map['serviceLevelObjectiveId'] as String).input(),
      v3Id: (map['v3Id'] as String).input(),
      v3Id1: (map['v3Id1'] as String).input(),
      view: map['view'] == null ? null : (map['view']! as String).input(),
    );
  }
}

