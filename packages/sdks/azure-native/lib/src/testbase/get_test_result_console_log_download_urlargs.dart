// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_test_result_console_log_download_urlargs_doc}
/// Arguments for getTestResultConsoleLogDownloadURL.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_test_result_console_log_download_urlargs_doc}
class GetTestResultConsoleLogDownloadURLArgs {
  /// The log file name corresponding to the download URL.
  final pulumi.Input<String> logFileName;
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;
  /// The Test Result Name. It equals to TestResult-{TestResultId} string.
  final pulumi.Input<String> testResultName;

  /// Creates a new [GetTestResultConsoleLogDownloadURLArgs].
  /// [logFileName] The log file name corresponding to the download URL.
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  /// [testResultName] The Test Result Name. It equals to TestResult-{TestResultId} string.
  const GetTestResultConsoleLogDownloadURLArgs({
    required this.logFileName,
    required this.packageName,
    required this.resourceGroupName,
    required this.testBaseAccountName,
    required this.testResultName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFileName': logFileName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
      'testResultName': testResultName,
    };
  }

  factory GetTestResultConsoleLogDownloadURLArgs.fromMap(Map<String, dynamic> map) {
    return GetTestResultConsoleLogDownloadURLArgs(
      logFileName: pulumi.Input.fromValue(map['logFileName'] as String),
      packageName: pulumi.Input.fromValue(map['packageName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
      testResultName: pulumi.Input.fromValue(map['testResultName'] as String),
    );
  }
}

