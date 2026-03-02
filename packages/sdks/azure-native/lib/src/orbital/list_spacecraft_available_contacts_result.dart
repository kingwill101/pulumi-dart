// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'available_contacts_response.dart';

/// Result data returned by listSpacecraftAvailableContacts.
class ListSpacecraftAvailableContactsResult {
  /// The URL to get the next set of results.
  final String nextLink;
  /// A list of available contacts.
  final List<AvailableContactsResponse>? value;

  /// Creates a new [ListSpacecraftAvailableContactsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] A list of available contacts.
  ListSpacecraftAvailableContactsResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<AvailableContactsResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListSpacecraftAvailableContactsResult.fromMap(Map<String, dynamic> map) {
    return ListSpacecraftAvailableContactsResult(
      nextLink: map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<AvailableContactsResponse>(map['value']!, (value) => AvailableContactsResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

