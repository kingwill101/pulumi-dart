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
  final pulumi.Input<MembershipAuthority?>? authority;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// Structure is documented below.
  final pulumi.Input<MembershipEndpoint?>? endpoint;
  /// Labels to apply to this membership.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Location of the membership.
  /// The default value is `global`.
  final pulumi.Input<String?>? location;
  /// The client-provided identifier of the membership.
  final pulumi.Input<String> membershipId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [MembershipArgs].
  /// [authority] Authority encodes how Google will recognize identities from this Membership.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [endpoint] If this Membership is a Kubernetes API server hosted on GKE, this is a self link to its GCP resource.
  /// [labels] Labels to apply to this membership.
  /// [location] Location of the membership.
  /// [membershipId] The client-provided identifier of the membership.
  /// [project] The ID of the project in which the resource belongs.
  const MembershipArgs({
    this.authority,
    this.deletionPolicy,
    this.endpoint,
    this.labels,
    this.location,
    required this.membershipId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authority': ?pulumi.Input.mapOptionalInputValue<MembershipAuthority, Map<String, dynamic>>(authority, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'endpoint': ?pulumi.Input.mapOptionalInputValue<MembershipEndpoint, Map<String, dynamic>>(endpoint, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'membershipId': membershipId,
      'project': ?project,
    };
  }

  factory MembershipArgs.fromMap(Map<String, dynamic> map) {
    return MembershipArgs(
      authority: (() { final guardedValue = map['authority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipAuthority.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      membershipId: pulumi.Input.fromValue(map['membershipId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
