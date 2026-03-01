// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiKnowledgeBaseIndexingJobsMeta {
  /// Current page number
  final int page;
  /// Total number of pages
  final int pages;
  /// Total number of items
  final int total;

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
      page: map['page'] as int,
      pages: map['pages'] as int,
      total: map['total'] as int,
    );
  }
}

