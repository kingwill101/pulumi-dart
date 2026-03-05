// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_azure_files_authentication_active_directory.dart';

class GetAccountAzureFilesAuthentication {
  /// An `active_directory` block as documented below.
  final pulumi.Input<List<GetAccountAzureFilesAuthenticationActiveDirectory>> activeDirectories;
  /// The default share level permissions applied to all users.
  final pulumi.Input<String> defaultShareLevelPermission;
  /// The directory service used for this Storage Account.
  final pulumi.Input<String> directoryType;

  /// Creates a new [GetAccountAzureFilesAuthentication].
  /// [activeDirectories] An `active_directory` block as documented below.
  /// [defaultShareLevelPermission] The default share level permissions applied to all users.
  /// [directoryType] The directory service used for this Storage Account.
  GetAccountAzureFilesAuthentication({
    required this.activeDirectories,
    required this.defaultShareLevelPermission,
    required this.directoryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectories': pulumi.Input.mapInputValue<List<GetAccountAzureFilesAuthenticationActiveDirectory>, List<Map<String, dynamic>>>(activeDirectories, (value) => pulumi.Input.encodeList<GetAccountAzureFilesAuthenticationActiveDirectory, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultShareLevelPermission': defaultShareLevelPermission,
      'directoryType': directoryType,
    };
  }

  factory GetAccountAzureFilesAuthentication.fromMap(Map<String, dynamic> map) {
    return GetAccountAzureFilesAuthentication(
      activeDirectories: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAccountAzureFilesAuthenticationActiveDirectory>(map['activeDirectories']!, (value) => GetAccountAzureFilesAuthenticationActiveDirectory.fromMap((value as Map).cast<String, dynamic>()))),
      defaultShareLevelPermission: pulumi.Input.fromValue(map['defaultShareLevelPermission'] as String),
      directoryType: pulumi.Input.fromValue(map['directoryType'] as String),
    );
  }
}

