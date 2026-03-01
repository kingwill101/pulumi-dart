// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_action.dart';
import 'automation_source.dart';

/// {@template pulumi_securitycenter_automation_automation_args_doc}
/// The set of arguments for Automation.
/// {@endtemplate}
/// {@macro pulumi_securitycenter_automation_automation_args_doc}
class AutomationArgs {
  /// One or more `action` blocks as defined below. An `action` tells this automation where the data is to be sent to upon being evaluated by the rules in the `source`.
  final pulumi.Input<List<AutomationAction>> actions;
  /// Specifies the description for the Security Center Automation.
  final pulumi.Input<String>? description;
  /// Boolean to enable or disable this Security Center Automation. Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created.
  ///
  /// > **Note:** For the automation to appear in Azure Portal correctly under Microsoft Defender for Cloud > Environment Settings > Account > Continuous Export, either `ExportToWorkspace` or `ExportToEventHub` must be used.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format `/subscriptions/00000000-0000-0000-0000-000000000000`) or a resource group under that subscription (in the format `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example`). The automation will only apply on defined scopes.
  final pulumi.Input<List<String>> scopes;
  /// One or more `source` blocks as defined below. A `source` defines what data types will be processed and a set of rules to filter that data.
  final pulumi.Input<List<AutomationSource>> sources;
  /// A mapping of tags assigned to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AutomationArgs].
  /// [actions] One or more `action` blocks as defined below. An `action` tells this automation where the data is to be sent to upon being evaluated by the rules in the `source`.
  /// [description] Specifies the description for the Security Center Automation.
  /// [enabled] Boolean to enable or disable this Security Center Automation. Defaults to `true`.
  /// [location] The Azure Region where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created.
  /// [name] The name which should be used for this Security Center Automation. Changing this forces a new Security Center Automation to be created.
  /// [resourceGroupName] The name of the Resource Group where the Security Center Automation should exist. Changing this forces a new Security Center Automation to be created.
  /// [scopes] A list of scopes on which the automation logic is applied, at least one is required. Supported scopes are a subscription (in this format `/subscriptions/00000000-0000-0000-0000-000000000000`) or a resource group under that subscription (in the format `/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example`). The automation will only apply on defined scopes.
  /// [sources] One or more `source` blocks as defined below. A `source` defines what data types will be processed and a set of rules to filter that data.
  /// [tags] A mapping of tags assigned to the resource.
  AutomationArgs({
    required pulumi.Output<List<AutomationAction>> actions,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<List<String>> scopes,
    required pulumi.Output<List<AutomationSource>> sources,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actions = pulumi.Input.asInput<List<AutomationAction>>(actions),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopes = pulumi.Input.asInput<List<String>>(scopes),
      sources = pulumi.Input.asInput<List<AutomationSource>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': pulumi.Input.mapInputValue<List<AutomationAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AutomationAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopes': scopes,
      'sources': pulumi.Input.mapInputValue<List<AutomationSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AutomationSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AutomationArgs.fromMap(Map<String, dynamic> map) {
    return AutomationArgs(
      actions: pulumi.Output.create<List<AutomationAction>>(pulumi.Input.decodeList<AutomationAction>(map['actions'], (value) => AutomationAction.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopes: pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      sources: pulumi.Output.create<List<AutomationSource>>(pulumi.Input.decodeList<AutomationSource>(map['sources'], (value) => AutomationSource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

