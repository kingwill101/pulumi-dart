// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGradientaiKnowledgeBaseIndexingJobsMeta {
  /// Current page number
  final pulumi.Input<int> page;
  /// Total number of pages
  final pulumi.Input<int> pages;
  /// Total number of items
  final pulumi.Input<int> total;

  /// Creates a new [GetGradientaiKnowledgeBaseIndexingJobsMeta].
  /// [page] Current page number
  /// [pages] Total number of pages
  /// [total] Total number of items
  GetGradientaiKnowledgeBaseIndexingJobsMeta({
    required this.page,
    required this.pages,
    required this.total,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'page': page,
      'pages': pages,
      'total': total,
    };
  }

  factory GetGradientaiKnowledgeBaseIndexingJobsMeta.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseIndexingJobsMeta(
      page: pulumi.Input.fromValue(map['page'] as int),
      pages: pulumi.Input.fromValue(map['pages'] as int),
      total: pulumi.Input.fromValue(map['total'] as int),
    );
  }
}

