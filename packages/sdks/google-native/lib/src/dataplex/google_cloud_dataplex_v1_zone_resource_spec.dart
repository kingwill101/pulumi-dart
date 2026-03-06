// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_zone_resource_spec_location_type.dart';

/// Settings for resources attached as assets within a zone.
class GoogleCloudDataplexV1ZoneResourceSpec {
  /// Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  final pulumi.Input<GoogleCloudDataplexV1ZoneResourceSpecLocationType> locationType;

  /// Creates a new [GoogleCloudDataplexV1ZoneResourceSpec].
  /// [locationType] Immutable. The location type of the resources that are allowed to be attached to the assets within this zone.
  const GoogleCloudDataplexV1ZoneResourceSpec({
    required this.locationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationType': pulumi.Input.mapInputValue<GoogleCloudDataplexV1ZoneResourceSpecLocationType, String>(locationType, (value) => value.wireValue),
    };
  }

  factory GoogleCloudDataplexV1ZoneResourceSpec.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDataplexV1ZoneResourceSpec(
      locationType: pulumi.Input.fromValue(GoogleCloudDataplexV1ZoneResourceSpecLocationType.fromValue(map['locationType']! as String)),
    );
  }
}

