// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_authority.dart';
import 'membership_endpoint.dart';

/// Input properties used for looking up and filtering Membership resources.
class MembershipState {
  /// Authority encodes how Google will recognize identities from this Membership.
  /// See the workload identity documentation for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// Structure is documented below.
  final pulumi.Input<MembershipAuthority>? authority;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  final pulumi.Input<MembershipEndpoint>? endpoint;
  /// Labels to apply to this membership.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Location of the membership.
  /// The default value is `global`.
  final pulumi.Input<String>? location;
  /// The client-provided identifier of the membership.
  final pulumi.Input<String>? membershipId;
  /// The unique identifier of the membership.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// Creates a new [MembershipState].
  /// [authority] Authority encodes how Google will recognize identities from this Membership.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpoint] If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// [labels] Labels to apply to this membership.
  /// [location] Location of the membership.
  /// [membershipId] The client-provided identifier of the membership.
  /// [name] The unique identifier of the membership.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  MembershipState({
    this.authority,
    this.effectiveLabels,
    this.endpoint,
    this.labels,
    this.location,
    this.membershipId,
    this.name,
    this.project,
    this.pulumiLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?pulumi.Input.mapOptionalInputValue<MembershipAuthority, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'effectiveLabels': ?effectiveLabels,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<MembershipEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'membershipId': ?membershipId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
    };
  }

  factory MembershipState.fromMap(Map<String, dynamic> map) {
    return MembershipState(
      authority: map['authority'] == null ? null : (MembershipAuthority.fromMap((map['authority']! as Map).cast<String, dynamic>())).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      endpoint: map['endpoint'] == null ? null : (MembershipEndpoint.fromMap((map['endpoint']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      membershipId: map['membershipId'] == null ? null : (map['membershipId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
    );
  }
}

