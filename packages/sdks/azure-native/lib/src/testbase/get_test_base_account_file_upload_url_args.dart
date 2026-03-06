// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_test_base_account_file_upload_url_args_doc}
/// Arguments for getTestBaseAccountFileUploadUrl.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_test_base_account_file_upload_url_args_doc}
class GetTestBaseAccountFileUploadUrlArgs {
  /// The custom file name of the uploaded blob.
  final pulumi.Input<String>? blobName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource type for file uploading.
  final pulumi.Input<String>? resourceType;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;

  /// Creates a new [GetTestBaseAccountFileUploadUrlArgs].
  /// [blobName] The custom file name of the uploaded blob.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceType] Resource type for file uploading.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  const GetTestBaseAccountFileUploadUrlArgs({
    this.blobName,
    required this.resourceGroupName,
    this.resourceType,
    required this.testBaseAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blobName': ?blobName,
      'resourceGroupName': resourceGroupName,
      'resourceType': ?resourceType,
      'testBaseAccountName': testBaseAccountName,
    };
  }

  factory GetTestBaseAccountFileUploadUrlArgs.fromMap(Map<String, dynamic> map) {
    return GetTestBaseAccountFileUploadUrlArgs(
      blobName: (() { final guardedValue = map['blobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourceType: (() { final guardedValue = map['resourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testBaseAccountName: pulumi.Input.fromValue(map['testBaseAccountName'] as String),
    );
  }
}

