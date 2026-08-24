// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEmailRoutingDnsResultInfo {
  /// Total number of results for the requested service.
  final pulumi.Input<double> emailRoutingDnsCount;
  /// Current page within paginated list of results.
  final pulumi.Input<double> page;
  /// Number of results per page of results.
  final pulumi.Input<double> perPage;
  /// Total results available without any search parameters.
  final pulumi.Input<double> totalCount;
  /// The number of total pages in the entire result set.
  final pulumi.Input<double> totalPages;

  /// Creates a new [GetEmailRoutingDnsResultInfo].
  /// [emailRoutingDnsCount] Total number of results for the requested service.
  /// [page] Current page within paginated list of results.
  /// [perPage] Number of results per page of results.
  /// [totalCount] Total results available without any search parameters.
  /// [totalPages] The number of total pages in the entire result set.
  const GetEmailRoutingDnsResultInfo({
    required this.emailRoutingDnsCount,
    required this.page,
    required this.perPage,
    required this.totalCount,
    required this.totalPages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailRoutingDnsCount': emailRoutingDnsCount,
      'page': page,
      'perPage': perPage,
      'totalCount': totalCount,
      'totalPages': totalPages,
    };
  }

  factory GetEmailRoutingDnsResultInfo.fromMap(Map<String, dynamic> map) {
    return GetEmailRoutingDnsResultInfo(
      emailRoutingDnsCount: pulumi.Input.fromValue((map['emailRoutingDnsCount'] as num).toDouble()),
      page: pulumi.Input.fromValue((map['page'] as num).toDouble()),
      perPage: pulumi.Input.fromValue((map['perPage'] as num).toDouble()),
      totalCount: pulumi.Input.fromValue((map['totalCount'] as num).toDouble()),
      totalPages: pulumi.Input.fromValue((map['totalPages'] as num).toDouble()),
    );
  }
}
