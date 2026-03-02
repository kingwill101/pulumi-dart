// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the partner router to establish a connection to within the ground station.
class L2ConnectionsPropertiesResponseGroundStationPartnerRouter {
  /// The unique name of the partner router that cross-connects with the Orbital Edge Router at the ground station site.
  final pulumi.Input<String> name;

  /// Creates a new [L2ConnectionsPropertiesResponseGroundStationPartnerRouter].
  /// [name] The unique name of the partner router that cross-connects with the Orbital Edge Router at the ground station site.
  L2ConnectionsPropertiesResponseGroundStationPartnerRouter({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory L2ConnectionsPropertiesResponseGroundStationPartnerRouter.fromMap(Map<String, dynamic> map) {
    return L2ConnectionsPropertiesResponseGroundStationPartnerRouter(
      name: (map['name'] as String).input(),
    );
  }
}

