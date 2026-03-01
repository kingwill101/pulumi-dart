// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_voiceservices_get_test_line_args_doc}
/// Arguments for getTestLine.
/// {@endtemplate}
/// {@macro pulumi_voiceservices_get_test_line_args_doc}
class GetTestLineArgs {
  /// Unique identifier for this deployment
  final pulumi.Input<String> communicationsGatewayName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Unique identifier for this test line
  final pulumi.Input<String> testLineName;

  /// Creates a new [GetTestLineArgs].
  /// [communicationsGatewayName] Unique identifier for this deployment
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testLineName] Unique identifier for this test line
  GetTestLineArgs({
    required pulumi.Output<String> communicationsGatewayName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testLineName,
  }) :
      communicationsGatewayName = pulumi.Input.asInput<String>(communicationsGatewayName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testLineName = pulumi.Input.asInput<String>(testLineName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationsGatewayName': communicationsGatewayName,
      'resourceGroupName': resourceGroupName,
      'testLineName': testLineName,
    };
  }

  factory GetTestLineArgs.fromMap(Map<String, dynamic> map) {
    return GetTestLineArgs(
      communicationsGatewayName: pulumi.Output.create<String>(map['communicationsGatewayName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testLineName: pulumi.Output.create<String>(map['testLineName'] as String),
    );
  }
}

