// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request paging configuration.
class RestApiPollerRequestPagingConfigResponse {
  /// Page size
  final pulumi.Input<int>? pageSize;
  /// Page size parameter name
  final pulumi.Input<String>? pageSizeParameterName;
  /// Type of paging
  final pulumi.Input<String> pagingType;

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
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      pageSizeParameterName: map['pageSizeParameterName'] == null ? null : (map['pageSizeParameterName']! as String).input(),
      pagingType: (map['pagingType'] as String).input(),
    );
  }
}

