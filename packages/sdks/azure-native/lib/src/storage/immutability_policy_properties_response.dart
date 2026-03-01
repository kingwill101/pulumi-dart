// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'update_history_property_response.dart';

/// The properties of an ImmutabilityPolicy of a blob container.
class ImmutabilityPolicyPropertiesResponse {
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  final bool? allowProtectedAppendWrites;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  final bool? allowProtectedAppendWritesAll;
  /// ImmutabilityPolicy Etag.
  final String etag;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final int? immutabilityPeriodSinceCreationInDays;
  /// The ImmutabilityPolicy state of a blob container, possible values include: Locked and Unlocked.
  final String state;
  /// The ImmutabilityPolicy update history of the blob container.
  final List<UpdateHistoryPropertyResponse> updateHistory;

  /// Creates a new [ImmutabilityPolicyPropertiesResponse].
  /// [allowProtectedAppendWrites] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  /// [allowProtectedAppendWritesAll] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  /// [etag] ImmutabilityPolicy Etag.
  /// [immutabilityPeriodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [state] The ImmutabilityPolicy state of a blob container, possible values include: Locked and Unlocked.
  /// [updateHistory] The ImmutabilityPolicy update history of the blob container.
  ImmutabilityPolicyPropertiesResponse({
    this.allowProtectedAppendWrites,
    this.allowProtectedAppendWritesAll,
    required this.etag,
    this.immutabilityPeriodSinceCreationInDays,
    required this.state,
    required this.updateHistory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWrites': ?allowProtectedAppendWrites,
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'etag': etag,
      'immutabilityPeriodSinceCreationInDays': ?immutabilityPeriodSinceCreationInDays,
      'state': state,
      'updateHistory': pulumi.Input.encodeList<UpdateHistoryPropertyResponse, Map<String, dynamic>>(updateHistory, (value) => value.toMap()),
    };
  }

  factory ImmutabilityPolicyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ImmutabilityPolicyPropertiesResponse(
      allowProtectedAppendWrites: map['allowProtectedAppendWrites'] == null ? null : map['allowProtectedAppendWrites'] as bool,
      allowProtectedAppendWritesAll: map['allowProtectedAppendWritesAll'] == null ? null : map['allowProtectedAppendWritesAll'] as bool,
      etag: map['etag'] as String,
      immutabilityPeriodSinceCreationInDays: map['immutabilityPeriodSinceCreationInDays'] == null ? null : map['immutabilityPeriodSinceCreationInDays'] as int,
      state: map['state'] as String,
      updateHistory: pulumi.Input.decodeList<UpdateHistoryPropertyResponse>(map['updateHistory'], (value) => UpdateHistoryPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

