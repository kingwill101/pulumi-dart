// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountDataStore {
  /// The ID of the Storage Account that should be linked to this Azure Maps Account.
  final pulumi.Input<String>? storageAccountId;
  /// The name given to the linked Storage Account.
  final pulumi.Input<String> uniqueName;

  /// Creates a new [AccountDataStore].
  /// [storageAccountId] The ID of the Storage Account that should be linked to this Azure Maps Account.
  /// [uniqueName] The name given to the linked Storage Account.
  AccountDataStore({
    this.storageAccountId,
    required this.uniqueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'storageAccountId': ?storageAccountId,
      'uniqueName': uniqueName,
    };
  }

  factory AccountDataStore.fromMap(Map<String, dynamic> map) {
    return AccountDataStore(
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uniqueName: pulumi.Input.fromValue(map['uniqueName'] as String),
    );
  }
}

