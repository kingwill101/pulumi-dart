// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UllMirroringCollector resources.
class UllMirroringCollectorState {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
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
  /// The engine resource to which this collector points to, for example:
  /// `projects/123456789/locations/us-south1-d/ullMirroringEngines/my-engine`.
  final pulumi.Input<String>? engine;
  /// The regional load balancer which the mirrored traffic should be forwarded
  /// to, for example:
  /// `projects/123456789/regions/us-south1/forwardingRules/my-fr`.
  final pulumi.Input<String>? forwardingRule;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the collector, e.g. `us-south1-d` or `us-south1-e`.
  final pulumi.Input<String>? location;
  /// The resource name of this collector, for example:
  /// `projects/123456789/locations/us-south1-d/ullMirroringCollectors/my-collector`.
  /// See https://google.aip.dev/122 for more details.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This is part of the normal
  /// operation. See https://google.aip.dev/128.
  final pulumi.Input<bool>? reconciling;
  /// The current state of the collector.
  /// See https://google.aip.dev/216.
  /// Possible values:
  /// ACTIVE
  /// CREATING
  /// DELETING
  final pulumi.Input<String>? state;
  /// The ID to use for the new collector, which will become the final
  /// component of the collector's resource name.
  final pulumi.Input<String>? ullMirroringCollectorId;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [UllMirroringCollectorState].
  /// [createTime] The timestamp when the resource was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [engine] The engine resource to which this collector points to, for example:
  /// [forwardingRule] The regional load balancer which the mirrored traffic should be forwarded
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the collector, e.g. `us-south1-d` or `us-south1-e`.
  /// [name] The resource name of this collector, for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] The current state of the collector.
  /// [ullMirroringCollectorId] The ID to use for the new collector, which will become the final
  /// [updateTime] The timestamp when the resource was most recently updated.
  const UllMirroringCollectorState({
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.engine,
    this.forwardingRule,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.ullMirroringCollectorId,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'engine': ?engine,
      'forwardingRule': ?forwardingRule,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'ullMirroringCollectorId': ?ullMirroringCollectorId,
      'updateTime': ?updateTime,
    };
  }

  factory UllMirroringCollectorState.fromMap(Map<String, dynamic> map) {
    return UllMirroringCollectorState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forwardingRule: (() { final guardedValue = map['forwardingRule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ullMirroringCollectorId: (() { final guardedValue = map['ullMirroringCollectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
