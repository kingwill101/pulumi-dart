// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustResourceLibraryApplicationFilter {
  /// Return only the listed properties on each application, as a comma-separated list.
  /// Use this to keep responses small when you only need part of each application — for
  /// example populating a picker with `fields=id,name` instead of downloading every
  /// hostname and IP subnet.
  final pulumi.Input<String?>? fields;
  /// Filter applications using key:value format. Supported filter keys:
  /// - name: Filter by application name (e.g., name:HR)
  /// - id: Filter by application ID (e.g., id:498)
  /// - human_id: Filter by human-readable ID (e.g., human_id:HR)
  /// - hostname: Filter by hostname or support domain (e.g., hostname:portal.example.com)
  /// - source: Filter by application source name (e.g., source:cloudflare)
  /// - ip_subnet: Filter by IP subnet using CIDR containment — returns applications where any stored subnet contains the search value (e.g., ip_subnet:10.0.1.5/32 matches apps with 10.0.0.0/16)
  /// - category_id: Filter by category ID (e.g., category_id:12).
  /// - category_name: Filter by category name (e.g., category_name:HR).
  /// - supported: Filter by supported Cloudflare product (e.g., supported:ACCESS). Values: GATEWAY, ACCESS, CASB.
  /// - review_status: Filter by the account's Gateway review status. Values: approved, unapproved, in_review, unreviewed.
  /// .
  final pulumi.Input<String?>? filter;
  /// Limit of number of results to return (max 250).
  final pulumi.Input<int> limit;
  /// Offset of results to return.
  final pulumi.Input<int> offset;
  /// Order results using field:direction format. Supported fields are name, id, human_id,
  /// category_id, application_type, application_confidence_score, and gen_ai_score.
  /// Supported directions are asc and desc. Ignored when search is provided; results are
  /// ranked by relevance instead.
  final pulumi.Input<String?>? orderBy;
  /// Fuzzy search across application name and hostnames. Results are ranked by relevance. Must be between 2 and 200 characters. Can be combined with filter parameters.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationFilter].
  /// [fields] Return only the listed properties on each application, as a comma-separated list.
  /// [filter] Filter applications using key:value format. Supported filter keys:
  /// [limit] Limit of number of results to return (max 250).
  /// [offset] Offset of results to return.
  /// [orderBy] Order results using field:direction format. Supported fields are name, id, human_id,
  /// [search] Fuzzy search across application name and hostnames. Results are ranked by relevance. Must be between 2 and 200 characters. Can be combined with filter parameters.
  const GetZeroTrustResourceLibraryApplicationFilter({
    this.fields,
    this.filter,
    required this.limit,
    required this.offset,
    this.orderBy,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
      'filter': ?filter,
      'limit': limit,
      'offset': offset,
      'orderBy': ?orderBy,
      'search': ?search,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationFilter.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationFilter(
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['limit'])),
      offset: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['offset'])),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
