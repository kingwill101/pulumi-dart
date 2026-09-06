// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'identifier_response.dart';

/// Result data returned by listSiteIdentifiersAssignedToHostName.
class ListSiteIdentifiersAssignedToHostNameResult {
  /// The link to the next page of items
  final String? nextLink;
  /// The Identifier items on this page
  final List<IdentifierResponse>? value;

  /// Creates a new [ListSiteIdentifiersAssignedToHostNameResult].
  /// [nextLink] The link to the next page of items
  /// [value] The Identifier items on this page
  const ListSiteIdentifiersAssignedToHostNameResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<IdentifierResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSiteIdentifiersAssignedToHostNameResult.fromMap(Map<String, dynamic> map) {
    return ListSiteIdentifiersAssignedToHostNameResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<IdentifierResponse>(guardedValue, (value) => IdentifierResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
