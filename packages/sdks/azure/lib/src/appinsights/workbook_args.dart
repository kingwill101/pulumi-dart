// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_identity.dart';

/// {@template pulumi_appinsights_workbook_workbook_args_doc}
/// The set of arguments for Workbook.
/// {@endtemplate}
/// {@macro pulumi_appinsights_workbook_workbook_args_doc}
class WorkbookArgs {
  /// Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`.
  final pulumi.Input<String>? category;
  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON.
  final pulumi.Input<String> dataJson;
  /// Specifies the description of the workbook.
  final pulumi.Input<String>? description;
  /// Specifies the user-defined name (display name) of the workbook.
  final pulumi.Input<String> displayName;
  /// An `identity` block as defined below. Changing this forces a new Workbook to be created.
  final pulumi.Input<WorkbookIdentity>? identity;
  /// Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`.
  final pulumi.Input<String>? sourceId;
  /// Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created.
  ///
  /// > **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String>? storageContainerId;
  /// A mapping of tags which should be assigned to the Workbook.
  final pulumi.Input<Map<String, String>>? tags;

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
  WorkbookArgs({
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
      category: map['category'] == null ? null : (map['category']! as String).input(),
      dataJson: (map['dataJson'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      identity: map['identity'] == null ? null : (WorkbookIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId']! as String).input(),
      storageContainerId: map['storageContainerId'] == null ? null : (map['storageContainerId']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

