// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ull_mirroring_collector_rule_match.dart';

/// Input properties used for looking up and filtering UllMirroringCollectorRule resources.
class UllMirroringCollectorRuleState {
  /// [Output only] Create time stamp
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// Match defines what traffic to mirror.
  /// Structure is documented below.
  final pulumi.Input<UllMirroringCollectorRuleMatch>? match;
  /// Identifier. The name of the UllMirroringCollectorRule.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Whether reconciling is in progress, recommended per
  /// https://google.aip.dev/128.
  final pulumi.Input<bool>? reconciling;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? ullMirroringCollector;
  /// ID for the new UllMirroringCollectorRule.
  final pulumi.Input<String>? ullMirroringCollectorRuleId;
  /// [Output only] Update time stamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [UllMirroringCollectorRuleState].
  /// [createTime] [Output only] Create time stamp
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [match] Match defines what traffic to mirror.
  /// [name] Identifier. The name of the UllMirroringCollectorRule.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Whether reconciling is in progress, recommended per
  /// [ullMirroringCollector] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [ullMirroringCollectorRuleId] ID for the new UllMirroringCollectorRule.
  /// [updateTime] [Output only] Update time stamp
  const UllMirroringCollectorRuleState({
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.match,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.ullMirroringCollector,
    this.ullMirroringCollectorRuleId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'match': ?pulumi.Input.mapOptionalInputValue<UllMirroringCollectorRuleMatch, Map<String, dynamic>>(match, (value) => value.toMap()),
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'ullMirroringCollector': ?ullMirroringCollector,
      'ullMirroringCollectorRuleId': ?ullMirroringCollectorRuleId,
      'updateTime': ?updateTime,
    };
  }

  factory UllMirroringCollectorRuleState.fromMap(Map<String, dynamic> map) {
    return UllMirroringCollectorRuleState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      match: (() { final guardedValue = map['match']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UllMirroringCollectorRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ullMirroringCollector: (() { final guardedValue = map['ullMirroringCollector']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ullMirroringCollectorRuleId: (() { final guardedValue = map['ullMirroringCollectorRuleId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
