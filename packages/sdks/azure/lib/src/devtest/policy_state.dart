// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Policy resources.
class PolicyState {
  /// A description for the Policy.
  final pulumi.Input<String>? description;
  /// The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  final pulumi.Input<String>? evaluatorType;
  /// The Fact Data for this Policy.
  final pulumi.Input<String>? factData;
  /// Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? labName;
  /// Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? policySetName;
  /// The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// The Threshold for this Policy.
  final pulumi.Input<String>? threshold;

  /// Creates a new [PolicyState].
  /// [description] A description for the Policy.
  /// [evaluatorType] The Evaluation Type used for this Policy. Possible values include: 'AllowedValuesPolicy', 'MaxValuePolicy'. Changing this forces a new resource to be created.
  /// [factData] The Fact Data for this Policy.
  /// [labName] Specifies the name of the Dev Test Lab in which the Policy should be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Dev Test Policy. Possible values are `GalleryImage`, `LabPremiumVmCount`, `LabTargetCost`, `LabVmCount`, `LabVmSize`, `UserOwnedLabPremiumVmCount`, `UserOwnedLabVmCount` and `UserOwnedLabVmCountInSubnet`. Changing this forces a new resource to be created.
  /// [policySetName] Specifies the name of the Policy Set within the Dev Test Lab where this policy should be created. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Dev Test Lab resource exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  /// [threshold] The Threshold for this Policy.
  PolicyState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? evaluatorType,
    pulumi.Output<String>? factData,
    pulumi.Output<String>? labName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? policySetName,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? threshold,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      evaluatorType = pulumi.Input.asOptionalInput<String>(evaluatorType),
      factData = pulumi.Input.asOptionalInput<String>(factData),
      labName = pulumi.Input.asOptionalInput<String>(labName),
      name = pulumi.Input.asOptionalInput<String>(name),
      policySetName = pulumi.Input.asOptionalInput<String>(policySetName),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      threshold = pulumi.Input.asOptionalInput<String>(threshold);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'evaluatorType': ?evaluatorType,
      'factData': ?factData,
      'labName': ?labName,
      'name': ?name,
      'policySetName': ?policySetName,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'threshold': ?threshold,
    };
  }

  factory PolicyState.fromMap(Map<String, dynamic> map) {
    return PolicyState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      evaluatorType: map['evaluatorType'] == null ? null : pulumi.Output.create<String>(map['evaluatorType'] as String),
      factData: map['factData'] == null ? null : pulumi.Output.create<String>(map['factData'] as String),
      labName: map['labName'] == null ? null : pulumi.Output.create<String>(map['labName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      policySetName: map['policySetName'] == null ? null : pulumi.Output.create<String>(map['policySetName'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      threshold: map['threshold'] == null ? null : pulumi.Output.create<String>(map['threshold'] as String),
    );
  }
}

