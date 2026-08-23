// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_connections_api_connection_api_connection_args_doc}
/// The set of arguments for ApiConnection.
/// {@endtemplate}
/// {@macro pulumi_connections_api_connection_api_connection_args_doc}
class ApiConnectionArgs {
  /// A display name for this API Connection.
  final pulumi.Input<String>? displayName;
  /// The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created.
  final pulumi.Input<String> managedApiId;
  /// The Name which should be used for this API Connection. Changing this forces a new API Connection to be created.
  final pulumi.Input<String>? name;
  /// A map of parameter values associated with this API Connection.
  ///
  /// &gt; **Note:** The Azure API doesn't return sensitive parameters in the API response which can lead to a diff, as such you may need to use Terraform's `ignoreChanges` functionality on this field as shown in the Example Usage above.
  final pulumi.Input<Map<String, String>>? parameterValues;
  /// The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the API Connection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApiConnectionArgs].
  /// [displayName] A display name for this API Connection.
  /// [managedApiId] The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created.
  /// [name] The Name which should be used for this API Connection. Changing this forces a new API Connection to be created.
  /// [parameterValues] A map of parameter values associated with this API Connection.
  /// [resourceGroupName] The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created.
  /// [tags] A mapping of tags which should be assigned to the API Connection.
  const ApiConnectionArgs({
    this.displayName,
    required this.managedApiId,
    this.name,
    this.parameterValues,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'managedApiId': managedApiId,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApiConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ApiConnectionArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedApiId: pulumi.Input.fromValue(map['managedApiId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
