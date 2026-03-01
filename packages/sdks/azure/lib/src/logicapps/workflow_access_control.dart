// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_access_control_action.dart';
import 'workflow_access_control_content.dart';
import 'workflow_access_control_trigger.dart';
import 'workflow_access_control_workflow_management.dart';

class WorkflowAccessControl {
  /// A `action` block as defined below.
  final WorkflowAccessControlAction? action;
  /// A `content` block as defined below.
  final WorkflowAccessControlContent? content;
  /// A `trigger` block as defined below.
  final WorkflowAccessControlTrigger? trigger;
  /// A `workflow_management` block as defined below.
  final WorkflowAccessControlWorkflowManagement? workflowManagement;

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
      'action': ?action == null ? null : action!.toMap(),
      'content': ?content == null ? null : content!.toMap(),
      'trigger': ?trigger == null ? null : trigger!.toMap(),
      'workflowManagement': ?workflowManagement == null ? null : workflowManagement!.toMap(),
    };
  }

  factory WorkflowAccessControl.fromMap(Map<String, dynamic> map) {
    return WorkflowAccessControl(
      action: map['action'] == null ? null : WorkflowAccessControlAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      content: map['content'] == null ? null : WorkflowAccessControlContent.fromMap((map['content'] as Map).cast<String, dynamic>()),
      trigger: map['trigger'] == null ? null : WorkflowAccessControlTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
      workflowManagement: map['workflowManagement'] == null ? null : WorkflowAccessControlWorkflowManagement.fromMap((map['workflowManagement'] as Map).cast<String, dynamic>()),
    );
  }
}

