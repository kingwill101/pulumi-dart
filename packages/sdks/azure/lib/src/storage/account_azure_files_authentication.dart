// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_azure_files_authentication_active_directory.dart';

class AccountAzureFilesAuthentication {
  /// A `activeDirectory` block as defined below. Required when `directoryType` is `AD`.
  final pulumi.Input<AccountAzureFilesAuthenticationActiveDirectory?>? activeDirectory;
  /// Specifies the default share level permissions applied to all users. Possible values are `StorageFileDataSmbShareReader`, `StorageFileDataSmbShareContributor`, `StorageFileDataSmbShareElevatedContributor`, or `None`. Defaults to `None`.
  final pulumi.Input<String?>? defaultShareLevelPermission;
  /// Specifies the directory service used. Possible values are `AADDS`, `AD` and `AADKERB`.
  final pulumi.Input<String> directoryType;

  /// Creates a new [AccountAzureFilesAuthentication].
  /// [activeDirectory] A `activeDirectory` block as defined below. Required when `directoryType` is `AD`.
  /// [defaultShareLevelPermission] Specifies the default share level permissions applied to all users. Possible values are `StorageFileDataSmbShareReader`, `StorageFileDataSmbShareContributor`, `StorageFileDataSmbShareElevatedContributor`, or `None`. Defaults to `None`.
  /// [directoryType] Specifies the directory service used. Possible values are `AADDS`, `AD` and `AADKERB`.
  const AccountAzureFilesAuthentication({
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
      activeDirectory: (() { final guardedValue = map['activeDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountAzureFilesAuthenticationActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      defaultShareLevelPermission: (() { final guardedValue = map['defaultShareLevelPermission']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      directoryType: pulumi.Input.fromValue(map['directoryType'] as String),
    );
  }
}
