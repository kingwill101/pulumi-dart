// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EmailRoutingDnsResultInfo {
  /// Total number of results for the requested service.
  final pulumi.Input<double?>? emailRoutingDnsCount;
  /// Current page within paginated list of results.
  final pulumi.Input<double?>? page;
  /// Number of results per page of results.
  final pulumi.Input<double?>? perPage;
  /// Total results available without any search parameters.
  final pulumi.Input<double?>? totalCount;
  /// The number of total pages in the entire result set.
  final pulumi.Input<double?>? totalPages;

  /// Creates a new [EmailRoutingDnsResultInfo].
  /// [emailRoutingDnsCount] Total number of results for the requested service.
  /// [page] Current page within paginated list of results.
  /// [perPage] Number of results per page of results.
  /// [totalCount] Total results available without any search parameters.
  /// [totalPages] The number of total pages in the entire result set.
  const EmailRoutingDnsResultInfo({
    this.emailRoutingDnsCount,
    this.page,
    this.perPage,
    this.totalCount,
    this.totalPages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'emailRoutingDnsCount': ?emailRoutingDnsCount,
      'page': ?page,
      'perPage': ?perPage,
      'totalCount': ?totalCount,
      'totalPages': ?totalPages,
    };
  }

  factory EmailRoutingDnsResultInfo.fromMap(Map<String, dynamic> map) {
    return EmailRoutingDnsResultInfo(
      emailRoutingDnsCount: (() { final guardedValue = map['emailRoutingDnsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      page: (() { final guardedValue = map['page']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      perPage: (() { final guardedValue = map['perPage']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalCount: (() { final guardedValue = map['totalCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      totalPages: (() { final guardedValue = map['totalPages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
