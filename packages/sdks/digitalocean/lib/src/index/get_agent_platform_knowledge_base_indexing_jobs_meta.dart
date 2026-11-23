// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAgentPlatformKnowledgeBaseIndexingJobsMeta {
  /// Current page number
  final pulumi.Input<int> page;
  /// Total number of pages
  final pulumi.Input<int> pages;
  /// Total number of items
  final pulumi.Input<int> total;

  /// Creates a new [GetAgentPlatformKnowledgeBaseIndexingJobsMeta].
  /// [page] Current page number
  /// [pages] Total number of pages
  /// [total] Total number of items
  const GetAgentPlatformKnowledgeBaseIndexingJobsMeta({
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

  factory GetAgentPlatformKnowledgeBaseIndexingJobsMeta.fromMap(Map<String, dynamic> map) {
    return GetAgentPlatformKnowledgeBaseIndexingJobsMeta(
      page: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['page'])),
      pages: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['pages'])),
      total: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['total'])),
    );
  }
}
