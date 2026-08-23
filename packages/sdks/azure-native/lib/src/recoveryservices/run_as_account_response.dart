// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CS Accounts Details.
class RunAsAccountResponse {
  /// The CS RunAs account Id.
  final pulumi.Input<String>? accountId;
  /// The CS RunAs account name.
  final pulumi.Input<String>? accountName;

  /// Creates a new [RunAsAccountResponse].
  /// [accountId] The CS RunAs account Id.
  /// [accountName] The CS RunAs account name.
  const RunAsAccountResponse({
    this.accountId,
    this.accountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'accountName': ?accountName,
    };
  }

  factory RunAsAccountResponse.fromMap(Map<String, dynamic> map) {
    return RunAsAccountResponse(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      accountName: (() { final guardedValue = map['accountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
