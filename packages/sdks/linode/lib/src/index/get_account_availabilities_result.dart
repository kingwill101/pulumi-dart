// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_availabilities_availability.dart';
import 'get_account_availabilities_filter.dart';

/// Result data returned by getAccountAvailabilities.
class GetAccountAvailabilitiesResult {
  final List<GetAccountAvailabilitiesAvailability> availabilities;
  final List<GetAccountAvailabilitiesFilter>? filters;
  final String id;

  /// Creates a new [GetAccountAvailabilitiesResult].
  /// [availabilities] Required.
  /// [filters] Optional.
  /// [id] Required.
  GetAccountAvailabilitiesResult({
    required this.availabilities,
    this.filters,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilities': pulumi.Input.encodeList<GetAccountAvailabilitiesAvailability, Map<String, dynamic>>(availabilities, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetAccountAvailabilitiesFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
    };
  }

  factory GetAccountAvailabilitiesResult.fromMap(Map<String, dynamic> map) {
    return GetAccountAvailabilitiesResult(
      availabilities: pulumi.Input.decodeList<GetAccountAvailabilitiesAvailability>(map['availabilities'], (value) => GetAccountAvailabilitiesAvailability.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetAccountAvailabilitiesFilter>(map['filters'], (value) => GetAccountAvailabilitiesFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}

