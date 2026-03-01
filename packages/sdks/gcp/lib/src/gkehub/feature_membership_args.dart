// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_membership_configmanagement.dart';
import 'feature_membership_mesh.dart';
import 'feature_membership_policycontroller.dart';

/// {@template pulumi_gkehub_feature_membership_feature_membership_args_doc}
/// The set of arguments for FeatureMembership.
/// {@endtemplate}
/// {@macro pulumi_gkehub_feature_membership_feature_membership_args_doc}
class FeatureMembershipArgs {
  /// Config Management-specific spec. Structure is documented below.
  final pulumi.Input<FeatureMembershipConfigmanagement>? configmanagement;
  /// The name of the feature
  final pulumi.Input<String> feature;
  /// The location of the feature
  final pulumi.Input<String> location;
  /// The name of the membership
  final pulumi.Input<String> membership;
  /// The location of the membership, for example, "us-central1". Default is "global".
  final pulumi.Input<String>? membershipLocation;
  /// Service mesh specific spec. Structure is documented below.
  final pulumi.Input<FeatureMembershipMesh>? mesh;
  /// Policy Controller-specific spec. Structure is documented below.
  final pulumi.Input<FeatureMembershipPolicycontroller>? policycontroller;
  /// The project of the feature
  final pulumi.Input<String>? project;

  /// Creates a new [FeatureMembershipArgs].
  /// [configmanagement] Config Management-specific spec. Structure is documented below.
  /// [feature] The name of the feature
  /// [location] The location of the feature
  /// [membership] The name of the membership
  /// [membershipLocation] The location of the membership, for example, "us-central1". Default is "global".
  /// [mesh] Service mesh specific spec. Structure is documented below.
  /// [policycontroller] Policy Controller-specific spec. Structure is documented below.
  /// [project] The project of the feature
  FeatureMembershipArgs({
    pulumi.Output<FeatureMembershipConfigmanagement>? configmanagement,
    required pulumi.Output<String> feature,
    required pulumi.Output<String> location,
    required pulumi.Output<String> membership,
    pulumi.Output<String>? membershipLocation,
    pulumi.Output<FeatureMembershipMesh>? mesh,
    pulumi.Output<FeatureMembershipPolicycontroller>? policycontroller,
    pulumi.Output<String>? project,
  }) :
      configmanagement = pulumi.Input.asOptionalInput<FeatureMembershipConfigmanagement>(configmanagement),
      feature = pulumi.Input.asInput<String>(feature),
      location = pulumi.Input.asInput<String>(location),
      membership = pulumi.Input.asInput<String>(membership),
      membershipLocation = pulumi.Input.asOptionalInput<String>(membershipLocation),
      mesh = pulumi.Input.asOptionalInput<FeatureMembershipMesh>(mesh),
      policycontroller = pulumi.Input.asOptionalInput<FeatureMembershipPolicycontroller>(policycontroller),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipConfigmanagement, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'feature': feature,
      'location': location,
      'membership': membership,
      'membershipLocation': ?membershipLocation,
      'mesh': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipMesh, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': ?pulumi.Input.mapOptionalInputValue<FeatureMembershipPolicycontroller, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory FeatureMembershipArgs.fromMap(Map<String, dynamic> map) {
    return FeatureMembershipArgs(
      configmanagement: map['configmanagement'] == null ? null : pulumi.Output.create<FeatureMembershipConfigmanagement>(FeatureMembershipConfigmanagement.fromMap((map['configmanagement'] as Map).cast<String, dynamic>())),
      feature: pulumi.Output.create<String>(map['feature'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      membership: pulumi.Output.create<String>(map['membership'] as String),
      membershipLocation: map['membershipLocation'] == null ? null : pulumi.Output.create<String>(map['membershipLocation'] as String),
      mesh: map['mesh'] == null ? null : pulumi.Output.create<FeatureMembershipMesh>(FeatureMembershipMesh.fromMap((map['mesh'] as Map).cast<String, dynamic>())),
      policycontroller: map['policycontroller'] == null ? null : pulumi.Output.create<FeatureMembershipPolicycontroller>(FeatureMembershipPolicycontroller.fromMap((map['policycontroller'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

