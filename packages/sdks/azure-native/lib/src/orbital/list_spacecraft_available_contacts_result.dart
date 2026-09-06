// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_contacts_response.dart';

/// Result data returned by listSpacecraftAvailableContacts.
class ListSpacecraftAvailableContactsResult {
  /// The URL to get the next set of results.
  final String? nextLink;
  /// A list of available contacts.
  final List<AvailableContactsResponse>? value;

  /// Creates a new [ListSpacecraftAvailableContactsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] A list of available contacts.
  const ListSpacecraftAvailableContactsResult({
    this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': ?nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<AvailableContactsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListSpacecraftAvailableContactsResult.fromMap(Map<String, dynamic> map) {
    return ListSpacecraftAvailableContactsResult(
      nextLink: (() { final guardedValue = map['nextLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<AvailableContactsResponse>(guardedValue, (value) => AvailableContactsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
