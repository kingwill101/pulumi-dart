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
    required pulumi.Output<String> serviceId,
    required pulumi.Output<String> serviceLevelObjectiveId,
    required pulumi.Output<String> v3Id,
    required pulumi.Output<String> v3Id1,
    pulumi.Output<String>? view,
  }) :
      serviceId = pulumi.Input.asInput<String>(serviceId),
      serviceLevelObjectiveId = pulumi.Input.asInput<String>(serviceLevelObjectiveId),
      v3Id = pulumi.Input.asInput<String>(v3Id),
      v3Id1 = pulumi.Input.asInput<String>(v3Id1),
      view = pulumi.Input.asOptionalInput<String>(view);

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
      serviceId: pulumi.Output.create<String>(map['serviceId'] as String),
      serviceLevelObjectiveId: pulumi.Output.create<String>(map['serviceLevelObjectiveId'] as String),
      v3Id: pulumi.Output.create<String>(map['v3Id'] as String),
      v3Id1: pulumi.Output.create<String>(map['v3Id1'] as String),
      view: map['view'] == null ? null : pulumi.Output.create<String>(map['view'] as String),
    );
  }
}

