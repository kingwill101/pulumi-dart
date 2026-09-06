// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pre_release_access_request_spec.dart';

/// {@template pulumi_testbase_action_request_args_doc}
/// The set of arguments for ActionRequest.
/// {@endtemplate}
/// {@macro pulumi_testbase_action_request_args_doc}
class ActionRequestArgs {
  final pulumi.Input<String?>? actionRequestName;
  final pulumi.Input<PreReleaseAccessRequestSpec?>? preReleaseAccessRequestSpec;
  final pulumi.Input<dynamic> requestType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [ActionRequestArgs].
  /// [actionRequestName] Optional.
  /// [preReleaseAccessRequestSpec] Optional.
  /// [requestType] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  const ActionRequestArgs({
    this.actionRequestName,
    this.preReleaseAccessRequestSpec,
    required this.requestType,
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionRequestName': ?actionRequestName,
      'preReleaseAccessRequestSpec': ?pulumi.Input.mapOptionalInputValue<PreReleaseAccessRequestSpec, Map<String, dynamic>>(preReleaseAccessRequestSpec, (value) => value.toMap()),
      'requestType': requestType,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory ActionRequestArgs.fromMap(Map<String, dynamic> map) {
    return ActionRequestArgs(
      actionRequestName: (() { final guardedValue = map['actionRequestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preReleaseAccessRequestSpec: (() { final guardedValue = map['preReleaseAccessRequestSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreReleaseAccessRequestSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      requestType: pulumi.Input.fromValue(map['requestType']),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
    );
  }
}
