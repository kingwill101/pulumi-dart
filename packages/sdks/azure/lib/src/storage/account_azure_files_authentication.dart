// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_azure_files_authentication_active_directory.dart';

class AccountAzureFilesAuthentication {
  /// A `active_directory` block as defined below. Required when `directory_type` is `AD`.
  final pulumi.Input<AccountAzureFilesAuthenticationActiveDirectory>? activeDirectory;
  /// Specifies the default share level permissions applied to all users. Possible values are `StorageFileDataSmbShareReader`, `StorageFileDataSmbShareContributor`, `StorageFileDataSmbShareElevatedContributor`, or `None`. Defaults to `None`.
  final pulumi.Input<String>? defaultShareLevelPermission;
  /// Specifies the directory service used. Possible values are `AADDS`, `AD` and `AADKERB`.
  final pulumi.Input<String> directoryType;

  /// Creates a new [AccountAzureFilesAuthentication].
  /// [activeDirectory] A `active_directory` block as defined below. Required when `directory_type` is `AD`.
  /// [defaultShareLevelPermission] Specifies the default share level permissions applied to all users. Possible values are `StorageFileDataSmbShareReader`, `StorageFileDataSmbShareContributor`, `StorageFileDataSmbShareElevatedContributor`, or `None`. Defaults to `None`.
  /// [directoryType] Specifies the directory service used. Possible values are `AADDS`, `AD` and `AADKERB`.
  AccountAzureFilesAuthentication({
    this.activeDirectory,
    this.defaultShareLevelPermission,
    required this.directoryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectory': ?pulumi.Input.mapOptionalInputValue<AccountAzureFilesAuthenticationActiveDirectory, Map<String, dynamic>>(activeDirectory, (value) => value.toMap()),
      'defaultShareLevelPermission': ?defaultShareLevelPermission,
      'directoryType': directoryType,
    };
  }

  factory AccountAzureFilesAuthentication.fromMap(Map<String, dynamic> map) {
    return AccountAzureFilesAuthentication(
      activeDirectory: map['activeDirectory'] == null ? null : (AccountAzureFilesAuthenticationActiveDirectory.fromMap((map['activeDirectory']! as Map).cast<String, dynamic>())).input(),
      defaultShareLevelPermission: map['defaultShareLevelPermission'] == null ? null : (map['defaultShareLevelPermission']! as String).input(),
      directoryType: (map['directoryType'] as String).input(),
    );
  }
}

