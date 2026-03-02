// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hadoop_cluster_roles_edge_node_https_endpoint.dart';
import 'hadoop_cluster_roles_edge_node_install_script_action.dart';
import 'hadoop_cluster_roles_edge_node_uninstall_script_action.dart';

class HadoopClusterRolesEdgeNode {
  /// The HTTPS Connectivity Endpoint for this HDInsight Hadoop Cluster. One or more `https_endpoints` blocks as defined below.
  final pulumi.Input<List<HadoopClusterRolesEdgeNodeHttpsEndpoint>>? httpsEndpoints;
  /// A `install_script_action` block as defined below.
  final pulumi.Input<List<HadoopClusterRolesEdgeNodeInstallScriptAction>> installScriptActions;
  /// The number of instances which should be run for the Worker Nodes.
  final pulumi.Input<int> targetInstanceCount;
  /// A `uninstall_script_actions` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<HadoopClusterRolesEdgeNodeUninstallScriptAction>>? uninstallScriptActions;
  /// The Size of the Virtual Machine which should be used as the Edge Nodes. Possible values are `ExtraSmall`, `Small`, `Medium`, `Large`, `ExtraLarge`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `Standard_A1_V2`, `Standard_A2_V2`, `Standard_A2m_V2`, `Standard_A3`, `Standard_A4_V2`, `Standard_A4m_V2`, `Standard_A8_V2`, `Standard_A8m_V2`, `Standard_D1`, `Standard_D2`, `Standard_D3`, `Standard_D4`, `Standard_D11`, `Standard_D12`, `Standard_D13`, `Standard_D14`, `Standard_D1_V2`, `Standard_D2_V2`, `Standard_D3_V2`, `Standard_D4_V2`, `Standard_D5_V2`, `Standard_D11_V2`, `Standard_D12_V2`, `Standard_D13_V2`, `Standard_D14_V2`, `Standard_DS1_V2`, `Standard_DS2_V2`, `Standard_DS3_V2`, `Standard_DS4_V2`, `Standard_DS5_V2`, `Standard_DS11_V2`, `Standard_DS12_V2`, `Standard_DS13_V2`, `Standard_DS14_V2`, `Standard_E2_V3`, `Standard_E4_V3`, `Standard_E8_V3`, `Standard_E16_V3`, `Standard_E20_V3`, `Standard_E32_V3`, `Standard_E64_V3`, `Standard_E64i_V3`, `Standard_E2s_V3`, `Standard_E4s_V3`, `Standard_E8s_V3`, `Standard_E16s_V3`, `Standard_E20s_V3`, `Standard_E32s_V3`, `Standard_E64s_V3`, `Standard_E64is_V3`, `Standard_D2a_V4`, `Standard_D4a_V4`, `Standard_D8a_V4`, `Standard_D16a_V4`, `Standard_D32a_V4`, `Standard_D48a_V4`, `Standard_D64a_V4`, `Standard_D96a_V4`, `Standard_E2a_V4`, `Standard_E4a_V4`, `Standard_E8a_V4`, `Standard_E16a_V4`, `Standard_E20a_V4`, `Standard_E32a_V4`, `Standard_E48a_V4`, `Standard_E64a_V4`, `Standard_E96a_V4`, `Standard_D2ads_V5`, `Standard_D4ads_V5`, `Standard_D8ads_V5`, `Standard_D16ads_V5`, `Standard_D32ads_V5`, `Standard_D48ads_V5`, `Standard_D64ads_V5`, `Standard_D96ads_V5`, `Standard_E2ads_V5`, `Standard_E4ads_V5`, `Standard_E8ads_V5`, `Standard_E16ads_V5`, `Standard_E20ads_V5`, `Standard_E32ads_V5`, `Standard_E48ads_V5`, `Standard_E64ads_V5`, `Standard_E96ads_V5`, `Standard_G1`, `Standard_G2`, `Standard_G3`, `Standard_G4`, `Standard_G5`, `Standard_F2s_V2`, `Standard_F4s_V2`, `Standard_F8s_V2`, `Standard_F16s_V2`, `Standard_F32s_V2`, `Standard_F64s_V2`, `Standard_F72s_V2`, `Standard_GS1`, `Standard_GS2`, `Standard_GS3`, `Standard_GS4`, `Standard_GS5` and `Standard_NC24`.
  final pulumi.Input<String> vmSize;

