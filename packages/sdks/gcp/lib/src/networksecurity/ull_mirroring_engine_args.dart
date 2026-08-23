// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_ull_mirroring_engine_ull_mirroring_engine_args_doc}
/// The set of arguments for UllMirroringEngine.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_ull_mirroring_engine_ull_mirroring_engine_args_doc}
class UllMirroringEngineArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the engine, e.g. `us-south1-d` or `us-south1-e`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The ID to use for the new engine, which will become the final
  /// component of the engine's resource name.
  final pulumi.Input<String> ullMirroringEngineId;

  /// Creates a new [UllMirroringEngineArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the engine, e.g. `us-south1-d` or `us-south1-e`.
  /// [project] The ID of the project in which the resource belongs.
  /// [ullMirroringEngineId] The ID to use for the new engine, which will become the final
  const UllMirroringEngineArgs({
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.project,
    required this.ullMirroringEngineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'ullMirroringEngineId': ullMirroringEngineId,
    };
  }

  factory UllMirroringEngineArgs.fromMap(Map<String, dynamic> map) {
    return UllMirroringEngineArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ullMirroringEngineId: pulumi.Input.fromValue(map['ullMirroringEngineId'] as String),
    );
  }
}
