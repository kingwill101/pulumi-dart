// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_log_alert_action.dart';
import 'activity_log_alert_criteria.dart';

/// Input properties used for looking up and filtering ActivityLogAlert resources.
class ActivityLogAlertState {
  /// One or more `action` blocks as defined below.
  final pulumi.Input<List<ActivityLogAlertAction>>? actions;
  /// A `criteria` block as defined below.
  final pulumi.Input<ActivityLogAlertCriteria>? criteria;
  /// The description of this activity log alert.
  final pulumi.Input<String>? description;
  /// Should this Activity Log Alert be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Azure Region where the activity log alert rule should exist. Possible values are `global`, `westeurope`, `northeurope`, and `eastus2euap`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the activity log alert. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account).
  final pulumi.Input<List<String>>? scopes;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActivityLogAlertState].
  /// [actions] One or more `action` blocks as defined below.
  /// [criteria] A `criteria` block as defined below.
  /// [description] The description of this activity log alert.
  /// [enabled] Should this Activity Log Alert be enabled? Defaults to `true`.
  /// [location] The Azure Region where the activity log alert rule should exist. Possible values are `global`, `westeurope`, `northeurope`, and `eastus2euap`. Changing this forces a new resource to be created.
  /// [name] The name of the activity log alert. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created.
  /// [scopes] The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account).
  /// [tags] A mapping of tags to assign to the resource.
  ActivityLogAlertState({
    pulumi.Output<List<ActivityLogAlertAction>>? actions,
    pulumi.Output<ActivityLogAlertCriteria>? criteria,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<String>>? scopes,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      actions = pulumi.Input.asOptionalInput<List<ActivityLogAlertAction>>(actions),
      criteria = pulumi.Input.asOptionalInput<ActivityLogAlertCriteria>(criteria),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ActivityLogAlertAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ActivityLogAlertAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criteria': ?pulumi.Input.mapOptionalInputValue<ActivityLogAlertCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopes': ?scopes,
      'tags': ?tags,
    };
  }

  factory ActivityLogAlertState.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertState(
      actions: map['actions'] == null ? null : pulumi.Output.create<List<ActivityLogAlertAction>>(pulumi.Input.decodeList<ActivityLogAlertAction>(map['actions'], (value) => ActivityLogAlertAction.fromMap((value as Map).cast<String, dynamic>()))),
      criteria: map['criteria'] == null ? null : pulumi.Output.create<ActivityLogAlertCriteria>(ActivityLogAlertCriteria.fromMap((map['criteria'] as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

