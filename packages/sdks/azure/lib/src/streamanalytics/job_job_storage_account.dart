// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobJobStorageAccount {
  /// The account key for the Azure storage account.
  final pulumi.Input<String>? accountKey;
  /// The name of the Azure storage account.
  final pulumi.Input<String> accountName;
  /// The authentication mode of the storage account. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  final pulumi.Input<String>? authenticationMode;

  /// Creates a new [JobJobStorageAccount].
  /// [accountKey] The account key for the Azure storage account.
  /// [accountName] The name of the Azure storage account.
  /// [authenticationMode] The authentication mode of the storage account. Possible values are `ConnectionString` and `Msi`. Defaults to `ConnectionString`.
  const JobJobStorageAccount({
    this.accountKey,
    required this.accountName,
    this.authenticationMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': accountName,
      'authenticationMode': ?authenticationMode,
    };
  }

  factory JobJobStorageAccount.fromMap(Map<String, dynamic> map) {
    return JobJobStorageAccount(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      authenticationMode: (() { final guardedValue = map['authenticationMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
