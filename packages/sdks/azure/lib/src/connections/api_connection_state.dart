// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiConnection resources.
class ApiConnectionState {
  /// A display name for this API Connection.
  final pulumi.Input<String>? displayName;
  /// The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created.
  final pulumi.Input<String>? managedApiId;
  /// The Name which should be used for this API Connection. Changing this forces a new API Connection to be created.
  final pulumi.Input<String>? name;
  /// A map of parameter values associated with this API Connection.
  ///
  /// > **Note:** The Azure API doesn't return sensitive parameters in the API response which can lead to a diff, as such you may need to use Terraform's `ignore_changes` functionality on this field as shown in the Example Usage above.
  final pulumi.Input<Map<String, String>>? parameterValues;
  /// The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the API Connection.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApiConnectionState].
  /// [displayName] A display name for this API Connection.
  /// [managedApiId] The ID of the Managed API which this API Connection is linked to. Changing this forces a new API Connection to be created.
  /// [name] The Name which should be used for this API Connection. Changing this forces a new API Connection to be created.
  /// [parameterValues] A map of parameter values associated with this API Connection.
  /// [resourceGroupName] The name of the Resource Group where this API Connection should exist. Changing this forces a new API Connection to be created.
  /// [tags] A mapping of tags which should be assigned to the API Connection.
  ApiConnectionState({
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? managedApiId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameterValues,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      managedApiId = pulumi.Input.asOptionalInput<String>(managedApiId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameterValues = pulumi.Input.asOptionalInput<Map<String, String>>(parameterValues),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'managedApiId': ?managedApiId,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApiConnectionState.fromMap(Map<String, dynamic> map) {
    return ApiConnectionState(
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      managedApiId: map['managedApiId'] == null ? null : pulumi.Output.create<String>(map['managedApiId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameterValues: map['parameterValues'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameterValues'] as Map).cast<String, String>()),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

