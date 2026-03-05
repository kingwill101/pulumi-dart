// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iapp_list.dart';
import 'iapp_metadata.dart';
import 'iapp_table.dart';
import 'iapp_variable.dart';

/// {@template pulumi_sys_i_app_iapp_args_doc}
/// The set of arguments for IApp.
/// {@endtemplate}
/// {@macro pulumi_sys_i_app_iapp_args_doc}
class IAppArgs {
  /// User defined description.
  final pulumi.Input<String>? description;
  /// BIG-IP password
  final pulumi.Input<String>? devicegroup;
  /// Run the specified template action associated with the application, this option can be specified in `json` with `executeAction`, value specified with `execute_action` attribute take precedence over `json` value
  final pulumi.Input<String>? executeAction;
  /// Read-only. Shows whether the application folder will automatically remain with the same device-group as its parent folder. Use 'device-group default' or 'device-group non-default' to set this.
  final pulumi.Input<String>? inheritedDevicegroup;
  /// Read-only. Shows whether the application folder will automatically remain with the same traffic-group as its parent folder. Use 'traffic-group default' or 'traffic-group non-default' to set this.
  final pulumi.Input<String>? inheritedTrafficGroup;
  /// Refer to the Json file which will be deployed on F5 BIG-IP.
  final pulumi.Input<String> jsonfile;
  /// string values
  final pulumi.Input<List<IAppList>>? lists;
  /// User defined generic data for the application service. It is a name and value pair.
  final pulumi.Input<List<IAppMetadata>>? metadatas;
  /// Name of the iApp.
  final pulumi.Input<String> name;
  /// Displays the administrative partition within which the application resides.
  final pulumi.Input<String>? partition;
  /// Specifies whether configuration objects contained in the application may be directly modified, outside the context of the system's application management interfaces.
  final pulumi.Input<String>? strictUpdates;
  final pulumi.Input<List<IAppTable>>? tables;
  /// The template defines the configuration for the application. This may be changed after the application has been created to move the application to a new template.
  final pulumi.Input<String>? template;
  /// Indicates that the application template used to deploy the application has been modified. The application should be updated to make use of the latest changes.
  final pulumi.Input<String>? templateModified;
  /// Indicates any missing prerequisites associated with the template that defines this application.
  final pulumi.Input<String>? templatePrerequisiteErrors;
  /// The name of the traffic group that the application service is assigned to.
  final pulumi.Input<String>? trafficGroup;
  final pulumi.Input<List<IAppVariable>>? variables;

  /// Creates a new [IAppArgs].
  /// [description] User defined description.
  /// [devicegroup] BIG-IP password
  /// [executeAction] Run the specified template action associated with the application, this option can be specified in `json` with `executeAction`, value specified with `execute_action` attribute take precedence over `json` value
  /// [inheritedDevicegroup] Read-only. Shows whether the application folder will automatically remain with the same device-group as its parent folder. Use 'device-group default' or 'device-group non-default' to set this.
  /// [inheritedTrafficGroup] Read-only. Shows whether the application folder will automatically remain with the same traffic-group as its parent folder. Use 'traffic-group default' or 'traffic-group non-default' to set this.
  /// [jsonfile] Refer to the Json file which will be deployed on F5 BIG-IP.
  /// [lists] string values
  /// [metadatas] User defined generic data for the application service. It is a name and value pair.
  /// [name] Name of the iApp.
  /// [partition] Displays the administrative partition within which the application resides.
  /// [strictUpdates] Specifies whether configuration objects contained in the application may be directly modified, outside the context of the system's application management interfaces.
  /// [tables] Optional.
  /// [template] The template defines the configuration for the application. This may be changed after the application has been created to move the application to a new template.
  /// [templateModified] Indicates that the application template used to deploy the application has been modified. The application should be updated to make use of the latest changes.
  /// [templatePrerequisiteErrors] Indicates any missing prerequisites associated with the template that defines this application.
  /// [trafficGroup] The name of the traffic group that the application service is assigned to.
  /// [variables] Optional.
  IAppArgs({
    this.description,
    this.devicegroup,
    this.executeAction,
    this.inheritedDevicegroup,
    this.inheritedTrafficGroup,
    required this.jsonfile,
    this.lists,
    this.metadatas,
    required this.name,
    this.partition,
    this.strictUpdates,
    this.tables,
    this.template,
    this.templateModified,
    this.templatePrerequisiteErrors,
    this.trafficGroup,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'devicegroup': ?devicegroup,
      'executeAction': ?executeAction,
      'inheritedDevicegroup': ?inheritedDevicegroup,
      'inheritedTrafficGroup': ?inheritedTrafficGroup,
      'jsonfile': jsonfile,
      'lists': ?pulumi.Input.mapOptionalInputValue<List<IAppList>, List<Map<String, dynamic>>>(lists, (value) => pulumi.Input.encodeList<IAppList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<IAppMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<IAppMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'partition': ?partition,
      'strictUpdates': ?strictUpdates,
      'tables': ?pulumi.Input.mapOptionalInputValue<List<IAppTable>, List<Map<String, dynamic>>>(tables, (value) => pulumi.Input.encodeList<IAppTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'template': ?template,
      'templateModified': ?templateModified,
      'templatePrerequisiteErrors': ?templatePrerequisiteErrors,
      'trafficGroup': ?trafficGroup,
      'variables': ?pulumi.Input.mapOptionalInputValue<List<IAppVariable>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<IAppVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory IAppArgs.fromMap(Map<String, dynamic> map) {
    return IAppArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devicegroup: (() { final guardedValue = map['devicegroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executeAction: (() { final guardedValue = map['executeAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inheritedDevicegroup: (() { final guardedValue = map['inheritedDevicegroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inheritedTrafficGroup: (() { final guardedValue = map['inheritedTrafficGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jsonfile: pulumi.Input.fromValue(map['jsonfile'] as String),
      lists: (() { final guardedValue = map['lists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IAppList>(guardedValue, (value) => IAppList.fromMap((value as Map).cast<String, dynamic>()))); })(),
      metadatas: (() { final guardedValue = map['metadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IAppMetadata>(guardedValue, (value) => IAppMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      partition: (() { final guardedValue = map['partition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strictUpdates: (() { final guardedValue = map['strictUpdates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tables: (() { final guardedValue = map['tables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IAppTable>(guardedValue, (value) => IAppTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      template: (() { final guardedValue = map['template']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateModified: (() { final guardedValue = map['templateModified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templatePrerequisiteErrors: (() { final guardedValue = map['templatePrerequisiteErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trafficGroup: (() { final guardedValue = map['trafficGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IAppVariable>(guardedValue, (value) => IAppVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

