// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_web_get_connection_args_doc}
/// Arguments for getConnection.
/// {@endtemplate}
/// {@macro pulumi_web_get_connection_args_doc}
class GetConnectionArgs {
  /// Connection name
  final pulumi.Input<String> connectionName;
  /// The resource group
  final pulumi.Input<String> resourceGroupName;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [GetConnectionArgs].
  /// [connectionName] Connection name
  /// [resourceGroupName] The resource group
  /// [subscriptionId] Subscription Id
  GetConnectionArgs({
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? subscriptionId,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory GetConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs(
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}

