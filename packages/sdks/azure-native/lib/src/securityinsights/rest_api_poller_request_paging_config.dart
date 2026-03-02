// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request paging configuration.
class RestApiPollerRequestPagingConfig {
  /// Page size
  final pulumi.Input<int>? pageSize;
  /// Page size parameter name
  final pulumi.Input<String>? pageSizeParameterName;
  /// Type of paging
  final pulumi.Input<String> pagingType;

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
      pageSize: map['pageSize'] == null ? null : (map['pageSize']! as int).input(),
      pageSizeParameterName: map['pageSizeParameterName'] == null ? null : (map['pageSizeParameterName']! as String).input(),
      pagingType: (map['pagingType'] as String).input(),
    );
  }
}

