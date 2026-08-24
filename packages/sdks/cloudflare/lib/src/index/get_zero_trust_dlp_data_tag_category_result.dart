// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_data_tag_category_tag.dart';

/// Result data returned by getZeroTrustDlpDataTagCategory.
class GetZeroTrustDlpDataTagCategoryResult {
  final String? accountId;
  final String? categoryId;
  final String? createdAt;
  final String? description;
  /// The ID of this resource.
  final String? id;
  final String? name;
  final List<GetZeroTrustDlpDataTagCategoryTag>? tags;
  final String? templateId;
  final String? updatedAt;

  /// Creates a new [GetZeroTrustDlpDataTagCategoryResult].
  /// [accountId] Optional.
  /// [categoryId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [id] The ID of this resource.
  /// [name] Optional.
  /// [tags] Optional.
  /// [templateId] Optional.
  /// [updatedAt] Optional.
  const GetZeroTrustDlpDataTagCategoryResult({
    this.accountId,
    this.categoryId,
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.tags,
    this.templateId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'categoryId': ?categoryId,
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'tags': ?(() { final guardedValue = tags; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetZeroTrustDlpDataTagCategoryTag, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'templateId': ?templateId,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetZeroTrustDlpDataTagCategoryResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagCategoryResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetZeroTrustDlpDataTagCategoryTag>(guardedValue, (value) => GetZeroTrustDlpDataTagCategoryTag.fromMap((value as Map).cast<String, dynamic>())); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
