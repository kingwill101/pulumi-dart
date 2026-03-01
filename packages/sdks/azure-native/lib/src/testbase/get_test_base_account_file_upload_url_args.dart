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
  GetTestBaseAccountFileUploadUrlArgs({
    pulumi.Output<String>? blobName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? resourceType,
    required pulumi.Output<String> testBaseAccountName,
  }) :
      blobName = pulumi.Input.asOptionalInput<String>(blobName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName);

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
      blobName: map['blobName'] == null ? null : pulumi.Output.create<String>(map['blobName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      testBaseAccountName: pulumi.Output.create<String>(map['testBaseAccountName'] as String),
    );
  }
}