  /// Creates a new [HadoopClusterRolesEdgeNode].
  /// [httpsEndpoints] The HTTPS Connectivity Endpoint for this HDInsight Hadoop Cluster. One or more `https_endpoints` blocks as defined below.
  /// [installScriptActions] A `install_script_action` block as defined below.
  /// [targetInstanceCount] The number of instances which should be run for the Worker Nodes.
  /// [uninstallScriptActions] A `uninstall_script_actions` block as defined below. Changing this forces a new resource to be created.
  /// [vmSize] The Size of the Virtual Machine which should be used as the Edge Nodes. Possible values are `ExtraSmall`, `Small`, `Medium`, `Large`, `ExtraLarge`, `A5`, `A6`, `A7`, `A8`, `A9`, `A10`, `A11`, `Standard_A1_V2`, `Standard_A2_V2`, `Standard_A2m_V2`, `Standard_A3`, `Standard_A4_V2`, `Standard_A4m_V2`, `Standard_A8_V2`, `Standard_A8m_V2`, `Standard_D1`, `Standard_D2`, `Standard_D3`, `Standard_D4`, `Standard_D11`, `Standard_D12`, `Standard_D13`, `Standard_D14`, `Standard_D1_V2`, `Standard_D2_V2`, `Standard_D3_V2`, `Standard_D4_V2`, `Standard_D5_V2`, `Standard_D11_V2`, `Standard_D12_V2`, `Standard_D13_V2`, `Standard_D14_V2`, `Standard_DS1_V2`, `Standard_DS2_V2`, `Standard_DS3_V2`, `Standard_DS4_V2`, `Standard_DS5_V2`, `Standard_DS11_V2`, `Standard_DS12_V2`, `Standard_DS13_V2`, `Standard_DS14_V2`, `Standard_E2_V3`, `Standard_E4_V3`, `Standard_E8_V3`, `Standard_E16_V3`, `Standard_E20_V3`, `Standard_E32_V3`, `Standard_E64_V3`, `Standard_E64i_V3`, `Standard_E2s_V3`, `Standard_E4s_V3`, `Standard_E8s_V3`, `Standard_E16s_V3`, `Standard_E20s_V3`, `Standard_E32s_V3`, `Standard_E64s_V3`, `Standard_E64is_V3`, `Standard_D2a_V4`, `Standard_D4a_V4`, `Standard_D8a_V4`, `Standard_D16a_V4`, `Standard_D32a_V4`, `Standard_D48a_V4`, `Standard_D64a_V4`, `Standard_D96a_V4`, `Standard_E2a_V4`, `Standard_E4a_V4`, `Standard_E8a_V4`, `Standard_E16a_V4`, `Standard_E20a_V4`, `Standard_E32a_V4`, `Standard_E48a_V4`, `Standard_E64a_V4`, `Standard_E96a_V4`, `Standard_D2ads_V5`, `Standard_D4ads_V5`, `Standard_D8ads_V5`, `Standard_D16ads_V5`, `Standard_D32ads_V5`, `Standard_D48ads_V5`, `Standard_D64ads_V5`, `Standard_D96ads_V5`, `Standard_E2ads_V5`, `Standard_E4ads_V5`, `Standard_E8ads_V5`, `Standard_E16ads_V5`, `Standard_E20ads_V5`, `Standard_E32ads_V5`, `Standard_E48ads_V5`, `Standard_E64ads_V5`, `Standard_E96ads_V5`, `Standard_G1`, `Standard_G2`, `Standard_G3`, `Standard_G4`, `Standard_G5`, `Standard_F2s_V2`, `Standard_F4s_V2`, `Standard_F8s_V2`, `Standard_F16s_V2`, `Standard_F32s_V2`, `Standard_F64s_V2`, `Standard_F72s_V2`, `Standard_GS1`, `Standard_GS2`, `Standard_GS3`, `Standard_GS4`, `Standard_GS5` and `Standard_NC24`.
  HadoopClusterRolesEdgeNode({
    this.httpsEndpoints,
    required this.installScriptActions,
    required this.targetInstanceCount,
    this.uninstallScriptActions,
    required this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsEndpoints': ?pulumi.Input.mapOptionalInputValue<List<HadoopClusterRolesEdgeNodeHttpsEndpoint>, List<Map<String, dynamic>>>(httpsEndpoints, (value) => pulumi.Input.encodeList<HadoopClusterRolesEdgeNodeHttpsEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'installScriptActions': pulumi.Input.mapInputValue<List<HadoopClusterRolesEdgeNodeInstallScriptAction>, List<Map<String, dynamic>>>(installScriptActions, (value) => pulumi.Input.encodeList<HadoopClusterRolesEdgeNodeInstallScriptAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'targetInstanceCount': targetInstanceCount,
      'uninstallScriptActions': ?pulumi.Input.mapOptionalInputValue<List<HadoopClusterRolesEdgeNodeUninstallScriptAction>, List<Map<String, dynamic>>>(uninstallScriptActions, (value) => pulumi.Input.encodeList<HadoopClusterRolesEdgeNodeUninstallScriptAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'vmSize': vmSize,
    };
  }

  factory HadoopClusterRolesEdgeNode.fromMap(Map<String, dynamic> map) {
    return HadoopClusterRolesEdgeNode(
      httpsEndpoints: map['httpsEndpoints'] == null ? null : (pulumi.Input.decodeList<HadoopClusterRolesEdgeNodeHttpsEndpoint>(map['httpsEndpoints']!, (value) => HadoopClusterRolesEdgeNodeHttpsEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      installScriptActions: (pulumi.Input.decodeList<HadoopClusterRolesEdgeNodeInstallScriptAction>(map['installScriptActions'], (value) => HadoopClusterRolesEdgeNodeInstallScriptAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      targetInstanceCount: (map['targetInstanceCount'] as int).input(),
      uninstallScriptActions: map['uninstallScriptActions'] == null ? null : (pulumi.Input.decodeList<HadoopClusterRolesEdgeNodeUninstallScriptAction>(map['uninstallScriptActions']!, (value) => HadoopClusterRolesEdgeNodeUninstallScriptAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      vmSize: (map['vmSize'] as String).input(),
    );
  }
}

