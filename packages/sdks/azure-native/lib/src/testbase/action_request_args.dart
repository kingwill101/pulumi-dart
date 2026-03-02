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
      actionRequestName: map['actionRequestName'] == null ? null : (map['actionRequestName'] as String).input(),
      preReleaseAccessRequestSpec: map['preReleaseAccessRequestSpec'] == null ? null : (PreReleaseAccessRequestSpec.fromMap((map['preReleaseAccessRequestSpec'] as Map).cast<String, dynamic>())).input(),
      requestType: (map['requestType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      testBaseAccountName: (map['testBaseAccountName'] as String).input(),
    );
  }
}

