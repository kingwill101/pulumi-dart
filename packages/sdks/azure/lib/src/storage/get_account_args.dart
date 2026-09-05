// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_account_get_account_args_doc}
class GetAccountArgs {
  /// The minimum supported TLS version for this storage account.
  final pulumi.Input<String?>? minTlsVersion;
  /// Specifies the name of the Storage Account
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Storage Account is located in.
  final pulumi.Input<String?>? resourceGroupName;

  /// Creates a new [GetAccountArgs].
  /// [minTlsVersion] The minimum supported TLS version for this storage account.
  /// [name] Specifies the name of the Storage Account
  /// [resourceGroupName] Specifies the name of the resource group the Storage Account is located in.
  const GetAccountArgs({
    this.minTlsVersion,
    required this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minTlsVersion': ?minTlsVersion,
      'name': name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountArgs(
      minTlsVersion: (() { final guardedValue = map['minTlsVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
