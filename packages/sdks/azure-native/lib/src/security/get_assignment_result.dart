// ignore_for_file: unused_element, unnecessary_cast

import 'assigned_component_item_response.dart';
import 'assigned_standard_item_response.dart';
import 'assignment_properties_response_additional_data.dart';
import 'system_data_response.dart';

/// Result data returned by getAssignment.
class GetAssignmentResult {
  /// Additional data about the assignment
  final AssignmentPropertiesResponseAdditionalData? additionalData;

  /// Component item with key as applied to this standard assignment over the given scope
  final AssignedComponentItemResponse? assignedComponent;

  /// Standard item with key as applied to this standard assignment over the given scope
  final AssignedStandardItemResponse? assignedStandard;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// description of the standardAssignment
  final String? description;

  /// display name of the standardAssignment
  final String? displayName;

  /// expected effect of this assignment (Disable/Exempt/etc)
  final String? effect;

  /// Entity tag is used for comparing two or more entities from the same requested resource.
  final String? etag;

  /// Expiration date of this assignment as a full ISO date
  final String? expiresOn;

  /// Resource Id
  final String id;

  /// Kind of the resource
  final String? kind;

  /// Location where the resource is stored
  final String? location;

  /// The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  final dynamic metadata;

  /// Resource name
  final String name;

  /// Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  final String? scope;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// A list of key value pairs that describe the resource.
  final Map<String, String>? tags;

  /// Resource type
  final String type;

  /// Creates a new [GetAssignmentResult].
  /// [additionalData] Additional data about the assignment
  /// [assignedComponent] Component item with key as applied to this standard assignment over the given scope
  /// [assignedStandard] Standard item with key as applied to this standard assignment over the given scope
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] description of the standardAssignment
  /// [displayName] display name of the standardAssignment
  /// [effect] expected effect of this assignment (Disable/Exempt/etc)
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [expiresOn] Expiration date of this assignment as a full ISO date
  /// [id] Resource Id
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [metadata] The assignment metadata. Metadata is an open ended object and is typically a collection of key value pairs.
  /// [name] Resource name
  /// [scope] Scope to which the standardAssignment applies - can be a subscription path or a resource group under that subscription
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] A list of key value pairs that describe the resource.
  /// [type] Resource type
  GetAssignmentResult({
    this.additionalData,
    this.assignedComponent,
    this.assignedStandard,
    required this.azureApiVersion,
    this.description,
    this.displayName,
    this.effect,
    this.etag,
    this.expiresOn,
    required this.id,
    this.kind,
    this.location,
    this.metadata,
    required this.name,
    this.scope,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalData': ?additionalData?.toMap(),
      'assignedComponent': ?assignedComponent?.toMap(),
      'assignedStandard': ?assignedStandard?.toMap(),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'displayName': ?displayName,
      'effect': ?effect,
      'etag': ?etag,
      'expiresOn': ?expiresOn,
      'id': id,
      'kind': ?kind,
      'location': ?location,
      'metadata': ?metadata,
      'name': name,
      'scope': ?scope,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAssignmentResult.fromMap(Map<String, dynamic> map) {
    return GetAssignmentResult(
      additionalData: (() {
        final guardedValue = map['additionalData'];
        if (guardedValue == null) return null;
        return AssignmentPropertiesResponseAdditionalData.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      assignedComponent: (() {
        final guardedValue = map['assignedComponent'];
        if (guardedValue == null) return null;
        return AssignedComponentItemResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      assignedStandard: (() {
        final guardedValue = map['assignedStandard'];
        if (guardedValue == null) return null;
        return AssignedStandardItemResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      azureApiVersion: map['azureApiVersion'] as String,
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      effect: (() {
        final guardedValue = map['effect'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      etag: (() {
        final guardedValue = map['etag'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      expiresOn: (() {
        final guardedValue = map['expiresOn'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return guardedValue;
      })(),
      name: map['name'] as String,
      scope: (() {
        final guardedValue = map['scope'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
    );
  }
}
