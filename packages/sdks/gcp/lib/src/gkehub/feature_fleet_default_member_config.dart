// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_fleet_default_member_config_configmanagement.dart';
import 'feature_fleet_default_member_config_mesh.dart';
import 'feature_fleet_default_member_config_policycontroller.dart';

class FeatureFleetDefaultMemberConfig {
  /// Config Management spec
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigConfigmanagement>? configmanagement;
  /// Service Mesh spec
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigMesh>? mesh;
  /// Policy Controller spec
  /// Structure is documented below.
  final pulumi.Input<FeatureFleetDefaultMemberConfigPolicycontroller>? policycontroller;

  /// Creates a new [FeatureFleetDefaultMemberConfig].
  /// [configmanagement] Config Management spec
  /// [mesh] Service Mesh spec
  /// [policycontroller] Policy Controller spec
  const FeatureFleetDefaultMemberConfig({
    this.configmanagement,
    this.mesh,
    this.policycontroller,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagement': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigConfigmanagement, Map<String, dynamic>>(configmanagement, (value) => value.toMap()),
      'mesh': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigMesh, Map<String, dynamic>>(mesh, (value) => value.toMap()),
      'policycontroller': ?pulumi.Input.mapOptionalInputValue<FeatureFleetDefaultMemberConfigPolicycontroller, Map<String, dynamic>>(policycontroller, (value) => value.toMap()),
    };
  }

  factory FeatureFleetDefaultMemberConfig.fromMap(Map<String, dynamic> map) {
    return FeatureFleetDefaultMemberConfig(
      configmanagement: (() { final guardedValue = map['configmanagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureFleetDefaultMemberConfigConfigmanagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mesh: (() { final guardedValue = map['mesh']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureFleetDefaultMemberConfigMesh.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policycontroller: (() { final guardedValue = map['policycontroller']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureFleetDefaultMemberConfigPolicycontroller.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
