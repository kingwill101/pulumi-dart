// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_test_result_download_urlargs_doc}
/// Arguments for getTestResultDownloadURL.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_test_result_download_urlargs_doc}
class GetTestResultDownloadURLArgs {
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;
  /// The Test Result Name. It equals to TestResult-{TestResultId} string.
  final pulumi.Input<String> testResultName;

  /// Creates a new [GetTestResultDownloadURLArgs].
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  /// [testResultName] The Test Result Name. It equals to TestResult-{TestResultId} string.
  GetTestResultDownloadURLArgs({
    required pulumi.Output<String> packageName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testBaseAccountName,
    required pulumi.Output<String> testResultName,
  }) :
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName),
      testResultName = pulumi.Input.asInput<String>(testResultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
      'testResultName': testResultName,
    };
  }

  factory GetTestResultDownloadURLArgs.fromMap(Map<String, dynamic> map) {
    return GetTestResultDownloadURLArgs(
      packageName: pulumi.Output.create<String>(map['packageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
      testResultName: pulumi.Output.create<String>(map['testResultName'] as String),
    );
  }
}

