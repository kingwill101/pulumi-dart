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
    this.configmanagement,
    required this.feature,
    required this.location,
    required this.membership,
    this.membershipLocation,
    this.mesh,
    this.policycontroller,
    this.project,
  });

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
      configmanagement: map['configmanagement'] == null ? null : (FeatureMembershipConfigmanagement.fromMap((map['configmanagement']! as Map).cast<String, dynamic>())).input(),
      feature: (map['feature'] as String).input(),
      location: (map['location'] as String).input(),
      membership: (map['membership'] as String).input(),
      membershipLocation: map['membershipLocation'] == null ? null : (map['membershipLocation']! as String).input(),
      mesh: map['mesh'] == null ? null : (FeatureMembershipMesh.fromMap((map['mesh']! as Map).cast<String, dynamic>())).input(),
      policycontroller: map['policycontroller'] == null ? null : (FeatureMembershipPolicycontroller.fromMap((map['policycontroller']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

