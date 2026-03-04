// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_file_share_args_doc}
/// Arguments for getFileShare.
/// {@endtemplate}
/// {@macro pulumi_storage_get_file_share_args_doc}
class GetFileShareArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;

  /// Optional, used to expand the properties within share's properties. Valid values are: stats. Should be passed as a string with delimiter ','.
  final pulumi.Input<String>? expand;

  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  final pulumi.Input<String> shareName;

  /// Creates a new [GetFileShareArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [expand] Optional, used to expand the properties within share's properties. Valid values are: stats. Should be passed as a string with delimiter ','.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  /// [shareName] The name of the file share within the specified storage account. File share names must be between 3 and 63 characters in length and use numbers, lower-case letters and dash (-) only. Every dash (-) character must be immediately preceded and followed by a letter or number.
  GetFileShareArgs({
    required this.accountName,
    this.expand,
    required this.resourceGroupName,
    required this.shareName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
      'shareName': shareName,
    };
  }

  factory GetFileShareArgs.fromMap(Map<String, dynamic> map) {
    return GetFileShareArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      shareName: pulumi.Input.fromValue(map['shareName'] as String),
    );
  }
}
