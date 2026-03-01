// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_automation_runtime_environment_runtime_environment_args_doc}
/// The set of arguments for RuntimeEnvironment.
/// {@endtemplate}
/// {@macro pulumi_automation_runtime_environment_runtime_environment_args_doc}
class RuntimeEnvironmentArgs {
  /// The ID of the automation account in which the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> automationAccountId;
  /// A description of the Automation Runtime Environment.
  final pulumi.Input<String>? description;
  /// The location where the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name for the Automation Runtime Environment. Changing this forces a new Automation Runtime Environment to be created.
  final pulumi.Input<String>? name;
  /// A mapping of default packages to be installed in the Automation Runtime Environment. The default packages can only be used with PowerShell runtime environments. Removing packages will force a new Automation Runtime Environment, adding new packages will update the existing Automation Runtime Environment.
  final pulumi.Input<Map<String, String>>? runtimeDefaultPackages;
  /// The programming language used by the Automation Runtime Environment. Possible values are `Python` and `PowerShell`. Changing this forces a new Automation Runtime Environment to be created.
  final pulumi.Input<String> runtimeLanguage;
  /// The version of the runtime environment. Changing this forces a new Automation Runtime Environment to be created.
  final pulumi.Input<String> runtimeVersion;
  /// A mapping of tags which should be assigned to the Automation Runtime Environment.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [RuntimeEnvironmentArgs].
  /// [automationAccountId] The ID of the automation account in which the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  /// [description] A description of the Automation Runtime Environment.
  /// [location] The location where the Automation Runtime Environment is created. Changing this forces a new resource to be created.
  /// [name] The name for the Automation Runtime Environment. Changing this forces a new Automation Runtime Environment to be created.
  /// [runtimeDefaultPackages] A mapping of default packages to be installed in the Automation Runtime Environment. The default packages can only be used with PowerShell runtime environments. Removing packages will force a new Automation Runtime Environment, adding new packages will update the existing Automation Runtime Environment.
  /// [runtimeLanguage] The programming language used by the Automation Runtime Environment. Possible values are `Python` and `PowerShell`. Changing this forces a new Automation Runtime Environment to be created.
  /// [runtimeVersion] The version of the runtime environment. Changing this forces a new Automation Runtime Environment to be created.
  /// [tags] A mapping of tags which should be assigned to the Automation Runtime Environment.
  RuntimeEnvironmentArgs({
    required pulumi.Output<String> automationAccountId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? runtimeDefaultPackages,
    required pulumi.Output<String> runtimeLanguage,
    required pulumi.Output<String> runtimeVersion,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      automationAccountId = pulumi.Input.asInput<String>(automationAccountId),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      runtimeDefaultPackages = pulumi.Input.asOptionalInput<Map<String, String>>(runtimeDefaultPackages),
      runtimeLanguage = pulumi.Input.asInput<String>(runtimeLanguage),
      runtimeVersion = pulumi.Input.asInput<String>(runtimeVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automationAccountId': automationAccountId,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'runtimeDefaultPackages': ?runtimeDefaultPackages,
      'runtimeLanguage': runtimeLanguage,
      'runtimeVersion': runtimeVersion,
      'tags': ?tags,
    };
  }

  factory RuntimeEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return RuntimeEnvironmentArgs(
      automationAccountId: pulumi.Output.create<String>(map['automationAccountId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      runtimeDefaultPackages: map['runtimeDefaultPackages'] == null ? null : pulumi.Output.create<Map<String, String>>((map['runtimeDefaultPackages'] as Map).cast<String, String>()),
      runtimeLanguage: pulumi.Output.create<String>(map['runtimeLanguage'] as String),
      runtimeVersion: pulumi.Output.create<String>(map['runtimeVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

