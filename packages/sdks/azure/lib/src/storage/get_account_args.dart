// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_account_get_account_args_doc}
/// Arguments for getAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_account_get_account_args_doc}
class GetAccountArgs {
  /// The minimum supported TLS version for this storage account.
  final pulumi.Input<String>? minTlsVersion;
  /// Specifies the name of the Storage Account
  final pulumi.Input<String> name;
  /// Specifies the name of the resource group the Storage Account is located in.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [GetAccountArgs].
  /// [minTlsVersion] The minimum supported TLS version for this storage account.
  /// [name] Specifies the name of the Storage Account
  /// [resourceGroupName] Specifies the name of the resource group the Storage Account is located in.
  GetAccountArgs({
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
      minTlsVersion: map['minTlsVersion'] == null ? null : (map['minTlsVersion'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
    );
  }
}

