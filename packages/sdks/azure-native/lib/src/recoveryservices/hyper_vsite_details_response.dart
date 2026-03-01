// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hyper_vhost_details_response.dart';

/// HyperVSite fabric specific details.
class HyperVSiteDetailsResponse {
  /// The list of Hyper-V hosts associated with the fabric.
  final List<HyperVHostDetailsResponse>? hyperVHosts;
  /// Gets the class type. Overridden in derived classes.
  /// Expected value is 'HyperVSite'.
  final String instanceType;

  /// Creates a new [HyperVSiteDetailsResponse].
  /// [hyperVHosts] The list of Hyper-V hosts associated with the fabric.
  /// [instanceType] Gets the class type. Overridden in derived classes.
  HyperVSiteDetailsResponse({
    this.hyperVHosts,
    required this.instanceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hyperVHosts': ?hyperVHosts == null ? null : pulumi.Input.encodeList<HyperVHostDetailsResponse, Map<String, dynamic>>(hyperVHosts!, (value) => value.toMap()),
      'instanceType': instanceType,
    };
  }

  factory HyperVSiteDetailsResponse.fromMap(Map<String, dynamic> map) {
    return HyperVSiteDetailsResponse(
      hyperVHosts: map['hyperVHosts'] == null ? null : pulumi.Input.decodeList<HyperVHostDetailsResponse>(map['hyperVHosts'], (value) => HyperVHostDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      instanceType: map['instanceType'] as String,
    );
  }
}

