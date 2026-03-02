// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'powershell72_module_module_link.dart';

/// {@template pulumi_automation_powershell72_module_powershell72_module_args_doc}
/// The set of arguments for Powershell72Module.
/// {@endtemplate}
/// {@macro pulumi_automation_powershell72_module_powershell72_module_args_doc}
class Powershell72ModuleArgs {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  final pulumi.Input<String> automationAccountId;
  /// A `module_link` block as defined below.
  final pulumi.Input<Powershell72ModuleModuleLink> moduleLink;
  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Powershell72ModuleArgs].
  /// [automationAccountId] The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  /// [moduleLink] A `module_link` block as defined below.
  /// [name] Specifies the name of the Module. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  Powershell72ModuleArgs({
    required this.automationAccountId,
    required this.moduleLink,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'moduleLink': pulumi.Input.mapInputValue<Powershell72ModuleModuleLink, Map<String, dynamic>>(moduleLink, (value) => value.toMap()),
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory Powershell72ModuleArgs.fromMap(Map<String, dynamic> map) {
    return Powershell72ModuleArgs(
      automationAccountId: (map['automationAccountId'] as String).input(),
      moduleLink: (Powershell72ModuleModuleLink.fromMap((map['moduleLink'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

