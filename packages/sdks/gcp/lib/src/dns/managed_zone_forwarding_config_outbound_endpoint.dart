// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneForwardingConfigOutboundEndpoint {
  /// Specified as a resource path including project and region.
  /// This should be formatted like
  /// `projects/{project}/locations/{location}/outboundEndpoints/{endpoint}`
  final pulumi.Input<String> name;

  /// Creates a new [ManagedZoneForwardingConfigOutboundEndpoint].
  /// [name] Specified as a resource path including project and region.
  const ManagedZoneForwardingConfigOutboundEndpoint({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory ManagedZoneForwardingConfigOutboundEndpoint.fromMap(Map<String, dynamic> map) {
    return ManagedZoneForwardingConfigOutboundEndpoint(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
