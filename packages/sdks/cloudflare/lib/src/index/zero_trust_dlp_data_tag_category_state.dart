// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_data_tag_category_tag.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpDataTagCategory resources.
class ZeroTrustDlpDataTagCategoryState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<ZeroTrustDlpDataTagCategoryTag>?>? tags;
  final pulumi.Input<String?>? templateId;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDlpDataTagCategoryState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [name] Optional.
  /// [tags] Optional.
  /// [templateId] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDlpDataTagCategoryState({
    this.accountId,
    this.createdAt,
    this.description,
    this.name,
    this.tags,
    this.templateId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpDataTagCategoryTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<ZeroTrustDlpDataTagCategoryTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateId': ?templateId,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDlpDataTagCategoryState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataTagCategoryState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDataTagCategoryTag>(guardedValue, (value) => ZeroTrustDlpDataTagCategoryTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
