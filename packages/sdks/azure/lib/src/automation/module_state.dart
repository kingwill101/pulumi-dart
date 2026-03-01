// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_module_link.dart';

/// Input properties used for looking up and filtering Module resources.
class ModuleState {
  /// The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountName;
  /// A `module_link` block as defined below.
  final pulumi.Input<ModuleModuleLink>? moduleLink;
  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [ModuleState].
  /// [automationAccountName] The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  /// [moduleLink] A `module_link` block as defined below.
  /// [name] Specifies the name of the Module. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  ModuleState({
    pulumi.Output<String>? automationAccountName,
    pulumi.Output<ModuleModuleLink>? moduleLink,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      automationAccountName = pulumi.Input.asOptionalInput<String>(automationAccountName),
      moduleLink = pulumi.Input.asOptionalInput<ModuleModuleLink>(moduleLink),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': ?automationAccountName,
      'moduleLink': ?pulumi.Input.mapOptionalInputValue<ModuleModuleLink, Map<String, dynamic>>(moduleLink, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory ModuleState.fromMap(Map<String, dynamic> map) {
    return ModuleState(
      automationAccountName: map['automationAccountName'] == null ? null : pulumi.Output.create<String>(map['automationAccountName'] as String),
      moduleLink: map['moduleLink'] == null ? null : pulumi.Output.create<ModuleModuleLink>(ModuleModuleLink.fromMap((map['moduleLink'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

