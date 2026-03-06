// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_log_alert_action.dart';
import 'activity_log_alert_criteria.dart';

/// {@template pulumi_monitoring_activity_log_alert_activity_log_alert_args_doc}
/// The set of arguments for ActivityLogAlert.
/// {@endtemplate}
/// {@macro pulumi_monitoring_activity_log_alert_activity_log_alert_args_doc}
class ActivityLogAlertArgs {
  /// One or more `action` blocks as defined below.
  final pulumi.Input<List<ActivityLogAlertAction>>? actions;
  /// A `criteria` block as defined below.
  final pulumi.Input<ActivityLogAlertCriteria> criteria;
  /// The description of this activity log alert.
  final pulumi.Input<String>? description;
  /// Should this Activity Log Alert be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;
  /// The Azure Region where the activity log alert rule should exist. Possible values are `global`, `westeurope`, `northeurope`, and `eastus2euap`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the activity log alert. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account).
  final pulumi.Input<List<String>> scopes;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ActivityLogAlertArgs].
  /// [actions] One or more `action` blocks as defined below.
  /// [criteria] A `criteria` block as defined below.
  /// [description] The description of this activity log alert.
  /// [enabled] Should this Activity Log Alert be enabled? Defaults to `true`.
  /// [location] The Azure Region where the activity log alert rule should exist. Possible values are `global`, `westeurope`, `northeurope`, and `eastus2euap`. Changing this forces a new resource to be created.
  /// [name] The name of the activity log alert. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the activity log alert instance. Changing this forces a new resource to be created.
  /// [scopes] The Scope at which the Activity Log should be applied. A list of strings which could be a resource group , or a subscription, or a resource ID (such as a Storage Account).
  /// [tags] A mapping of tags to assign to the resource.
  const ActivityLogAlertArgs({
    this.actions,
    required this.criteria,
    this.description,
    this.enabled,
    this.location,
    this.name,
    required this.resourceGroupName,
    required this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<ActivityLogAlertAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<ActivityLogAlertAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criteria': pulumi.Input.mapInputValue<ActivityLogAlertCriteria, Map<String, dynamic>>(criteria, (value) => value.toMap()),
      'description': ?description,
      'enabled': ?enabled,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'scopes': scopes,
      'tags': ?tags,
    };
  }

  factory ActivityLogAlertArgs.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertArgs(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityLogAlertAction>(guardedValue, (value) => ActivityLogAlertAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      criteria: pulumi.Input.fromValue(ActivityLogAlertCriteria.fromMap((map['criteria']! as Map).cast<String, dynamic>())),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

