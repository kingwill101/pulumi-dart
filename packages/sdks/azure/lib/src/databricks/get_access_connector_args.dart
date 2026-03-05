// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_get_access_connector_get_access_connector_args_doc}
/// Arguments for getAccessConnector.
/// {@endtemplate}
/// {@macro pulumi_databricks_get_access_connector_get_access_connector_args_doc}
class GetAccessConnectorArgs {
  /// The name of this Databricks Access Connector.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Databricks Access Connector exists. Changing this forces a new Databricks Access Connector to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAccessConnectorArgs].
  /// [name] The name of this Databricks Access Connector.
  /// [resourceGroupName] The name of the Resource Group where the Databricks Access Connector exists. Changing this forces a new Databricks Access Connector to be created.
  GetAccessConnectorArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAccessConnectorArgs.fromMap(Map<String, dynamic> map) {
    return GetAccessConnectorArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

