// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_contacts.dart';
import 'google_cloud_datacatalog_v1_entry_overview.dart';

/// Business Context of the entry.
class GoogleCloudDatacatalogV1BusinessContext {
  /// Contact people for the entry.
  final pulumi.Input<GoogleCloudDatacatalogV1Contacts>? contacts;
  /// Entry overview fields for rich text descriptions of entries.
  final pulumi.Input<GoogleCloudDatacatalogV1EntryOverview>? entryOverview;

  /// Creates a new [GoogleCloudDatacatalogV1BusinessContext].
  /// [contacts] Contact people for the entry.
  /// [entryOverview] Entry overview fields for rich text descriptions of entries.
  const GoogleCloudDatacatalogV1BusinessContext({
    this.contacts,
    this.entryOverview,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contacts': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1Contacts, Map<String, dynamic>>(contacts, (value) => value.toMap()),
      'entryOverview': ?pulumi.Input.mapOptionalInputValue<GoogleCloudDatacatalogV1EntryOverview, Map<String, dynamic>>(entryOverview, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1BusinessContext.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1BusinessContext(
      contacts: (() { final guardedValue = map['contacts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1Contacts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      entryOverview: (() { final guardedValue = map['entryOverview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudDatacatalogV1EntryOverview.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

