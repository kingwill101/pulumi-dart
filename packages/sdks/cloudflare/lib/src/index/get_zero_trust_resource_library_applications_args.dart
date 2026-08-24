// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_resource_library_applications_get_zero_trust_resource_library_applications_args_doc}
/// Arguments for getZeroTrustResourceLibraryApplications.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_resource_library_applications_get_zero_trust_resource_library_applications_args_doc}
class GetZeroTrustResourceLibraryApplicationsArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<String?>? filter;
  final pulumi.Input<int?>? limit;
  final pulumi.Input<int?>? maxItems;
  final pulumi.Input<int?>? offset;
  final pulumi.Input<String?>? orderBy;
  final pulumi.Input<String?>? search;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationsArgs].
  /// [accountId] Required.
  /// [filter] Optional.
  /// [limit] Optional.
  /// [maxItems] Optional.
  /// [offset] Optional.
  /// [orderBy] Optional.
  /// [search] Optional.
  const GetZeroTrustResourceLibraryApplicationsArgs({
    required this.accountId,
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
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      limit: (() { final guardedValue = map['limit']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      offset: (() { final guardedValue = map['offset']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      search: (() { final guardedValue = map['search']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
