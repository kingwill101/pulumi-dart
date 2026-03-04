// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identifier_response.dart';

/// Result data returned by listSiteIdentifiersAssignedToHostName.
class ListSiteIdentifiersAssignedToHostNameResult {
  /// Link to next page of resources.
  final String nextLink;

  /// Collection of resources.
  final List<IdentifierResponse> value;

  /// Creates a new [ListSiteIdentifiersAssignedToHostNameResult].
  /// [nextLink] Link to next page of resources.
  /// [value] Collection of resources.
  ListSiteIdentifiersAssignedToHostNameResult({
    required this.nextLink,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value':
          pulumi.Input.encodeList<IdentifierResponse, Map<String, dynamic>>(
            value,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListSiteIdentifiersAssignedToHostNameResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListSiteIdentifiersAssignedToHostNameResult(
      nextLink: map['nextLink'] as String,
      value: pulumi.Input.decodeList<IdentifierResponse>(
        map['value']!,
        (value) =>
            IdentifierResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
