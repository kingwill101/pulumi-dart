// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_resource_library_applications_get_zero_trust_resource_library_applications_args_doc}
/// Arguments for getZeroTrustResourceLibraryApplications.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_resource_library_applications_get_zero_trust_resource_library_applications_args_doc}
class GetZeroTrustResourceLibraryApplicationsArgs {
  final pulumi.Input<String> accountId;
  /// Return only the listed properties on each application, as a comma-separated list.
  /// Use this to keep responses small when you only need part of each application — for
  /// example populating a picker with `fields=id,name` instead of downloading every
  /// hostname and IP subnet.
  final pulumi.Input<String?>? fields;
  final pulumi.Input<String?>? filter;
  final pulumi.Input<int?>? limit;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<int?>? offset;
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationsArgs].
  /// [accountId] Required.
  /// [fields] Return only the listed properties on each application, as a comma-separated list.
  /// [filter] Optional.
  /// [limit] Optional.
  /// [maxItems] Optional.
  /// [offset] Optional.
  /// [orderBy] Optional.
  /// [search] Optional.
  const GetZeroTrustResourceLibraryApplicationsArgs({
    required this.accountId,
    this.fields,
    this.filter,
    this.limit,
    this.maxItems,
    this.offset,
    this.orderBy,
    this.search,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'fields': ?fields,
      'filter': ?filter,
      'limit': ?limit,
      'maxItems': ?maxItems,
      'offset': ?offset,
      'orderBy': ?orderBy,
      'search': ?search,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationsArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      fields: (() { final guardedValue = map['fields']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
