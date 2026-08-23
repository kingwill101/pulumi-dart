// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Entry overview fields for rich text descriptions of entries.
class GoogleCloudDatacatalogV1EntryOverview {
  /// Entry overview with support for rich text. The overview must only contain Unicode characters, and should be formatted using HTML. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.
  final pulumi.Input<String>? overview;

  /// Creates a new [GoogleCloudDatacatalogV1EntryOverview].
  /// [overview] Entry overview with support for rich text. The overview must only contain Unicode characters, and should be formatted using HTML. The maximum length is 10 MiB as this value holds HTML descriptions including encoded images. The maximum length of the text without images is 100 KiB.
  const GoogleCloudDatacatalogV1EntryOverview({
    this.overview,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overview': ?overview,
    };
  }

  factory GoogleCloudDatacatalogV1EntryOverview.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1EntryOverview(
      overview: (() { final guardedValue = map['overview']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
