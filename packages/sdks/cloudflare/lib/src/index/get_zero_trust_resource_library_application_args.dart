// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_resource_library_application_filter.dart';

/// {@template pulumi_index_get_zero_trust_resource_library_application_get_zero_trust_resource_library_application_args_doc}
/// Arguments for getZeroTrustResourceLibraryApplication.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_resource_library_application_get_zero_trust_resource_library_application_args_doc}
class GetZeroTrustResourceLibraryApplicationArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustResourceLibraryApplicationFilter?>? filter;
  /// Returns the application ID.
  final pulumi.Input<int?>? id;

  /// Creates a new [GetZeroTrustResourceLibraryApplicationArgs].
  /// [accountId] Required.
  /// [filter] Optional.
  /// [id] Returns the application ID.
  const GetZeroTrustResourceLibraryApplicationArgs({
    required this.accountId,
    this.filter,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustResourceLibraryApplicationFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'id': ?id,
    };
  }

  factory GetZeroTrustResourceLibraryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustResourceLibraryApplicationArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustResourceLibraryApplicationFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
