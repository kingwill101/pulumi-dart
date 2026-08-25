// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ull_mirroring_collector_rule_match.dart';

/// {@template pulumi_networksecurity_ull_mirroring_collector_rule_ull_mirroring_collector_rule_args_doc}
/// The set of arguments for UllMirroringCollectorRule.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_ull_mirroring_collector_rule_ull_mirroring_collector_rule_args_doc}
class UllMirroringCollectorRuleArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// Match defines what traffic to mirror.
  /// Structure is documented below.
  final pulumi.Input<UllMirroringCollectorRuleMatch> match;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> ullMirroringCollector;
  /// ID for the new UllMirroringCollectorRule.
  final pulumi.Input<String> ullMirroringCollectorRuleId;

  /// Creates a new [UllMirroringCollectorRuleArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [match] Match defines what traffic to mirror.
  /// [project] The ID of the project in which the resource belongs.
  /// [ullMirroringCollector] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [ullMirroringCollectorRuleId] ID for the new UllMirroringCollectorRule.
  const UllMirroringCollectorRuleArgs({
    this.deletionPolicy,
    this.labels,
    required this.location,
    required this.match,
    this.project,
    required this.ullMirroringCollector,
    required this.ullMirroringCollectorRuleId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'match': pulumi.Input.mapInputValue<UllMirroringCollectorRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'project': ?project,
      'ullMirroringCollector': ullMirroringCollector,
      'ullMirroringCollectorRuleId': ullMirroringCollectorRuleId,
    };
  }

  factory UllMirroringCollectorRuleArgs.fromMap(Map<String, dynamic> map) {
    return UllMirroringCollectorRuleArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      match: pulumi.Input.fromValue(UllMirroringCollectorRuleMatch.fromMap((map['match']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ullMirroringCollector: pulumi.Input.fromValue(map['ullMirroringCollector'] as String),
      ullMirroringCollectorRuleId: pulumi.Input.fromValue(map['ullMirroringCollectorRuleId'] as String),
    );
  }
}
