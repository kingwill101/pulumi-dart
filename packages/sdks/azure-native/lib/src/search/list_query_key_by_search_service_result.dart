// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_key_response.dart';

/// Result data returned by listQueryKeyBySearchService.
class ListQueryKeyBySearchServiceResult {
  /// Request URL that can be used to query next page of query keys. Returned when the total number of requested query keys exceed maximum page size.
  final String nextLink;
  /// The query keys for the Azure AI Search service.
  final List<QueryKeyResponse> value;

  /// Creates a new [ListQueryKeyBySearchServiceResult].
  /// [nextLink] Request URL that can be used to query next page of query keys. Returned when the total number of requested query keys exceed maximum page size.
  /// [value] The query keys for the Azure AI Search service.
  ListQueryKeyBySearchServiceResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': pulumi.Input.encodeList<QueryKeyResponse, Map<String, dynamic>>(value, (value) => value.toMap()),
    };
  }

  factory ListQueryKeyBySearchServiceResult.fromMap(Map<String, dynamic> map) {
    return ListQueryKeyBySearchServiceResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<QueryKeyResponse>(map['value']!, (value) => QueryKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

