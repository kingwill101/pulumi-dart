// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_package_download_urlargs_doc}
/// Arguments for getPackageDownloadURL.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_package_download_urlargs_doc}
class GetPackageDownloadURLArgs {
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetPackageDownloadURLArgs].
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  GetPackageDownloadURLArgs({
    required pulumi.Output<String> packageName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetPackageDownloadURLArgs.fromMap(Map<String, dynamic> map) {
    return GetPackageDownloadURLArgs(
      packageName: pulumi.Output.create<String>(map['packageName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

