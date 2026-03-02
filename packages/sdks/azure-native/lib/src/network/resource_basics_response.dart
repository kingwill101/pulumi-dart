// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Representation of basic resource information.
class ResourceBasicsResponse {
  /// List of IP address prefixes of the resource.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// ResourceId of the Azure resource.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [ResourceBasicsResponse].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [resourceId] ResourceId of the Azure resource.
  ResourceBasicsResponse({
    this.addressPrefixes,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'resourceId': ?resourceId,
    };
  }

  factory ResourceBasicsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceBasicsResponse(
      addressPrefixes: map['addressPrefixes'] == null ? null : ((map['addressPrefixes'] as List).cast<String>()).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
    );
  }
}

