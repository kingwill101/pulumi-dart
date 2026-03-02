// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiKnowledgeBaseIndexingJobsMeta {
  /// Current page number
  final pulumi.Input<int> page;
  /// Total number of pages
  final pulumi.Input<int> pages;
  /// Total number of items
  final pulumi.Input<int> total;

  /// Creates a new [GetGenaiKnowledgeBaseIndexingJobsMeta].
  /// [page] Current page number
  /// [pages] Total number of pages
  /// [total] Total number of items
  GetGenaiKnowledgeBaseIndexingJobsMeta({
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

  factory GetGenaiKnowledgeBaseIndexingJobsMeta.fromMap(Map<String, dynamic> map) {
    return GetGenaiKnowledgeBaseIndexingJobsMeta(
      page: (map['page'] as int).input(),
      pages: (map['pages'] as int).input(),
      total: (map['total'] as int).input(),
    );
  }
}

