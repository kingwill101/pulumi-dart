// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_v1_contacts_person.dart';

/// Contact people for the entry.
class GoogleCloudDatacatalogV1Contacts {
  /// The list of contact people for the entry.
  final List<GoogleCloudDatacatalogV1ContactsPerson>? people;

  /// Creates a new [GoogleCloudDatacatalogV1Contacts].
  /// [people] The list of contact people for the entry.
  GoogleCloudDatacatalogV1Contacts({
    this.people,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'people': ?people == null ? null : pulumi.Input.encodeList<GoogleCloudDatacatalogV1ContactsPerson, Map<String, dynamic>>(people!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogV1Contacts.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1Contacts(
      people: map['people'] == null ? null : pulumi.Input.decodeList<GoogleCloudDatacatalogV1ContactsPerson>(map['people'], (value) => GoogleCloudDatacatalogV1ContactsPerson.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

