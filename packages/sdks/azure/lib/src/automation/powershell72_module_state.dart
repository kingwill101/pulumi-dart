// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'powershell72_module_module_link.dart';

/// Input properties used for looking up and filtering Powershell72Module resources.
class Powershell72ModuleState {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  final pulumi.Input<String>? automationAccountId;
  /// A `moduleLink` block as defined below.
  final pulumi.Input<Powershell72ModuleModuleLink>? moduleLink;
  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Powershell72ModuleState].
  /// [automationAccountId] The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  /// [moduleLink] A `moduleLink` block as defined below.
  /// [name] Specifies the name of the Module. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  const Powershell72ModuleState({
    this.automationAccountId,
    this.moduleLink,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': ?automationAccountId,
      'moduleLink': ?pulumi.Input.mapOptionalInputValue<Powershell72ModuleModuleLink, Map<String, dynamic>>(moduleLink, (value) => value.toMap()),
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory Powershell72ModuleState.fromMap(Map<String, dynamic> map) {
    return Powershell72ModuleState(
      automationAccountId: (() { final guardedValue = map['automationAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moduleLink: (() { final guardedValue = map['moduleLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Powershell72ModuleModuleLink.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
