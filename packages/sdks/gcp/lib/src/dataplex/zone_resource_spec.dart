// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZoneResourceSpec {
  /// Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone. Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION, MULTI_REGION
  ///
  /// - - -
  final pulumi.Input<String> locationType;

  /// Creates a new [ZoneResourceSpec].
  /// [locationType] Required. Immutable. The location type of the resources that are allowed to be attached to the assets within this zone. Possible values: LOCATION_TYPE_UNSPECIFIED, SINGLE_REGION, MULTI_REGION
  const ZoneResourceSpec({
    required this.locationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locationType': locationType,
    };
  }

  factory ZoneResourceSpec.fromMap(Map<String, dynamic> map) {
    return ZoneResourceSpec(
      locationType: pulumi.Input.fromValue(map['locationType'] as String),
    );
  }
}
