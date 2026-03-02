// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assigned_component_item.dart';
import 'assigned_standard_item.dart';
import 'assignment_properties_additional_data.dart';

/// {@template pulumi_security_assignment_args_doc}
/// The set of arguments for Assignment.
/// {@endtemplate}
/// {@macro pulumi_security_assignment_args_doc}
class AssignmentArgs {
  /// Additional data about the assignment
  final pulumi.Input<AssignmentPropertiesAdditionalData>? additionalData;
  /// Component item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedComponentItem>? assignedComponent;
  /// Standard item with key as applied to this standard assignment over the given scope
  final pulumi.Input<AssignedStandardItem>? assignedStandard;
  /// The security assignment key - unique key for the standard assignment
  final pulumi.Input<String>? assignmentId;
  /// description of the standardAssignment
  final pulumi.Input<String>? description;
  /// display name of the standardAssignment
  final pulumi.Input<String>? displayName;
  /// expected effect of this assignment (Disable/Exempt/etc)
  final pulumi.Input<String>? effect;
  /// Expiration date of this assignment as a full ISO date
  final pulumi.Input<String>? expiresOn;
  /// Kind of the resource
  final pulumi.Input<String>? kind;
  /// Location where the resource is stored
  final pulumi.Input<String>? location;
  /// The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final pulumi.Input<dynamic>? metadata;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  final pulumi.Input<String>? scope;
  /// A list of key value pairs that describe the resource.
  final pulumi.Input<Map<String, String>>? tags;

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
  /// [location] Location where the resource is stored
  /// [metadata] The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [scope] Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  /// [tags] A list of key value pairs that describe the resource.
  AssignmentArgs({
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
      'assignedStandard': ?pulumi.Input.mapOptionalInputValue<AssignedStandardItem, Map<String, dynamic>>(assignedStandard, (value) => value.toMap()),
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
      additionalData: map['additionalData'] == null ? null : (AssignmentPropertiesAdditionalData.fromMap((map['additionalData']! as Map).cast<String, dynamic>())).input(),
      assignedComponent: map['assignedComponent'] == null ? null : (AssignedComponentItem.fromMap((map['assignedComponent']! as Map).cast<String, dynamic>())).input(),
      assignedStandard: map['assignedStandard'] == null ? null : (AssignedStandardItem.fromMap((map['assignedStandard']! as Map).cast<String, dynamic>())).input(),
      assignmentId: map['assignmentId'] == null ? null : (map['assignmentId']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      effect: map['effect'] == null ? null : (map['effect']! as String).input(),
      expiresOn: map['expiresOn'] == null ? null : (map['expiresOn']! as String).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']!).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      scope: map['scope'] == null ? null : (map['scope']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

