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
    pulumi.Output<MembershipAuthority>? authority,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<MembershipEndpoint>? endpoint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? membershipId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
  }) :
      authority = pulumi.Input.asOptionalInput<MembershipAuthority>(authority),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpoint = pulumi.Input.asOptionalInput<MembershipEndpoint>(endpoint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      membershipId = pulumi.Input.asOptionalInput<String>(membershipId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels);

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
      authority: map['authority'] == null ? null : pulumi.Output.create<MembershipAuthority>(MembershipAuthority.fromMap((map['authority'] as Map).cast<String, dynamic>())),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<MembershipEndpoint>(MembershipEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      membershipId: map['membershipId'] == null ? null : pulumi.Output.create<String>(map['membershipId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
    );
  }
}

