// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings for resources attached as assets within a zone.
class GoogleCloudDataplexV1ZoneResourceSpecResponse {
  /// Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  final pulumi.Input<String> locationType;

  /// Creates a new [GoogleCloudDataplexV1ZoneResourceSpecResponse].
  /// [locationType] Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  const GoogleCloudDataplexV1ZoneResourceSpecResponse({
    required this.locationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationType': locationType,
    };
  }

  factory GoogleCloudDataplexV1ZoneResourceSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ZoneResourceSpecResponse(
      locationType: pulumi.Input.fromValue(map['locationType'] as String),
    );
  }
}
