// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_data_tag_categories_result_tag.dart';

class GetZeroTrustDlpDataTagCategoriesResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetZeroTrustDlpDataTagCategoriesResultTag>> tags;
  final pulumi.Input<String> templateId;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDlpDataTagCategoriesResult].
  /// [createdAt] Required.
  /// [description] Required.
  /// [id] Required.
  /// [name] Required.
  /// [tags] Required.
  /// [templateId] Required.
  /// [updatedAt] Required.
  const GetZeroTrustDlpDataTagCategoriesResult({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
    required this.tags,
    required this.templateId,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'name': name,
      'tags': pulumi.Input.mapInputValue<List<GetZeroTrustDlpDataTagCategoriesResultTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetZeroTrustDlpDataTagCategoriesResultTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'templateId': templateId,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDlpDataTagCategoriesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataTagCategoriesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      tags: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpDataTagCategoriesResultTag>(map['tags']!, (value) => GetZeroTrustDlpDataTagCategoriesResultTag.fromMap((value as Map).cast<String, dynamic>()))),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
