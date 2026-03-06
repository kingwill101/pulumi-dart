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
  const FeatureMembershipArgs({
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
      configmanagement: (() { final guardedValue = map['configmanagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipConfigmanagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      feature: pulumi.Input.fromValue(map['feature'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      membership: pulumi.Input.fromValue(map['membership'] as String),
      membershipLocation: (() { final guardedValue = map['membershipLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mesh: (() { final guardedValue = map['mesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policycontroller: (() { final guardedValue = map['policycontroller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureMembershipPolicycontroller.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

