// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_identity.dart';

/// {@template pulumi_appinsights_workbook_workbook_args_doc}
/// The set of arguments for Workbook.
/// {@endtemplate}
/// {@macro pulumi_appinsights_workbook_workbook_args_doc}
class WorkbookArgs {
  /// Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`.
  final pulumi.Input<String?>? category;
  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON.
  final pulumi.Input<String> dataJson;
  /// Specifies the description of the workbook.
  final pulumi.Input<String?>? description;
  /// Specifies the user-defined name (display name) of the workbook.
  final pulumi.Input<String> displayName;
  /// An `identity` block as defined below. Changing this forces a new Workbook to be created.
  final pulumi.Input<WorkbookIdentity?>? identity;
  /// Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`.
  final pulumi.Input<String?>? sourceId;
  /// Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created.
  ///
  /// &gt; **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resourceManagerId`.
  final pulumi.Input<String?>? storageContainerId;
  /// A mapping of tags which should be assigned to the Workbook.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [WorkbookArgs].
  /// [category] Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`.
  /// [dataJson] Configuration of this particular workbook. Configuration data is a string containing valid JSON.
  /// [description] Specifies the description of the workbook.
  /// [displayName] Specifies the user-defined name (display name) of the workbook.
  /// [identity] An `identity` block as defined below. Changing this forces a new Workbook to be created.
  /// [location] Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created.
  /// [name] Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created.
  /// [sourceId] Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`.
  /// [storageContainerId] Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created.
  /// [tags] A mapping of tags which should be assigned to the Workbook.
  const WorkbookArgs({
    this.category,
    required this.dataJson,
    this.description,
    required this.displayName,
    this.identity,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.sourceId,
    this.storageContainerId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dataJson': dataJson,
      'description': ?description,
      'displayName': displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<WorkbookIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'sourceId': ?sourceId,
      'storageContainerId': ?storageContainerId,
      'tags': ?tags,
    };
  }

  factory WorkbookArgs.fromMap(Map<String, dynamic> map) {
    return WorkbookArgs(
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataJson: pulumi.Input.fromValue(map['dataJson'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkbookIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerId: (() { final guardedValue = map['storageContainerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
