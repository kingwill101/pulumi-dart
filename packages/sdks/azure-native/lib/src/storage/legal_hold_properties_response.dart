// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'protected_append_writes_history_response.dart';
import 'tag_property_response.dart';

/// The LegalHold property of a blob container.
class LegalHoldPropertiesResponse {
  /// The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  final bool hasLegalHold;
  /// Protected append blob writes history.
  final ProtectedAppendWritesHistoryResponse? protectedAppendWritesHistory;
  /// The list of LegalHold tags of a blob container.
  final List<TagPropertyResponse>? tags;

  /// Creates a new [LegalHoldPropertiesResponse].
  /// [hasLegalHold] The hasLegalHold public property is set to true by SRP if there are at least one existing tag. The hasLegalHold public property is set to false by SRP if all existing legal hold tags are cleared out. There can be a maximum of 1000 blob containers with hasLegalHold=true for a given account.
  /// [protectedAppendWritesHistory] Protected append blob writes history.
  /// [tags] The list of LegalHold tags of a blob container.
  LegalHoldPropertiesResponse({
    required this.hasLegalHold,
    this.protectedAppendWritesHistory,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasLegalHold': hasLegalHold,
      'protectedAppendWritesHistory': ?protectedAppendWritesHistory == null ? null : protectedAppendWritesHistory!.toMap(),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<TagPropertyResponse, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory LegalHoldPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return LegalHoldPropertiesResponse(
      hasLegalHold: map['hasLegalHold'] as bool,
      protectedAppendWritesHistory: map['protectedAppendWritesHistory'] == null ? null : ProtectedAppendWritesHistoryResponse.fromMap((map['protectedAppendWritesHistory'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<TagPropertyResponse>(map['tags'], (value) => TagPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

