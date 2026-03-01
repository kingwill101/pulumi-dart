// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_identity.dart';

/// Input properties used for looking up and filtering Workbook resources.
class WorkbookState {
  /// Workbook category, as defined by the user at creation time. There may be additional category types beyond the following: `workbook`, `sentinel`. Defaults to `workbook`.
  final pulumi.Input<String>? category;
  /// Configuration of this particular workbook. Configuration data is a string containing valid JSON.
  final pulumi.Input<String>? dataJson;
  /// Specifies the description of the workbook.
  final pulumi.Input<String>? description;
  /// Specifies the user-defined name (display name) of the workbook.
  final pulumi.Input<String>? displayName;
  /// An `identity` block as defined below. Changing this forces a new Workbook to be created.
  final pulumi.Input<WorkbookIdentity>? identity;
  /// Specifies the Azure Region where the Workbook should exist. Changing this forces a new Workbook to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of this Workbook as a UUID/GUID. It should not contain any uppercase letters. Changing this forces a new Workbook to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Workbook should exist. Changing this forces a new Workbook to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Resource ID for a source resource. It should not contain any uppercase letters. Defaults to `azure monitor`.
  final pulumi.Input<String>? sourceId;
  /// Specifies the Resource Manager ID of the Storage Container when bring your own storage is used. Changing this forces a new Workbook to be created.
  ///
  /// > **Note:** This is the Resource Manager ID of the Storage Container, rather than the regular ID - and can be accessed on the `azure.storage.Container` Data Source/Resource as `resource_manager_id`.
  final pulumi.Input<String>? storageContainerId;
  /// A mapping of tags which should be assigned to the Workbook.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkbookState].
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
  WorkbookState({
    pulumi.Output<String>? category,
    pulumi.Output<String>? dataJson,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<WorkbookIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sourceId,
    pulumi.Output<String>? storageContainerId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      category = pulumi.Input.asOptionalInput<String>(category),
      dataJson = pulumi.Input.asOptionalInput<String>(dataJson),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      identity = pulumi.Input.asOptionalInput<WorkbookIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sourceId = pulumi.Input.asOptionalInput<String>(sourceId),
      storageContainerId = pulumi.Input.asOptionalInput<String>(storageContainerId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': ?category,
      'dataJson': ?dataJson,
      'description': ?description,
      'displayName': ?displayName,
      'identity': ?pulumi.Input.mapOptionalInputValue<WorkbookIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sourceId': ?sourceId,
      'storageContainerId': ?storageContainerId,
      'tags': ?tags,
    };
  }

  factory WorkbookState.fromMap(Map<String, dynamic> map) {
    return WorkbookState(
      category: map['category'] == null ? null : pulumi.Output.create<String>(map['category'] as String),
      dataJson: map['dataJson'] == null ? null : pulumi.Output.create<String>(map['dataJson'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<WorkbookIdentity>(WorkbookIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceId: map['sourceId'] == null ? null : pulumi.Output.create<String>(map['sourceId'] as String),
      storageContainerId: map['storageContainerId'] == null ? null : pulumi.Output.create<String>(map['storageContainerId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

