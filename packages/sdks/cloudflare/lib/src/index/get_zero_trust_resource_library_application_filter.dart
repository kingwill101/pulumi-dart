// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustResourceLibraryApplicationFilter {
  /// Return only the listed properties on each application, as a comma-separated list.
  /// Use this to keep responses small when you only need part of each application, for
  /// example populating a picker with `fields=id,name` instead of downloading every
  /// hostname and IP subnet.
  final pulumi.Input<String?>? fields;
  /// Filter applications using `key:value` format. Supported filter keys:
  /// - `name`: application name (for example, `name:HR`).
  /// - `id`: application ID (for example, `id:498`).
  /// - `humanId`: human-readable ID (for example, `human_id:HR`).
  /// - `hostname`: hostname or support domain (for example, `hostname:portal.example.com`).
  /// - `source`: application source name (for example, `source:cloudflare`).
  /// - `ipSubnet`: CIDR containment; returns applications where a stored subnet contains the search value (for example, `ip_subnet:10.0.1.5/32` matches `10.0.0.0/16`).
  /// - `categoryId`: category ID (for example, `category_id:12`).
  /// - `categoryName`: category name (for example, `category_name:HR`).
  /// - `supported`: supported Cloudflare product. Values: `GATEWAY`, `ACCESS`, `CASB`.
  /// - `reviewStatus`: account-specific Gateway review status. Values: `approved`, `unapproved`, `inReview`, `unreviewed`.
  final pulumi.Input<String?>? filter;
  /// Number of results to return. Defaults to 25; values are clamped to 1–250.
  final pulumi.Input<int> limit;
  /// Find complete, case-insensitive application name mentions in a phrase or
  /// rule sentence. Misspelled names do not match. Returns matching applications
  /// ranked by relevance. Must be between 2 and 1000 characters. Uses the same
  /// filters, fields, and pagination as listing. `search` cannot be combined
  /// with lookup. Results are ranked by relevance, so `orderBy` is ignored.
  final pulumi.Input<String?>? lookup;
  /// Number of results to skip. Defaults to 0; negative values are clamped to 0.
  final pulumi.Input<int> offset;
  /// Order results using field:direction format. Supported fields are name, id, human_id,
  /// category_id, application_type, application_confidence_score, and gen_ai_score.
  /// Supported directions are asc and desc. Ignored when search is provided; results are
  /// ranked by relevance instead. Also ignored when lookup is provided.
  final pulumi.Input<String?>? orderBy;
  /// Fuzzy search across application name and hostnames. Results are ranked by relevance. Must be between 2 and 200 characters. Can be combined with filter parameters.
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationFilter].
  /// [fields] Return only the listed properties on each application, as a comma-separated list.
  /// [filter] Filter applications using `key:value` format. Supported filter keys:
  /// [limit] Number of results to return. Defaults to 25; values are clamped to 1–250.
  /// [lookup] Find complete, case-insensitive application name mentions in a phrase or
  /// [offset] Number of results to skip. Defaults to 0; negative values are clamped to 0.
  /// [orderBy] Order results using field:direction format. Supported fields are name, id, human_id,
  /// [search] Fuzzy search across application name and hostnames. Results are ranked by relevance. Must be between 2 and 200 characters. Can be combined with filter parameters.
  const GetZeroTrustResourceLibraryApplicationFilter({
    this.fields,
    this.filter,
    required this.limit,
    this.lookup,
    required this.offset,
    this.orderBy,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?fields,
      'filter': ?filter,
      'limit': limit,
      'lookup': ?lookup,
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
      lookup: (() { final guardedValue = map['lookup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offset: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['offset'])),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
