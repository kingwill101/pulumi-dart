// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'module_module_link.dart';

/// {@template pulumi_automation_module_module_args_doc}
/// The set of arguments for Module.
/// {@endtemplate}
/// {@macro pulumi_automation_module_module_args_doc}
class ModuleArgs {
  /// The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountName;
  /// A `moduleLink` block as defined below.
  final pulumi.Input<ModuleModuleLink> moduleLink;
  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ModuleArgs].
  /// [automationAccountName] The name of the automation account in which the Module is created. Changing this forces a new resource to be created.
  /// [moduleLink] A `moduleLink` block as defined below.
  /// [name] Specifies the name of the Module. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which the Module is created. Changing this forces a new resource to be created.
  const ModuleArgs({
    required this.automationAccountName,
    required this.moduleLink,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountName': automationAccountName,
      'moduleLink': pulumi.Input.mapInputValue<ModuleModuleLink, Map<String, dynamic>>(moduleLink, (value) => value.toMap()),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ModuleArgs.fromMap(Map<String, dynamic> map) {
    return ModuleArgs(
      automationAccountName: pulumi.Input.fromValue(map['automationAccountName'] as String),
      moduleLink: pulumi.Input.fromValue(ModuleModuleLink.fromMap((map['moduleLink']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
