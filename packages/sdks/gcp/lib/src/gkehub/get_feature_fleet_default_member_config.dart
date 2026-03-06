// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_feature_fleet_default_member_config_configmanagement.dart';
import 'get_feature_fleet_default_member_config_mesh.dart';
import 'get_feature_fleet_default_member_config_policycontroller.dart';

class GetFeatureFleetDefaultMemberConfig {
  /// Config Management spec
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigConfigmanagement>> configmanagements;
  /// Service Mesh spec
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigMesh>> meshes;
  /// Policy Controller spec
  final pulumi.Input<List<GetFeatureFleetDefaultMemberConfigPolicycontroller>> policycontrollers;

  /// Creates a new [GetFeatureFleetDefaultMemberConfig].
  /// [configmanagements] Config Management spec
  /// [meshes] Service Mesh spec
  /// [policycontrollers] Policy Controller spec
  const GetFeatureFleetDefaultMemberConfig({
    required this.configmanagements,
    required this.meshes,
    required this.policycontrollers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configmanagements': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigConfigmanagement>, List<Map<String, dynamic>>>(configmanagements, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigConfigmanagement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'meshes': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigMesh>, List<Map<String, dynamic>>>(meshes, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigMesh, Map<String, dynamic>>(value, (value) => value.toMap())),
      'policycontrollers': pulumi.Input.mapInputValue<List<GetFeatureFleetDefaultMemberConfigPolicycontroller>, List<Map<String, dynamic>>>(policycontrollers, (value) => pulumi.Input.encodeList<GetFeatureFleetDefaultMemberConfigPolicycontroller, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetFeatureFleetDefaultMemberConfig.fromMap(Map<String, dynamic> map) {
    return GetFeatureFleetDefaultMemberConfig(
      configmanagements: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigConfigmanagement>(map['configmanagements']!, (value) => GetFeatureFleetDefaultMemberConfigConfigmanagement.fromMap((value as Map).cast<String, dynamic>()))),
      meshes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigMesh>(map['meshes']!, (value) => GetFeatureFleetDefaultMemberConfigMesh.fromMap((value as Map).cast<String, dynamic>()))),
      policycontrollers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetFeatureFleetDefaultMemberConfigPolicycontroller>(map['policycontrollers']!, (value) => GetFeatureFleetDefaultMemberConfigPolicycontroller.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

