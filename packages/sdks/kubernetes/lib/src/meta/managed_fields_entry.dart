// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource that the fieldset applies to.
class ManagedFieldsEntry {
  /// APIVersion defines the version of this resource that this field set applies to. The format is "group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
  final pulumi.Input<String>? apiVersion;
  /// FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1"
  final pulumi.Input<String>? fieldsType;
  /// FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
  final pulumi.Input<dynamic>? fieldsV1;
  /// Manager is an identifier of the workflow managing these fields.
  final pulumi.Input<String>? manager;
  /// Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
  final pulumi.Input<String>? operation;
  /// Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
  final pulumi.Input<String>? subresource;
  /// Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over.
  final pulumi.Input<String>? time;

  /// Creates a new [ManagedFieldsEntry].
  /// [apiVersion] APIVersion defines the version of this resource that this field set applies to. The format is "group/version" just like the top-level APIVersion field. It is necessary to track the version of a field set because it cannot be automatically converted.
  /// [fieldsType] FieldsType is the discriminator for the different fields format and version. There is currently only one possible value: "FieldsV1"
  /// [fieldsV1] FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
  /// [manager] Manager is an identifier of the workflow managing these fields.
  /// [operation] Operation is the type of operation which lead to this ManagedFieldsEntry being created. The only valid values for this field are 'Apply' and 'Update'.
  /// [subresource] Subresource is the name of the subresource used to update that object, or empty string if the object was updated through the main resource. The value of this field is used to distinguish between managers, even if they share the same name. For example, a status update will be distinct from a regular update using the same manager name. Note that the APIVersion field is not related to the Subresource field and it always corresponds to the version of the main resource.
  /// [time] Time is the timestamp of when the ManagedFields entry was added. The timestamp will also be updated if a field is added, the manager changes any of the owned fields value or removes a field. The timestamp does not update when a field is removed from the entry because another manager took it over.
  const ManagedFieldsEntry({
    this.apiVersion,
    this.fieldsType,
    this.fieldsV1,
    this.manager,
    this.operation,
    this.subresource,
    this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'fieldsType': ?fieldsType,
      'fieldsV1': ?fieldsV1,
      'manager': ?manager,
      'operation': ?operation,
      'subresource': ?subresource,
      'time': ?time,
    };
  }

  factory ManagedFieldsEntry.fromMap(Map<String, dynamic> map) {
    return ManagedFieldsEntry(
      apiVersion: (() { final guardedValue = map['apiVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldsType: (() { final guardedValue = map['fieldsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldsV1: (() { final guardedValue = map['fieldsV1']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      manager: (() { final guardedValue = map['manager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operation: (() { final guardedValue = map['operation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subresource: (() { final guardedValue = map['subresource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      time: (() { final guardedValue = map['time']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
