// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rollout_plan_wave.dart';

/// {@template pulumi_compute_rollout_plan_rollout_plan_args_doc}
/// The set of arguments for RolloutPlan.
/// {@endtemplate}
/// {@macro pulumi_compute_rollout_plan_rollout_plan_args_doc}
class RolloutPlanArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource.
  final pulumi.Input<String?>? description;
  /// The location scope of the rollout plan.
  /// Possible values are: `LOCATION_SCOPE_UNSPECIFIED`, `ZONAL`, `REGIONAL`.
  final pulumi.Input<String?>? locationScope;
  /// Name of the resource. Provided by the client when the resource is created.
  /// The name must be 1-63 characters long, and comply with RFC1035.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The waves included in this rollout plan.
  /// Structure is documented below.
  final pulumi.Input<List<RolloutPlanWave>> waves;

  /// Creates a new [RolloutPlanArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource.
  /// [locationScope] The location scope of the rollout plan.
  /// [name] Name of the resource. Provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [waves] The waves included in this rollout plan.
  const RolloutPlanArgs({
    this.deletionPolicy,
    this.description,
    this.locationScope,
    this.name,
    this.project,
    required this.waves,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'locationScope': ?locationScope,
      'name': ?name,
      'project': ?project,
      'waves': pulumi.Input.mapInputValue<List<RolloutPlanWave>, List<Map<String, dynamic>>>(waves, (value) => pulumi.Input.encodeList<RolloutPlanWave, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RolloutPlanArgs.fromMap(Map<String, dynamic> map) {
    return RolloutPlanArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      locationScope: (() { final guardedValue = map['locationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      waves: pulumi.Input.fromValue(pulumi.Input.decodeList<RolloutPlanWave>(map['waves']!, (value) => RolloutPlanWave.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
