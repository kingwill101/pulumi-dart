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
    required this.packageName,
    required this.resourceGroupName,
    required this.testBaseAccountName,
    required this.testResultName,
  });

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
      packageName: (map['packageName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      testBaseAccountName: (map['testBaseAccountName'] as String).input(),
      testResultName: (map['testResultName'] as String).input(),
    );
  }
}

