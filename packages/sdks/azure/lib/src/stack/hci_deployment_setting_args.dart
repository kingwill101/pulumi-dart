// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hci_deployment_setting_scale_unit.dart';

/// {@template pulumi_stack_hci_deployment_setting_hci_deployment_setting_args_doc}
/// The set of arguments for HciDeploymentSetting.
/// {@endtemplate}
/// {@macro pulumi_stack_hci_deployment_setting_hci_deployment_setting_args_doc}
class HciDeploymentSettingArgs {
  /// Specifies a list of IDs of Azure ARC machine resource to be part of cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<String>> arcResourceIds;
  /// One or more `scale_unit` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<List<HciDeploymentSettingScaleUnit>> scaleUnits;
  /// The ID of the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> stackHciClusterId;
  /// The deployment template version. The format must be a set of numbers separated by dots such as `10.0.0.0`. Changing this forces a new Stack HCI Deployment Setting to be created.
  final pulumi.Input<String> version;

  /// Creates a new [HciDeploymentSettingArgs].
  /// [arcResourceIds] Specifies a list of IDs of Azure ARC machine resource to be part of cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [scaleUnits] One or more `scale_unit` blocks as defined below. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [stackHciClusterId] The ID of the Azure Stack HCI cluster. Changing this forces a new Stack HCI Deployment Setting to be created.
  /// [version] The deployment template version. The format must be a set of numbers separated by dots such as `10.0.0.0`. Changing this forces a new Stack HCI Deployment Setting to be created.
  HciDeploymentSettingArgs({
    required pulumi.Output<List<String>> arcResourceIds,
    required pulumi.Output<List<HciDeploymentSettingScaleUnit>> scaleUnits,
    required pulumi.Output<String> stackHciClusterId,
    required pulumi.Output<String> version,
  }) :
      arcResourceIds = pulumi.Input.asInput<List<String>>(arcResourceIds),
      scaleUnits = pulumi.Input.asInput<List<HciDeploymentSettingScaleUnit>>(scaleUnits),
      stackHciClusterId = pulumi.Input.asInput<String>(stackHciClusterId),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcResourceIds': arcResourceIds,
      'scaleUnits': pulumi.Input.mapInputValue<List<HciDeploymentSettingScaleUnit>, List<Map<String, dynamic>>>(scaleUnits, (value) => pulumi.Input.encodeList<HciDeploymentSettingScaleUnit, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackHciClusterId': stackHciClusterId,
      'version': version,
    };
  }

  factory HciDeploymentSettingArgs.fromMap(Map<String, dynamic> map) {
    return HciDeploymentSettingArgs(
      arcResourceIds: pulumi.Output.create<List<String>>((map['arcResourceIds'] as List).cast<String>()),
      scaleUnits: pulumi.Output.create<List<HciDeploymentSettingScaleUnit>>(pulumi.Input.decodeList<HciDeploymentSettingScaleUnit>(map['scaleUnits'], (value) => HciDeploymentSettingScaleUnit.fromMap((value as Map).cast<String, dynamic>()))),
      stackHciClusterId: pulumi.Output.create<String>(map['stackHciClusterId'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

