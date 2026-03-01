// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_exadata_infrastructure_properties.dart';

/// Input properties used for looking up and filtering CloudExadataInfrastructure resources.
class CloudExadataInfrastructureState {
  /// The ID of the Exadata Infrastructure to create. This value is restricted
  /// to (^a-z?$) and must be a maximum of 63
  /// characters in length. The value must start with a letter and end with
  /// a letter or a number.
  final pulumi.Input<String>? cloudExadataInfrastructureId;
  /// The date and time that the Exadata Infrastructure was created.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<bool>? deletionProtection;
  /// User friendly name for this resource.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Entitlement ID of the private offer against which this infrastructure
  /// resource is provisioned.
  final pulumi.Input<String>? entitlementId;
  /// GCP location where Oracle Exadata is hosted.
  final pulumi.Input<String>? gcpOracleZone;
  /// Labels or tags associated with the resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  final pulumi.Input<String>? location;
  /// Identifier. The name of the Exadata Infrastructure resource with the following format:
  /// projects/{project}/locations/{region}/cloudExadataInfrastructures/{cloud_exadata_infrastructure}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Various properties of Exadata Infrastructure.
  /// Structure is documented below.
  final pulumi.Input<CloudExadataInfrastructureProperties>? properties;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [CloudExadataInfrastructureState].
  /// [cloudExadataInfrastructureId] The ID of the Exadata Infrastructure to create. This value is restricted
  /// [createTime] The date and time that the Exadata Infrastructure was created.
  /// [deletionProtection] Optional.
  /// [displayName] User friendly name for this resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [entitlementId] Entitlement ID of the private offer against which this infrastructure
  /// [gcpOracleZone] GCP location where Oracle Exadata is hosted.
  /// [labels] Labels or tags associated with the resource.
  /// [location] Resource ID segment making up resource `name`. See documentation for resource type `oracledatabase.googleapis.com/DbServer`.
  /// [name] Identifier. The name of the Exadata Infrastructure resource with the following format:
  /// [project] The ID of the project in which the resource belongs.
  /// [properties] Various properties of Exadata Infrastructure.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  CloudExadataInfrastructureState({
    pulumi.Output<String>? cloudExadataInfrastructureId,
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? deletionProtection,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? entitlementId,
    pulumi.Output<String>? gcpOracleZone,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<CloudExadataInfrastructureProperties>? properties,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      cloudExadataInfrastructureId = pulumi.Input.asOptionalInput<String>(cloudExadataInfrastructureId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionProtection = pulumi.Input.asOptionalInput<bool>(deletionProtection),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      entitlementId = pulumi.Input.asOptionalInput<String>(entitlementId),
      gcpOracleZone = pulumi.Input.asOptionalInput<String>(gcpOracleZone),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      properties = pulumi.Input.asOptionalInput<CloudExadataInfrastructureProperties>(properties),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudExadataInfrastructureId': ?cloudExadataInfrastructureId,
      'createTime': ?createTime,
      'deletionProtection': ?deletionProtection,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'entitlementId': ?entitlementId,
      'gcpOracleZone': ?gcpOracleZone,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'properties': ?pulumi.Input.mapOptionalInputValue<CloudExadataInfrastructureProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory CloudExadataInfrastructureState.fromMap(Map<String, dynamic> map) {
    return CloudExadataInfrastructureState(
      cloudExadataInfrastructureId: map['cloudExadataInfrastructureId'] == null ? null : pulumi.Output.create<String>(map['cloudExadataInfrastructureId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionProtection: map['deletionProtection'] == null ? null : pulumi.Output.create<bool>(map['deletionProtection'] as bool),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      entitlementId: map['entitlementId'] == null ? null : pulumi.Output.create<String>(map['entitlementId'] as String),
      gcpOracleZone: map['gcpOracleZone'] == null ? null : pulumi.Output.create<String>(map['gcpOracleZone'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<CloudExadataInfrastructureProperties>(CloudExadataInfrastructureProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}

