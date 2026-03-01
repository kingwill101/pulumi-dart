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
    pulumi.Output<AssignmentPropertiesAdditionalData>? additionalData,
    pulumi.Output<AssignedComponentItem>? assignedComponent,
    pulumi.Output<AssignedStandardItem>? assignedStandard,
    pulumi.Output<String>? assignmentId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? effect,
    pulumi.Output<String>? expiresOn,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<dynamic>? metadata,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? scope,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      additionalData = pulumi.Input.asOptionalInput<AssignmentPropertiesAdditionalData>(additionalData),
      assignedComponent = pulumi.Input.asOptionalInput<AssignedComponentItem>(assignedComponent),
      assignedStandard = pulumi.Input.asOptionalInput<AssignedStandardItem>(assignedStandard),
      assignmentId = pulumi.Input.asOptionalInput<String>(assignmentId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      effect = pulumi.Input.asOptionalInput<String>(effect),
      expiresOn = pulumi.Input.asOptionalInput<String>(expiresOn),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      metadata = pulumi.Input.asOptionalInput<dynamic>(metadata),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      scope = pulumi.Input.asOptionalInput<String>(scope),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      additionalData: map['additionalData'] == null ? null : pulumi.Output.create<AssignmentPropertiesAdditionalData>(AssignmentPropertiesAdditionalData.fromMap((map['additionalData'] as Map).cast<String, dynamic>())),
      assignedComponent: map['assignedComponent'] == null ? null : pulumi.Output.create<AssignedComponentItem>(AssignedComponentItem.fromMap((map['assignedComponent'] as Map).cast<String, dynamic>())),
      assignedStandard: map['assignedStandard'] == null ? null : pulumi.Output.create<AssignedStandardItem>(AssignedStandardItem.fromMap((map['assignedStandard'] as Map).cast<String, dynamic>())),
      assignmentId: map['assignmentId'] == null ? null : pulumi.Output.create<String>(map['assignmentId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      effect: map['effect'] == null ? null : pulumi.Output.create<String>(map['effect'] as String),
      expiresOn: map['expiresOn'] == null ? null : pulumi.Output.create<String>(map['expiresOn'] as String),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<dynamic>(map['metadata']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scope: map['scope'] == null ? null : pulumi.Output.create<String>(map['scope'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

