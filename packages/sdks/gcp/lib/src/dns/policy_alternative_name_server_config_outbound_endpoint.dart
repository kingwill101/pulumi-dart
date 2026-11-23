// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyAlternativeNameServerConfigOutboundEndpoint {
  /// Specified as a resource path including project and region.
  /// This should be formatted like
  /// `projects/{project}/locations/{location}/outboundEndpoints/{endpoint}`
  ///
  /// &lt;a name="nestedDns64Config"&gt;&lt;/a&gt;The `dns64Config` block supports:
  final pulumi.Input<String> name;

  /// Creates a new [PolicyAlternativeNameServerConfigOutboundEndpoint].
  /// [name] Specified as a resource path including project and region.
  const PolicyAlternativeNameServerConfigOutboundEndpoint({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory PolicyAlternativeNameServerConfigOutboundEndpoint.fromMap(Map<String, dynamic> map) {
    return PolicyAlternativeNameServerConfigOutboundEndpoint(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
