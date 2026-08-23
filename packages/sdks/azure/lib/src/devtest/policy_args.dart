// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devtest_policy_policy_args_doc}
/// The set of arguments for Policy.
/// {@endtemplate}
/// {@macro pulumi_devtest_policy_policy_args_doc}
class PolicyArgs {
  /// A description for the Policy.
  final pulumi.Input<String>? description;
  /// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  final pulumi.Input<String> evaluatorType;
  /// The Fact Data for this Policy.
  final pulumi.Input<String>? factData;
  /// Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> labName;
  /// Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> policySetName;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Threshold for this Policy.
  final pulumi.Input<String> threshold;

  /// Creates a new [PolicyArgs].
  /// [description] A description for the Policy.
  /// [evaluatorType] The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  /// [factData] The Fact Data for this Policy.
  /// [labName] Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  /// [policySetName] Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threshold] The Threshold for this Policy.
  const PolicyArgs({
    this.description,
    required this.evaluatorType,
    this.factData,
    required this.labName,
    this.name,
    required this.policySetName,
    required this.resourceGroupName,
    this.tags,
    required this.threshold,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'evaluatorType': evaluatorType,
      'factData': ?factData,
      'labName': labName,
      'name': ?name,
      'policySetName': policySetName,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'threshold': threshold,
    };
  }

  factory PolicyArgs.fromMap(Map<String, dynamic> map) {
    return PolicyArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      evaluatorType: pulumi.Input.fromValue(map['evaluatorType'] as String),
      factData: (() { final guardedValue = map['factData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labName: pulumi.Input.fromValue(map['labName'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policySetName: pulumi.Input.fromValue(map['policySetName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      threshold: pulumi.Input.fromValue(map['threshold'] as String),
    );
  }
}
