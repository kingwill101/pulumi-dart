// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_component_item.dart';
import 'assignment_properties_additional_data.dart';
import 'common_assigned_standard_item.dart';

/// {@template pulumi_security_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_security_assignment_args_doc}
class AssignmentArgs {
  /// Additional data about the assignment
  final pulumi.Input<AssignmentPropertiesAdditionalData?>? additionalData;
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedComponentItem?>? assignedComponent;
  /// Standard item with key as applied to this standard assignment over the given scope
  final pulumi.Input<CommonAssignedStandardItem?>? assignedStandard;
  /// The security assignment key - unique key for the standard assignment
  final pulumi.Input<String?>? assignmentId;
  /// description of the standardAssignment
  final pulumi.Input<String?>? description;
  /// display name of the standardAssignment
  final pulumi.Input<String?>? displayName;
  /// expected effect of this assignment (Disable/Exempt/etc)
  final pulumi.Input<String?>? effect;
  /// Expiration date of this assignment as a full ISO date
  final pulumi.Input<String?>? expiresOn;
  /// Kind of the resource
  final pulumi.Input<String?>? kind;
  /// The geo-location where the resource lives
  final pulumi.Input<String?>? location;
  /// The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  final pulumi.Input<String?>? scope;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AssignmentArgs].
  /// [additionalData] Additional data about the assignment
  /// [assignedComponent] Component item with key as applied to this standard assignment over the given scope
  /// [assignedStandard] Standard item with key as applied to this standard assignment over the given scope
  /// [assignmentId] The security assignment key - unique key for the standard assignment
  /// [description] description of the standardAssignment
  /// [displayName] display name of the standardAssignment
  /// [effect] expected effect of this assignment (Disable/Exempt/etc)
  /// [expiresOn] Expiration date of this assignment as a full ISO date
  /// [kind] Kind of the resource
  /// [location] The geo-location where the resource lives
  /// [metadata] The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [scope] Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  /// [tags] Resource tags.
  const AssignmentArgs({
    this.additionalData,
    this.assignedComponent,
    this.assignedStandard,
    this.assignmentId,
    this.description,
    this.displayName,
    this.effect,
    this.expiresOn,
    this.kind,
    this.location,
    this.metadata,
    required this.resourceGroupName,
    this.scope,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?pulumi.Input.mapOptionalInputValue<AssignmentPropertiesAdditionalData, Map<String, dynamic>>(additionalData, (value) => value.toMap()),
      'assignedComponent': ?pulumi.Input.mapOptionalInputValue<AssignedComponentItem, Map<String, dynamic>>(assignedComponent, (value) => value.toMap()),
      'assignedStandard': ?pulumi.Input.mapOptionalInputValue<CommonAssignedStandardItem, Map<String, dynamic>>(assignedStandard, (value) => value.toMap()),
      'assignmentId': ?assignmentId,
      'description': ?description,
      'displayName': ?displayName,
      'effect': ?effect,
      'expiresOn': ?expiresOn,
      'kind': ?kind,
      'location': ?location,
      'metadata': ?metadata,
      'resourceGroupName': resourceGroupName,
      'scope': ?scope,
      'tags': ?tags,
    };
  }

  factory AssignmentArgs.fromMap(Map<String, dynamic> map) {
    return AssignmentArgs(
      additionalData: (() { final guardedValue = map['additionalData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignmentPropertiesAdditionalData.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assignedComponent: (() { final guardedValue = map['assignedComponent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AssignedComponentItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assignedStandard: (() { final guardedValue = map['assignedStandard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CommonAssignedStandardItem.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      assignmentId: (() { final guardedValue = map['assignmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiresOn: (() { final guardedValue = map['expiresOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
