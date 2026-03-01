// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mirroring_endpoint_group_association_location.dart';
import 'mirroring_endpoint_group_association_locations_detail.dart';

/// Input properties used for looking up and filtering MirroringEndpointGroupAssociation resources.
class MirroringEndpointGroupAssociationState {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the association, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// The list of locations where the association is configured. This information
  /// is retrieved from the linked endpoint group.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringEndpointGroupAssociationLocation>>? locations;
  /// (Deprecated)
  /// The list of locations where the association is present. This information
  /// is retrieved from the linked endpoint group, and not configured as part
  /// of the association itself.
  /// Structure is documented below.
  final pulumi.Input<List<MirroringEndpointGroupAssociationLocationsDetail>>? locationsDetails;
  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? mirroringEndpointGroup;
  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final pulumi.Input<String>? mirroringEndpointGroupAssociationId;
  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/mirroringEndpointGroupAssociations/my-eg-association`.
  /// See https://google.aip.dev/122 for more details.
  final pulumi.Input<String>? name;
  /// The VPC network that is associated. for example:
  /// `projects/123456789/global/networks/my-network`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? network;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the resource does not match the user's intended state,
  /// and the system is working to reconcile them. This part of the normal
  /// operation (e.g. adding a new location to the target deployment group).
  /// See https://google.aip.dev/128.
  final pulumi.Input<bool>? reconciling;
  /// (Output)
  /// The current state of the association in this location.
  /// Possible values:
  /// STATE_UNSPECIFIED
  /// ACTIVE
  /// OUT_OF_SYNC
  final pulumi.Input<String>? state;
  /// The timestamp when the resource was most recently updated.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MirroringEndpointGroupAssociationState].
  /// [createTime] The timestamp when the resource was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [locations] The list of locations where the association is configured. This information
  /// [locationsDetails] (Deprecated)
  /// [mirroringEndpointGroup] The endpoint group that this association is connected to, for example:
  /// [mirroringEndpointGroupAssociationId] The ID to use for the new association, which will become the final
  /// [name] The resource name of this endpoint group association, for example:
  /// [network] The VPC network that is associated. for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] (Output)
  /// [updateTime] The timestamp when the resource was most recently updated.
  MirroringEndpointGroupAssociationState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<MirroringEndpointGroupAssociationLocation>>? locations,
    pulumi.Output<List<MirroringEndpointGroupAssociationLocationsDetail>>? locationsDetails,
    pulumi.Output<String>? mirroringEndpointGroup,
    pulumi.Output<String>? mirroringEndpointGroupAssociationId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asOptionalInput<List<MirroringEndpointGroupAssociationLocation>>(locations),
      locationsDetails = pulumi.Input.asOptionalInput<List<MirroringEndpointGroupAssociationLocationsDetail>>(locationsDetails),
      mirroringEndpointGroup = pulumi.Input.asOptionalInput<String>(mirroringEndpointGroup),
      mirroringEndpointGroupAssociationId = pulumi.Input.asOptionalInput<String>(mirroringEndpointGroupAssociationId),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<MirroringEndpointGroupAssociationLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<MirroringEndpointGroupAssociationLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationsDetails': ?pulumi.Input.mapOptionalInputValue<List<MirroringEndpointGroupAssociationLocationsDetail>, List<Map<String, dynamic>>>(locationsDetails, (value) => pulumi.Input.encodeList<MirroringEndpointGroupAssociationLocationsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'mirroringEndpointGroup': ?mirroringEndpointGroup,
      'mirroringEndpointGroupAssociationId': ?mirroringEndpointGroupAssociationId,
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory MirroringEndpointGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return MirroringEndpointGroupAssociationState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locations: map['locations'] == null ? null : pulumi.Output.create<List<MirroringEndpointGroupAssociationLocation>>(pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocation>(map['locations'], (value) => MirroringEndpointGroupAssociationLocation.fromMap((value as Map).cast<String, dynamic>()))),
      locationsDetails: map['locationsDetails'] == null ? null : pulumi.Output.create<List<MirroringEndpointGroupAssociationLocationsDetail>>(pulumi.Input.decodeList<MirroringEndpointGroupAssociationLocationsDetail>(map['locationsDetails'], (value) => MirroringEndpointGroupAssociationLocationsDetail.fromMap((value as Map).cast<String, dynamic>()))),
      mirroringEndpointGroup: map['mirroringEndpointGroup'] == null ? null : pulumi.Output.create<String>(map['mirroringEndpointGroup'] as String),
      mirroringEndpointGroupAssociationId: map['mirroringEndpointGroupAssociationId'] == null ? null : pulumi.Output.create<String>(map['mirroringEndpointGroupAssociationId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

