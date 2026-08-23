// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RuntimeEnvironment resources.
class RuntimeEnvironmentState {
  /// The ID of the automation account in which the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? automationAccountId;
  /// A description of the Automation Runtime Environment.
  final pulumi.Input<String>? description;
  /// The location where the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name for the Automation Runtime Environment. Changing this forces a new Automation Runtime Environment to be created.
  final pulumi.Input<String>? name;
  /// A mapping of default packages to be installed in the Automation Runtime Environment. The default packages can only be used with PowerShell runtime environments. Removing packages will force a new Automation Runtime Environment, adding new packages will update the existing Automation Runtime Environment.
  final pulumi.Input<Map<String, String>>? runtimeDefaultPackages;
  /// The programming language used by the Automation Runtime Environment. Possible values are `Python` and `PowerShell`. Changing this forces a new Automation Runtime Environment to be created.
  final pulumi.Input<String>? runtimeLanguage;
  /// The version of the runtime environment. Changing this forces a new Automation Runtime Environment to be created.
  final pulumi.Input<String>? runtimeVersion;
  /// A mapping of tags which should be assigned to the Automation Runtime Environment.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuntimeEnvironmentState].
  /// [automationAccountId] The ID of the automation account in which the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  /// [description] A description of the Automation Runtime Environment.
  /// [location] The location where the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  /// [name] The name for the Automation Runtime Environment. Changing this forces a new Automation Runtime Environment to be created.
  /// [runtimeDefaultPackages] A mapping of default packages to be installed in the Automation Runtime Environment. The default packages can only be used with PowerShell runtime environments. Removing packages will force a new Automation Runtime Environment, adding new packages will update the existing Automation Runtime Environment.
  /// [runtimeLanguage] The programming language used by the Automation Runtime Environment. Possible values are `Python` and `PowerShell`. Changing this forces a new Automation Runtime Environment to be created.
  /// [runtimeVersion] The version of the runtime environment. Changing this forces a new Automation Runtime Environment to be created.
  /// [tags] A mapping of tags which should be assigned to the Automation Runtime Environment.
  const RuntimeEnvironmentState({
    this.automationAccountId,
    this.description,
    this.location,
    this.name,
    this.runtimeDefaultPackages,
    this.runtimeLanguage,
    this.runtimeVersion,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': ?automationAccountId,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'runtimeDefaultPackages': ?runtimeDefaultPackages,
      'runtimeLanguage': ?runtimeLanguage,
      'runtimeVersion': ?runtimeVersion,
      'tags': ?tags,
    };
  }

  factory RuntimeEnvironmentState.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironmentState(
      automationAccountId: (() { final guardedValue = map['automationAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeDefaultPackages: (() { final guardedValue = map['runtimeDefaultPackages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      runtimeLanguage: (() { final guardedValue = map['runtimeLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeVersion: (() { final guardedValue = map['runtimeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
