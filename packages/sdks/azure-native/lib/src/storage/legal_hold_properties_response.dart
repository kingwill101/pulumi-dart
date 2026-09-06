// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_append_writes_history_response.dart';
import 'tag_property_response.dart';

/// The LegalHold property of a blob container.
class LegalHoldPropertiesResponse {
  /// The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  final pulumi.Input<bool> hasLegalHold;
  /// Protected append blob writes history.
  final pulumi.Input<ProtectedAppendWritesHistoryResponse?>? protectedAppendWritesHistory;
  /// The list of LegalHold tags of a blob container.
  final pulumi.Input<List<TagPropertyResponse>?>? tags;

  /// Creates a new [LegalHoldPropertiesResponse].
  /// [hasLegalHold] The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  /// [protectedAppendWritesHistory] Protected append blob writes history.
  /// [tags] The list of LegalHold tags of a blob container.
  const LegalHoldPropertiesResponse({
    required this.hasLegalHold,
    this.protectedAppendWritesHistory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasLegalHold': hasLegalHold,
      'protectedAppendWritesHistory': ?pulumi.Input.mapOptionalInputValue<ProtectedAppendWritesHistoryResponse, Map<String, dynamic>>(protectedAppendWritesHistory, (value) => value.toMap()),
      'tags': ?pulumi.Input.mapOptionalInputValue<List<TagPropertyResponse>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<TagPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LegalHoldPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LegalHoldPropertiesResponse(
      hasLegalHold: pulumi.Input.fromValue(map['hasLegalHold'] as bool),
      protectedAppendWritesHistory: (() { final guardedValue = map['protectedAppendWritesHistory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProtectedAppendWritesHistoryResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TagPropertyResponse>(guardedValue, (value) => TagPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
