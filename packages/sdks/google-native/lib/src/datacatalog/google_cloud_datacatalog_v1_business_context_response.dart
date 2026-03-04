// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_contacts_response.dart';
import 'google_cloud_datacatalog_v1_entry_overview_response.dart';

/// Business Context of the entry.
class GoogleCloudDatacatalogV1BusinessContextResponse {
  /// Contact people for the entry.
  final pulumi.Input<GoogleCloudDatacatalogV1ContactsResponse> contacts;

  /// Entry overview fields for rich text descriptions of entries.
  final pulumi.Input<GoogleCloudDatacatalogV1EntryOverviewResponse>
  entryOverview;

  /// Creates a new [GoogleCloudDatacatalogV1BusinessContextResponse].
  /// [contacts] Contact people for the entry.
  /// [entryOverview] Entry overview fields for rich text descriptions of entries.
  GoogleCloudDatacatalogV1BusinessContextResponse({
    required this.contacts,
    required this.entryOverview,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts':
          pulumi.Input.mapInputValue<
            GoogleCloudDatacatalogV1ContactsResponse,
            Map<String, dynamic>
          >(contacts, (value) => value.toMap()),
      'entryOverview':
          pulumi.Input.mapInputValue<
            GoogleCloudDatacatalogV1EntryOverviewResponse,
            Map<String, dynamic>
          >(entryOverview, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1BusinessContextResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudDatacatalogV1BusinessContextResponse(
      contacts: pulumi.Input.fromValue(
        GoogleCloudDatacatalogV1ContactsResponse.fromMap(
          (map['contacts']! as Map).cast<String, dynamic>(),
        ),
      ),
      entryOverview: pulumi.Input.fromValue(
        GoogleCloudDatacatalogV1EntryOverviewResponse.fromMap(
          (map['entryOverview']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
