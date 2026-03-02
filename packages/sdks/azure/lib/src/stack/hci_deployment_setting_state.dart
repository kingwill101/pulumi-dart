// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_scale_unit.dart';

/// Input properties used for looking up and filtering HciDeploymentSetting resources.
class HciDeploymentSettingState {
  /// Specifies a list of IDs of Azure ARC machine resource to be part of cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<String>>? arcResourceIds;
  /// One or more `scale_unit` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnit>>? scaleUnits;
  /// The ID of the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? stackHciClusterId;
  /// The deployment template version. The format must be a set of numbers separated by dots such as `10.0.0.0`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String>? version;

  /// Creates a new [HciDeploymentSettingState].
  /// [arcResourceIds] Specifies a list of IDs of Azure ARC machine resource to be part of cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [scaleUnits] One or more `scale_unit` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [stackHciClusterId] The ID of the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [version] The deployment template version. The format must be a set of numbers separated by dots such as `10.0.0.0`. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingState({
    this.arcResourceIds,
    this.scaleUnits,
    this.stackHciClusterId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcResourceIds': ?arcResourceIds,
      'scaleUnits': ?pulumi.Input.mapOptionalInputValue<List<HciDeploymentSettingScaleUnit>, List<Map<String, dynamic>>>(scaleUnits, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackHciClusterId': ?stackHciClusterId,
      'version': ?version,
    };
  }

  factory HciDeploymentSettingState.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingState(
      arcResourceIds: map['arcResourceIds'] == null ? null : ((map['arcResourceIds'] as List).cast<String>()).input(),
      scaleUnits: map['scaleUnits'] == null ? null : (pulumi.Input.decodeList<HciDeploymentSettingScaleUnit>(map['scaleUnits'], (value) => HciDeploymentSettingScaleUnit.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stackHciClusterId: map['stackHciClusterId'] == null ? null : (map['stackHciClusterId'] as String).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

