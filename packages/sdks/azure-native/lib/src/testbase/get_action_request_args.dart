// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_action_request_args_doc}
/// Arguments for getActionRequest.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_action_request_args_doc}
class GetActionRequestArgs {
  final pulumi.Input<String> actionRequestName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetActionRequestArgs].
  /// [actionRequestName] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetActionRequestArgs({
    required this.actionRequestName,
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequestName': actionRequestName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetActionRequestArgs.fromMap(Map<String, dynamic> map) {
    return GetActionRequestArgs(
      actionRequestName: pulumi.Input.fromValue(
        map['actionRequestName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      testBaseAccountName: pulumi.Input.fromValue(
        map['testBaseAccountName'] as String,
      ),
    );
  }
}
