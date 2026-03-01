// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iapp_list.dart';
import 'iapp_metadata.dart';
import 'iapp_table.dart';
import 'iapp_variable.dart';

/// Input properties used for looking up and filtering IApp resources.
class IAppState {
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
  final pulumi.Input<String>? jsonfile;
  /// string values
  final pulumi.Input<List<IAppList>>? lists;
  /// User defined generic data for the application service. It is a name and value pair.
  final pulumi.Input<List<IAppMetadata>>? metadatas;
  /// Name of the iApp.
  final pulumi.Input<String>? name;
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

  /// Creates a new [IAppState].
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
  IAppState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? devicegroup,
    pulumi.Output<String>? executeAction,
    pulumi.Output<String>? inheritedDevicegroup,
    pulumi.Output<String>? inheritedTrafficGroup,
    pulumi.Output<String>? jsonfile,
    pulumi.Output<List<IAppList>>? lists,
    pulumi.Output<List<IAppMetadata>>? metadatas,
    pulumi.Output<String>? name,
    pulumi.Output<String>? partition,
    pulumi.Output<String>? strictUpdates,
    pulumi.Output<List<IAppTable>>? tables,
    pulumi.Output<String>? template,
    pulumi.Output<String>? templateModified,
    pulumi.Output<String>? templatePrerequisiteErrors,
    pulumi.Output<String>? trafficGroup,
    pulumi.Output<List<IAppVariable>>? variables,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      devicegroup = pulumi.Input.asOptionalInput<String>(devicegroup),
      executeAction = pulumi.Input.asOptionalInput<String>(executeAction),
      inheritedDevicegroup = pulumi.Input.asOptionalInput<String>(inheritedDevicegroup),
      inheritedTrafficGroup = pulumi.Input.asOptionalInput<String>(inheritedTrafficGroup),
      jsonfile = pulumi.Input.asOptionalInput<String>(jsonfile),
      lists = pulumi.Input.asOptionalInput<List<IAppList>>(lists),
      metadatas = pulumi.Input.asOptionalInput<List<IAppMetadata>>(metadatas),
      name = pulumi.Input.asOptionalInput<String>(name),
      partition = pulumi.Input.asOptionalInput<String>(partition),
      strictUpdates = pulumi.Input.asOptionalInput<String>(strictUpdates),
      tables = pulumi.Input.asOptionalInput<List<IAppTable>>(tables),
      template = pulumi.Input.asOptionalInput<String>(template),
      templateModified = pulumi.Input.asOptionalInput<String>(templateModified),
      templatePrerequisiteErrors = pulumi.Input.asOptionalInput<String>(templatePrerequisiteErrors),
      trafficGroup = pulumi.Input.asOptionalInput<String>(trafficGroup),
      variables = pulumi.Input.asOptionalInput<List<IAppVariable>>(variables);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'devicegroup': ?devicegroup,
      'executeAction': ?executeAction,
      'inheritedDevicegroup': ?inheritedDevicegroup,
      'inheritedTrafficGroup': ?inheritedTrafficGroup,
      'jsonfile': ?jsonfile,
      'lists': ?pulumi.Input.mapOptionalInputValue<List<IAppList>, List<Map<String, dynamic>>>(lists, (value) => pulumi.Input.encodeList<IAppList, Map<String, dynamic>>(value, (value) => value.toMap())),
      'metadatas': ?pulumi.Input.mapOptionalInputValue<List<IAppMetadata>, List<Map<String, dynamic>>>(metadatas, (value) => pulumi.Input.encodeList<IAppMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
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

  factory IAppState.fromMap(Map<String, dynamic> map) {
    return IAppState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      devicegroup: map['devicegroup'] == null ? null : pulumi.Output.create<String>(map['devicegroup'] as String),
      executeAction: map['executeAction'] == null ? null : pulumi.Output.create<String>(map['executeAction'] as String),
      inheritedDevicegroup: map['inheritedDevicegroup'] == null ? null : pulumi.Output.create<String>(map['inheritedDevicegroup'] as String),
      inheritedTrafficGroup: map['inheritedTrafficGroup'] == null ? null : pulumi.Output.create<String>(map['inheritedTrafficGroup'] as String),
      jsonfile: map['jsonfile'] == null ? null : pulumi.Output.create<String>(map['jsonfile'] as String),
      lists: map['lists'] == null ? null : pulumi.Output.create<List<IAppList>>(pulumi.Input.decodeList<IAppList>(map['lists'], (value) => IAppList.fromMap((value as Map).cast<String, dynamic>()))),
      metadatas: map['metadatas'] == null ? null : pulumi.Output.create<List<IAppMetadata>>(pulumi.Input.decodeList<IAppMetadata>(map['metadatas'], (value) => IAppMetadata.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      partition: map['partition'] == null ? null : pulumi.Output.create<String>(map['partition'] as String),
      strictUpdates: map['strictUpdates'] == null ? null : pulumi.Output.create<String>(map['strictUpdates'] as String),
      tables: map['tables'] == null ? null : pulumi.Output.create<List<IAppTable>>(pulumi.Input.decodeList<IAppTable>(map['tables'], (value) => IAppTable.fromMap((value as Map).cast<String, dynamic>()))),
      template: map['template'] == null ? null : pulumi.Output.create<String>(map['template'] as String),
      templateModified: map['templateModified'] == null ? null : pulumi.Output.create<String>(map['templateModified'] as String),
      templatePrerequisiteErrors: map['templatePrerequisiteErrors'] == null ? null : pulumi.Output.create<String>(map['templatePrerequisiteErrors'] as String),
      trafficGroup: map['trafficGroup'] == null ? null : pulumi.Output.create<String>(map['trafficGroup'] as String),
      variables: map['variables'] == null ? null : pulumi.Output.create<List<IAppVariable>>(pulumi.Input.decodeList<IAppVariable>(map['variables'], (value) => IAppVariable.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

