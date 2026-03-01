// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intercept_endpoint_group_association_location.dart';
import 'intercept_endpoint_group_association_locations_detail.dart';

/// Input properties used for looking up and filtering InterceptEndpointGroupAssociation resources.
class InterceptEndpointGroupAssociationState {
  /// The timestamp when the resource was created.
  /// See https://google.aip.dev/148#timestamps.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The endpoint group that this association is connected to, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroups/my-eg`.
  /// See https://google.aip.dev/124.
  final pulumi.Input<String>? interceptEndpointGroup;
  /// The ID to use for the new association, which will become the final
  /// component of the endpoint group's resource name. If not provided, the
  /// server will generate a unique ID.
  final pulumi.Input<String>? interceptEndpointGroupAssociationId;
  /// Labels are key/value pairs that help to organize and filter resources.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The cloud location of the association, currently restricted to `global`.
  final pulumi.Input<String>? location;
  /// The list of locations where the association is configured. This information
  /// is retrieved from the linked endpoint group.
  /// Structure is documented below.
  final pulumi.Input<List<InterceptEndpointGroupAssociationLocation>>? locations;
  /// (Deprecated)
  /// The list of locations where the association is present. This information
  /// is retrieved from the linked endpoint group, and not configured as part
  /// of the association itself.
  /// Structure is documented below.
  final pulumi.Input<List<InterceptEndpointGroupAssociationLocationsDetail>>? locationsDetails;
  /// The resource name of this endpoint group association, for example:
  /// `projects/123456789/locations/global/interceptEndpointGroupAssociations/my-eg-association`.
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

  /// Creates a new [InterceptEndpointGroupAssociationState].
  /// [createTime] The timestamp when the resource was created.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [interceptEndpointGroup] The endpoint group that this association is connected to, for example:
  /// [interceptEndpointGroupAssociationId] The ID to use for the new association, which will become the final
  /// [labels] Labels are key/value pairs that help to organize and filter resources.
  /// [location] The cloud location of the association, currently restricted to `global`.
  /// [locations] The list of locations where the association is configured. This information
  /// [locationsDetails] (Deprecated)
  /// [name] The resource name of this endpoint group association, for example:
  /// [network] The VPC network that is associated. for example:
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] The current state of the resource does not match the user's intended state,
  /// [state] (Output)
  /// [updateTime] The timestamp when the resource was most recently updated.
  InterceptEndpointGroupAssociationState({
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? interceptEndpointGroup,
    pulumi.Output<String>? interceptEndpointGroupAssociationId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<List<InterceptEndpointGroupAssociationLocation>>? locations,
    pulumi.Output<List<InterceptEndpointGroupAssociationLocationsDetail>>? locationsDetails,
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
      interceptEndpointGroup = pulumi.Input.asOptionalInput<String>(interceptEndpointGroup),
      interceptEndpointGroupAssociationId = pulumi.Input.asOptionalInput<String>(interceptEndpointGroupAssociationId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      locations = pulumi.Input.asOptionalInput<List<InterceptEndpointGroupAssociationLocation>>(locations),
      locationsDetails = pulumi.Input.asOptionalInput<List<InterceptEndpointGroupAssociationLocationsDetail>>(locationsDetails),
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
      'interceptEndpointGroup': ?interceptEndpointGroup,
      'interceptEndpointGroupAssociationId': ?interceptEndpointGroupAssociationId,
      'labels': ?labels,
      'location': ?location,
      'locations': ?pulumi.Input.mapOptionalInputValue<List<InterceptEndpointGroupAssociationLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<InterceptEndpointGroupAssociationLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationsDetails': ?pulumi.Input.mapOptionalInputValue<List<InterceptEndpointGroupAssociationLocationsDetail>, List<Map<String, dynamic>>>(locationsDetails, (value) => pulumi.Input.encodeList<InterceptEndpointGroupAssociationLocationsDetail, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'network': ?network,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory InterceptEndpointGroupAssociationState.fromMap(Map<String, dynamic> map) {
    return InterceptEndpointGroupAssociationState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      interceptEndpointGroup: map['interceptEndpointGroup'] == null ? null : pulumi.Output.create<String>(map['interceptEndpointGroup'] as String),
      interceptEndpointGroupAssociationId: map['interceptEndpointGroupAssociationId'] == null ? null : pulumi.Output.create<String>(map['interceptEndpointGroupAssociationId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      locations: map['locations'] == null ? null : pulumi.Output.create<List<InterceptEndpointGroupAssociationLocation>>(pulumi.Input.decodeList<InterceptEndpointGroupAssociationLocation>(map['locations'], (value) => InterceptEndpointGroupAssociationLocation.fromMap((value as Map).cast<String, dynamic>()))),
      locationsDetails: map['locationsDetails'] == null ? null : pulumi.Output.create<List<InterceptEndpointGroupAssociationLocationsDetail>>(pulumi.Input.decodeList<InterceptEndpointGroupAssociationLocationsDetail>(map['locationsDetails'], (value) => InterceptEndpointGroupAssociationLocationsDetail.fromMap((value as Map).cast<String, dynamic>()))),
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

