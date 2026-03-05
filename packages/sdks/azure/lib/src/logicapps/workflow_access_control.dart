// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_access_control_action.dart';
import 'workflow_access_control_content.dart';
import 'workflow_access_control_trigger.dart';
import 'workflow_access_control_workflow_management.dart';

class WorkflowAccessControl {
  /// A `action` block as defined below.
  final pulumi.Input<WorkflowAccessControlAction>? action;
  /// A `content` block as defined below.
  final pulumi.Input<WorkflowAccessControlContent>? content;
  /// A `trigger` block as defined below.
  final pulumi.Input<WorkflowAccessControlTrigger>? trigger;
  /// A `workflow_management` block as defined below.
  final pulumi.Input<WorkflowAccessControlWorkflowManagement>? workflowManagement;

  /// Creates a new [WorkflowAccessControl].
  /// [action] A `action` block as defined below.
  /// [content] A `content` block as defined below.
  /// [trigger] A `trigger` block as defined below.
  /// [workflowManagement] A `workflow_management` block as defined below.
  WorkflowAccessControl({
    this.action,
    this.content,
    this.trigger,
    this.workflowManagement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?pulumi.Input.mapOptionalInputValue<WorkflowAccessControlAction, Map<String, dynamic>>(action, (value) => value.toMap()),
      'content': ?pulumi.Input.mapOptionalInputValue<WorkflowAccessControlContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'trigger': ?pulumi.Input.mapOptionalInputValue<WorkflowAccessControlTrigger, Map<String, dynamic>>(trigger, (value) => value.toMap()),
      'workflowManagement': ?pulumi.Input.mapOptionalInputValue<WorkflowAccessControlWorkflowManagement, Map<String, dynamic>>(workflowManagement, (value) => value.toMap()),
    };
  }

  factory WorkflowAccessControl.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControl(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowAccessControlAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowAccessControlContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trigger: (() { final guardedValue = map['trigger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowAccessControlTrigger.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      workflowManagement: (() { final guardedValue = map['workflowManagement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkflowAccessControlWorkflowManagement.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

