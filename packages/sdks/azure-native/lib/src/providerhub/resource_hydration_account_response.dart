// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourceHydrationAccountResponse {
  /// The account name.
  final pulumi.Input<String>? accountName;
  /// The encrypted key.
  final pulumi.Input<String>? encryptedKey;
  /// The max child resource consistency job limit.
  final pulumi.Input<double>? maxChildResourceConsistencyJobLimit;
  /// The subscription id.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [ResourceHydrationAccountResponse].
  /// [accountName] The account name.
  /// [encryptedKey] The encrypted key.
  /// [maxChildResourceConsistencyJobLimit] The max child resource consistency job limit.
  /// [subscriptionId] The subscription id.
  ResourceHydrationAccountResponse({
    this.accountName,
    this.encryptedKey,
    this.maxChildResourceConsistencyJobLimit,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'encryptedKey': ?encryptedKey,
      'maxChildResourceConsistencyJobLimit': ?maxChildResourceConsistencyJobLimit,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory ResourceHydrationAccountResponse.fromMap(Map<String, dynamic> map) {
    return ResourceHydrationAccountResponse(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      encryptedKey: map['encryptedKey'] == null ? null : (map['encryptedKey']! as String).input(),
      maxChildResourceConsistencyJobLimit: map['maxChildResourceConsistencyJobLimit'] == null ? null : (map['maxChildResourceConsistencyJobLimit']! as double).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

