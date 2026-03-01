// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pre_release_access_request_spec.dart';

/// {@template pulumi_testbase_action_request_args_doc}
/// The set of arguments for ActionRequest.
/// {@endtemplate}
/// {@macro pulumi_testbase_action_request_args_doc}
class ActionRequestArgs {
  final pulumi.Input<String>? actionRequestName;
  final pulumi.Input<PreReleaseAccessRequestSpec>? preReleaseAccessRequestSpec;
  final pulumi.Input<String> requestType;
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
  ActionRequestArgs({
    pulumi.Output<String>? actionRequestName,
    pulumi.Output<PreReleaseAccessRequestSpec>? preReleaseAccessRequestSpec,
    required pulumi.Output<String> requestType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      actionRequestName = pulumi.Input.asOptionalInput<String>(actionRequestName),
      preReleaseAccessRequestSpec = pulumi.Input.asOptionalInput<PreReleaseAccessRequestSpec>(preReleaseAccessRequestSpec),
      requestType = pulumi.Input.asInput<String>(requestType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

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
      actionRequestName: map['actionRequestName'] == null ? null : pulumi.Output.create<String>(map['actionRequestName'] as String),
      preReleaseAccessRequestSpec: map['preReleaseAccessRequestSpec'] == null ? null : pulumi.Output.create<PreReleaseAccessRequestSpec>(PreReleaseAccessRequestSpec.fromMap((map['preReleaseAccessRequestSpec'] as Map).cast<String, dynamic>())),
      requestType: pulumi.Output.create<String>(map['requestType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

