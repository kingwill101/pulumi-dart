// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_discovery_spec.dart';
import 'zone_resource_spec.dart';

/// {@template pulumi_dataplex_zone_zone_args_doc}
/// The set of arguments for Zone.
/// {@endtemplate}
/// {@macro pulumi_dataplex_zone_zone_args_doc}
class ZoneArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Optional. Description of the zone.
  final pulumi.Input<String>? description;
  /// Required. Specification of the discovery feature applied to data in this zone.
  final pulumi.Input<ZoneDiscoverySpec> discoverySpec;
  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;
  /// Optional. User defined labels for the zone.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The lake for the resource
  final pulumi.Input<String> lake;
  /// The location for the resource
  final pulumi.Input<String> location;
  /// The name of the zone.
  final pulumi.Input<String>? name;
  /// The project for the resource
  final pulumi.Input<String>? project;
  /// Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  final pulumi.Input<ZoneResourceSpec> resourceSpec;
  /// Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  final pulumi.Input<String> type;

  /// Creates a new [ZoneArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// [description] Optional. Description of the zone.
  /// [discoverySpec] Required. Specification of the discovery feature applied to data in this zone.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User defined labels for the zone.
  /// [lake] The lake for the resource
  /// [location] The location for the resource
  /// [name] The name of the zone.
  /// [project] The project for the resource
  /// [resourceSpec] Required. Immutable. Specification of the resources that are referenced by the assets within this zone.
  /// [type] Required. Immutable. The type of the zone. Possible values: TYPE_UNSPECIFIED, RAW, CURATED
  const ZoneArgs({
    this.deletionPolicy,
    this.description,
    required this.discoverySpec,
    this.displayName,
    this.labels,
    required this.lake,
    required this.location,
    this.name,
    this.project,
    required this.resourceSpec,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'discoverySpec': pulumi.Input.mapInputValue<ZoneDiscoverySpec, Map<String, dynamic>>(discoverySpec, (value) => value.toMap()),
      'displayName': ?displayName,
      'labels': ?labels,
      'lake': lake,
      'location': location,
      'name': ?name,
      'project': ?project,
      'resourceSpec': pulumi.Input.mapInputValue<ZoneResourceSpec, Map<String, dynamic>>(resourceSpec, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ZoneArgs.fromMap(Map<String, dynamic> map) {
    return ZoneArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      discoverySpec: pulumi.Input.fromValue(ZoneDiscoverySpec.fromMap((map['discoverySpec']! as Map).cast<String, dynamic>())),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lake: pulumi.Input.fromValue(map['lake'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceSpec: pulumi.Input.fromValue(ZoneResourceSpec.fromMap((map['resourceSpec']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
