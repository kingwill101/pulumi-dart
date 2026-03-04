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
    required this.communicationsGatewayName,
    required this.resourceGroupName,
    required this.testLineName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'communicationsGatewayName': communicationsGatewayName,
      'resourceGroupName': resourceGroupName,
      'testLineName': testLineName,
    };
  }

  factory GetTestLineArgs.fromMap(Map<String, dynamic> map) {
    return GetTestLineArgs(
      communicationsGatewayName: pulumi.Input.fromValue(
        map['communicationsGatewayName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      testLineName: pulumi.Input.fromValue(map['testLineName'] as String),
    );
  }
}
