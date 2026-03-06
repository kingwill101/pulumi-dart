// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_contacts_person.dart';

/// Contact people for the entry.
class GoogleCloudDatacatalogV1Contacts {
  /// The list of contact people for the entry.
  final pulumi.Input<List<GoogleCloudDatacatalogV1ContactsPerson>>? people;

  /// Creates a new [GoogleCloudDatacatalogV1Contacts].
  /// [people] The list of contact people for the entry.
  const GoogleCloudDatacatalogV1Contacts({
    this.people,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'people': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudDatacatalogV1ContactsPerson>, List<Map<String, dynamic>>>(people, (value) => pulumi.Input.encodeList<GoogleCloudDatacatalogV1ContactsPerson, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudDatacatalogV1Contacts.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1Contacts(
      people: (() { final guardedValue = map['people']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudDatacatalogV1ContactsPerson>(guardedValue, (value) => GoogleCloudDatacatalogV1ContactsPerson.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

