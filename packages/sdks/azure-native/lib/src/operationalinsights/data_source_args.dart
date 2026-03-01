// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_operationalinsights_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_data_source_args_doc}
class DataSourceArgs {
  /// The name of the datasource resource.
  final pulumi.Input<String>? dataSourceName;
  /// The kind of the DataSource.
  final pulumi.Input<String> kind;
  /// The data source properties in raw json format, each kind of data source have it's own schema.
  final pulumi.Input<dynamic> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [DataSourceArgs].
  /// [dataSourceName] The name of the datasource resource.
  /// [kind] The kind of the DataSource.
  /// [properties] The data source properties in raw json format, each kind of data source have it's own schema.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  /// [workspaceName] The name of the workspace.
  DataSourceArgs({
    pulumi.Output<String>? dataSourceName,
    required pulumi.Output<String> kind,
    required pulumi.Output<dynamic> properties,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> workspaceName,
  }) :
      dataSourceName = pulumi.Input.asOptionalInput<String>(dataSourceName),
      kind = pulumi.Input.asInput<String>(kind),
      properties = pulumi.Input.asInput<dynamic>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataSourceName': ?dataSourceName,
      'kind': kind,
      'properties': properties,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'workspaceName': workspaceName,
    };
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      dataSourceName: map['dataSourceName'] == null ? null : pulumi.Output.create<String>(map['dataSourceName'] as String),
      kind: pulumi.Output.create<String>(map['kind'] as String),
      properties: pulumi.Output.create<dynamic>(map['properties']),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

