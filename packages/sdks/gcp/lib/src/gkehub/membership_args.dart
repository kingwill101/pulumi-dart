// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_authority.dart';
import 'membership_endpoint.dart';

/// {@template pulumi_gkehub_membership_membership_args_doc}
/// The set of arguments for Membership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_membership_membership_args_doc}
class MembershipArgs {
  /// Authority encodes how Google will recognize identities from this Membership.
  /// See the workload identity documentation for more details:
  /// https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity
  /// Structure is documented below.
  final pulumi.Input<MembershipAuthority>? authority;
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
  final pulumi.Input<String> membershipId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [MembershipArgs].
  /// [authority] Authority encodes how Google will recognize identities from this Membership.
  /// [endpoint] If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// [labels] Labels to apply to this membership.
  /// [location] Location of the membership.
  /// [membershipId] The client-provided identifier of the membership.
  /// [project] The ID of the project in which the resource belongs.
  MembershipArgs({
    pulumi.Output<MembershipAuthority>? authority,
    pulumi.Output<MembershipEndpoint>? endpoint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    required pulumi.Output<String> membershipId,
    pulumi.Output<String>? project,
  }) :
      authority = pulumi.Input.asOptionalInput<MembershipAuthority>(authority),
      endpoint = pulumi.Input.asOptionalInput<MembershipEndpoint>(endpoint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      membershipId = pulumi.Input.asInput<String>(membershipId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?pulumi.Input.mapOptionalInputValue<MembershipAuthority, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'endpoint': ?pulumi.Input.mapOptionalInputValue<MembershipEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      authority: map['authority'] == null ? null : pulumi.Output.create<MembershipAuthority>(MembershipAuthority.fromMap((map['authority'] as Map).cast<String, dynamic>())),
      endpoint: map['endpoint'] == null ? null : pulumi.Output.create<MembershipEndpoint>(MembershipEndpoint.fromMap((map['endpoint'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      membershipId: pulumi.Output.create<String>(map['membershipId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

