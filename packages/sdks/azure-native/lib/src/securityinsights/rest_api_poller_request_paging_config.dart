// ignore_for_file: unused_element, unnecessary_cast


/// The request paging configuration.
class RestApiPollerRequestPagingConfig {
  /// Page size
  final int? pageSize;
  /// Page size parameter name
  final String? pageSizeParameterName;
  /// Type of paging
  final String pagingType;

  /// Creates a new [RestApiPollerRequestPagingConfig].
  /// [pageSize] Page size
  /// [pageSizeParameterName] Page size parameter name
  /// [pagingType] Type of paging
  RestApiPollerRequestPagingConfig({
    this.pageSize,
    this.pageSizeParameterName,
    required this.pagingType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pageSize': ?pageSize,
      'pageSizeParameterName': ?pageSizeParameterName,
      'pagingType': pagingType,
    };
  }

  factory RestApiPollerRequestPagingConfig.fromMap(Map<String, dynamic> map) {
    return RestApiPollerRequestPagingConfig(
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      pageSizeParameterName: map['pageSizeParameterName'] == null ? null : map['pageSizeParameterName'] as String,
      pagingType: map['pagingType'] as String,
    );
  }
}

