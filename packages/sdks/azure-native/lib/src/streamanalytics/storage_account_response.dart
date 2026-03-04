// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties that are associated with an Azure Storage account
class StorageAccountResponse {
  /// The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountKey;

  /// The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  final pulumi.Input<String>? accountName;

  /// Creates a new [StorageAccountResponse].
  /// [accountKey] The account key for the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  /// [accountName] The name of the Azure Storage account. Required on PUT (CreateOrReplace) requests.
  StorageAccountResponse({this.accountKey, this.accountName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'accountName': ?accountName,
    };
  }

  factory StorageAccountResponse.fromMap(Map<String, dynamic> map) {
    return StorageAccountResponse(
      accountKey: (() {
        final guardedValue = map['accountKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountName: (() {
        final guardedValue = map['accountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
