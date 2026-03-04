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
  ResourceBasicsResponse({this.addressPrefixes, this.resourceId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': ?addressPrefixes,
      'resourceId': ?resourceId,
    };
  }

  factory ResourceBasicsResponse.fromMap(Map<String, dynamic> map) {
    return ResourceBasicsResponse(
      addressPrefixes: (() {
        final guardedValue = map['addressPrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
