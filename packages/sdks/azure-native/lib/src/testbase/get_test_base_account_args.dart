// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_test_base_account_args_doc}
/// Arguments for getTestBaseAccount.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_test_base_account_args_doc}
class GetTestBaseAccountArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetTestBaseAccountArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetTestBaseAccountArgs({
    required this.resourceGroupName,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetTestBaseAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetTestBaseAccountArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      testBaseAccountName: pulumi.Input.fromValue(
        map['testBaseAccountName'] as String,
      ),
    );
  }
}
