// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_ull_mirroring_collector_ull_mirroring_collector_args_doc}
/// The set of arguments for UllMirroringCollector.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_ull_mirroring_collector_ull_mirroring_collector_args_doc}
class UllMirroringCollectorArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// The engine resource to which this collector points to, for example:
  /// `projects/123456789/locations/us-south1-d/ullMirroringEngines/my-engine`.
  final pulumi.Input<String> engine;
  /// The regional load balancer which the mirrored traffic should be forwarded
  /// to, for example:
  /// `projects/123456789/regions/us-south1/forwardingRules/my-fr`.
  final pulumi.Input<String> forwardingRule;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The cloud location of the collector, e.g. `us-south1-d` or `us-south1-e`.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The ID to use for the new collector, which will become the final
  /// component of the collector's resource name.
  final pulumi.Input<String> ullMirroringCollectorId;

  /// Creates a new [UllMirroringCollectorArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [engine] The engine resource to which this collector points to, for example:
  /// [forwardingRule] The regional load balancer which the mirrored traffic should be forwarded
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the collector, e.g. `us-south1-d` or `us-south1-e`.
  /// [project] The ID of the project in which the resource belongs.
  /// [ullMirroringCollectorId] The ID to use for the new collector, which will become the final
  const UllMirroringCollectorArgs({
    this.deletionPolicy,
    required this.engine,
    required this.forwardingRule,
    this.labels,
    required this.location,
    this.project,
    required this.ullMirroringCollectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'engine': engine,
      'forwardingRule': forwardingRule,
      'labels': ?labels,
      'location': location,
      'project': ?project,
      'ullMirroringCollectorId': ullMirroringCollectorId,
    };
  }

  factory UllMirroringCollectorArgs.fromMap(Map<String, dynamic> map) {
    return UllMirroringCollectorArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      engine: pulumi.Input.fromValue(map['engine'] as String),
      forwardingRule: pulumi.Input.fromValue(map['forwardingRule'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ullMirroringCollectorId: pulumi.Input.fromValue(map['ullMirroringCollectorId'] as String),
    );
  }
}
