// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_action_event_hub.dart';
import 'automation_scope.dart';
import 'automation_source.dart';

/// {@template pulumi_security_automation_args_doc}
/// The set of arguments for Automation.
/// {@endtemplate}
/// {@macro pulumi_security_automation_args_doc}
class AutomationArgs {
  /// A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  final pulumi.Input<List<AutomationActionEventHub>>? actions;
  /// The security automation name.
  final pulumi.Input<String>? automationName;
  /// The security automation description.
  final pulumi.Input<String>? description;
  /// Indicates whether the security automation is enabled.
  final pulumi.Input<bool>? isEnabled;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  /// Location where the resource is stored
  final pulumi.Input<String>? location;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  final pulumi.Input<List<AutomationScope>>? scopes;
  /// A collection of the source event types which evaluate the security automation set of rules.
  final pulumi.Input<List<AutomationSource>>? sources;
  /// A list of key value pairs that describe the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AutomationArgs].
  /// [actions] A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  /// [automationName] The security automation name.
  /// [description] The security automation description.
  /// [isEnabled] Indicates whether the security automation is enabled.
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [scopes] A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  /// [sources] A collection of the source event types which evaluate the security automation set of rules.
  /// [tags] A list of key value pairs that describe the resource.
  AutomationArgs({
    pulumi.Output<List<AutomationActionEventHub>>? actions,
    pulumi.Output<String>? automationName,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? isEnabled,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<List<AutomationScope>>? scopes,
    pulumi.Output<List<AutomationSource>>? sources,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actions = pulumi.Input.asOptionalInput<List<AutomationActionEventHub>>(actions),
      automationName = pulumi.Input.asOptionalInput<String>(automationName),
      description = pulumi.Input.asOptionalInput<String>(description),
      isEnabled = pulumi.Input.asOptionalInput<bool>(isEnabled),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scopes = pulumi.Input.asOptionalInput<List<AutomationScope>>(scopes),
      sources = pulumi.Input.asOptionalInput<List<AutomationSource>>(sources),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<AutomationActionEventHub>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<AutomationActionEventHub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'automationName': ?automationName,
      'description': ?description,
      'isEnabled': ?isEnabled,
      'kind': ?kind,
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'scopes': ?pulumi.Input.mapOptionalInputValue<List<AutomationScope>, List<Map<String, dynamic>>>(scopes, (value) => pulumi.Input.encodeList<AutomationScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sources': ?pulumi.Input.mapOptionalInputValue<List<AutomationSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<AutomationSource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AutomationArgs.fromMap(Map<String, dynamic> map) {
    return AutomationArgs(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<AutomationActionEventHub>>(pulumi.Input.decodeList<AutomationActionEventHub>(map['actions'], (value) => AutomationActionEventHub.fromMap((value as Map).cast<String, dynamic>()))),
      automationName: map['automationName'] == null ? null : pulumi.Output.create<String>(map['automationName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      isEnabled: map['isEnabled'] == null ? null : pulumi.Output.create<bool>(map['isEnabled'] as bool),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<AutomationScope>>(pulumi.Input.decodeList<AutomationScope>(map['scopes'], (value) => AutomationScope.fromMap((value as Map).cast<String, dynamic>()))),
      sources: map['sources'] == null ? null : pulumi.Output.create<List<AutomationSource>>(pulumi.Input.decodeList<AutomationSource>(map['sources'], (value) => AutomationSource.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

