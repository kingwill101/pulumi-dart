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
    this.createTime,
    this.effectiveLabels,
    this.interceptEndpointGroup,
    this.interceptEndpointGroupAssociationId,
    this.labels,
    this.location,
    this.locations,
    this.locationsDetails,
    this.name,
    this.network,
    this.project,
    this.pulumiLabels,
    this.reconciling,
    this.state,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      interceptEndpointGroup: map['interceptEndpointGroup'] == null ? null : (map['interceptEndpointGroup'] as String).input(),
      interceptEndpointGroupAssociationId: map['interceptEndpointGroupAssociationId'] == null ? null : (map['interceptEndpointGroupAssociationId'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      locations: map['locations'] == null ? null : (pulumi.Input.decodeList<InterceptEndpointGroupAssociationLocation>(map['locations'], (value) => InterceptEndpointGroupAssociationLocation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locationsDetails: map['locationsDetails'] == null ? null : (pulumi.Input.decodeList<InterceptEndpointGroupAssociationLocationsDetail>(map['locationsDetails'], (value) => InterceptEndpointGroupAssociationLocationsDetail.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

