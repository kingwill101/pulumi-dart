// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The request paging configuration.
class RestApiPollerRequestPagingConfigResponse {
  /// Page size
  final pulumi.Input<int?>? pageSize;
  /// Page size parameter name
  final pulumi.Input<String?>? pageSizeParameterName;
  /// Type of paging
  final pulumi.Input<String> pagingType;

  /// Creates a new [RestApiPollerRequestPagingConfigResponse].
  /// [pageSize] Page size
  /// [pageSizeParameterName] Page size parameter name
  /// [pagingType] Type of paging
  const RestApiPollerRequestPagingConfigResponse({
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
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      pageSizeParameterName: (() { final guardedValue = map['pageSizeParameterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pagingType: pulumi.Input.fromValue(map['pagingType'] as String),
    );
  }
}
