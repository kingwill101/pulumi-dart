// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An update history of the ImmutabilityPolicy of a blob container.
class UpdateHistoryPropertyResponse {
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  final pulumi.Input<bool>? allowProtectedAppendWrites;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  final pulumi.Input<bool>? allowProtectedAppendWritesAll;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final pulumi.Input<int> immutabilityPeriodSinceCreationInDays;
  /// Returns the Object ID of the user who updated the ImmutabilityPolicy.
  final pulumi.Input<String> objectIdentifier;
  /// Returns the Tenant ID that issued the token for the user who updated the ImmutabilityPolicy.
  final pulumi.Input<String> tenantId;
  /// Returns the date and time the ImmutabilityPolicy was updated.
  final pulumi.Input<String> timestamp;
  /// The ImmutabilityPolicy update type of a blob container, possible values include: put, lock and extend.
  final pulumi.Input<String> update;
  /// Returns the User Principal Name of the user who updated the ImmutabilityPolicy.
  final pulumi.Input<String> upn;

  /// Creates a new [UpdateHistoryPropertyResponse].
  /// [allowProtectedAppendWrites] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  /// [allowProtectedAppendWritesAll] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  /// [immutabilityPeriodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [objectIdentifier] Returns the Object ID of the user who updated the ImmutabilityPolicy.
  /// [tenantId] Returns the Tenant ID that issued the token for the user who updated the ImmutabilityPolicy.
  /// [timestamp] Returns the date and time the ImmutabilityPolicy was updated.
  /// [update] The ImmutabilityPolicy update type of a blob container, possible values include: put, lock and extend.
  /// [upn] Returns the User Principal Name of the user who updated the ImmutabilityPolicy.
  const UpdateHistoryPropertyResponse({
    this.allowProtectedAppendWrites,
    this.allowProtectedAppendWritesAll,
    required this.immutabilityPeriodSinceCreationInDays,
    required this.objectIdentifier,
    required this.tenantId,
    required this.timestamp,
    required this.update,
    required this.upn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWrites': ?allowProtectedAppendWrites,
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'immutabilityPeriodSinceCreationInDays': immutabilityPeriodSinceCreationInDays,
      'objectIdentifier': objectIdentifier,
      'tenantId': tenantId,
      'timestamp': timestamp,
      'update': update,
      'upn': upn,
    };
  }

  factory UpdateHistoryPropertyResponse.fromMap(Map<String, dynamic> map) {
    return UpdateHistoryPropertyResponse(
      allowProtectedAppendWrites: (() { final guardedValue = map['allowProtectedAppendWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowProtectedAppendWritesAll: (() { final guardedValue = map['allowProtectedAppendWritesAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      immutabilityPeriodSinceCreationInDays: pulumi.Input.fromValue(map['immutabilityPeriodSinceCreationInDays'] as int),
      objectIdentifier: pulumi.Input.fromValue(map['objectIdentifier'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      timestamp: pulumi.Input.fromValue(map['timestamp'] as String),
      update: pulumi.Input.fromValue(map['update'] as String),
      upn: pulumi.Input.fromValue(map['upn'] as String),
    );
  }
}

