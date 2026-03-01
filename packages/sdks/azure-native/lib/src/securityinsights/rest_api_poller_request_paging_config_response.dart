// ignore_for_file: unused_element, unnecessary_cast


/// The request paging configuration.
class RestApiPollerRequestPagingConfigResponse {
  /// Page size
  final int? pageSize;
  /// Page size parameter name
  final String? pageSizeParameterName;
  /// Type of paging
  final String pagingType;

  /// Creates a new [RestApiPollerRequestPagingConfigResponse].
  /// [pageSize] Page size
  /// [pageSizeParameterName] Page size parameter name
  /// [pagingType] Type of paging
  RestApiPollerRequestPagingConfigResponse({
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

  factory RestApiPollerRequestPagingConfigResponse.fromMap(Map<String, dynamic> map) {
    return RestApiPollerRequestPagingConfigResponse(
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      pageSizeParameterName: map['pageSizeParameterName'] == null ? null : map['pageSizeParameterName'] as String,
      pagingType: map['pagingType'] as String,
    );
  }
}

