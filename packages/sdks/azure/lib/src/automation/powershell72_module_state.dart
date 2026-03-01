// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'powershell72_module_module_link.dart';

/// Input properties used for looking up and filtering Powershell72Module resources.
class Powershell72ModuleState {
  /// The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  final pulumi.Input<String>? automationAccountId;
  /// A `module_link` block as defined below.
  final pulumi.Input<Powershell72ModuleModuleLink>? moduleLink;
  /// Specifies the name of the Module. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [Powershell72ModuleState].
  /// [automationAccountId] The ID of Automation Account to manage this Watcher. Changing this forces a new Watcher to be created.
  /// [moduleLink] A `module_link` block as defined below.
  /// [name] Specifies the name of the Module. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  Powershell72ModuleState({
    pulumi.Output<String>? automationAccountId,
    pulumi.Output<Powershell72ModuleModuleLink>? moduleLink,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountId = pulumi.Input.asOptionalInput<String>(automationAccountId),
      moduleLink = pulumi.Input.asOptionalInput<Powershell72ModuleModuleLink>(moduleLink),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      automationAccountId: map['automationAccountId'] == null ? null : pulumi.Output.create<String>(map['automationAccountId'] as String),
      moduleLink: map['moduleLink'] == null ? null : pulumi.Output.create<Powershell72ModuleModuleLink>(Powershell72ModuleModuleLink.fromMap((map['moduleLink'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

