// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subnet first address, scope, and/or last address.
class EndpointPropertiesSubnetsItemResponse {
  /// First address in the subnet.
  final pulumi.Input<String>? first;
  /// Last address in the subnet.
  final pulumi.Input<String>? last;
  /// Block size (number of leading bits in the subnet mask).
  final pulumi.Input<int>? scope;

  /// Creates a new [EndpointPropertiesSubnetsItemResponse].
  /// [first] First address in the subnet.
  /// [last] Last address in the subnet.
  /// [scope] Block size (number of leading bits in the subnet mask).
  EndpointPropertiesSubnetsItemResponse({
    this.first,
    this.last,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': ?first,
      'last': ?last,
      'scope': ?scope,
    };
  }

  factory EndpointPropertiesSubnetsItemResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesSubnetsItemResponse(
      first: (() { final guardedValue = map['first']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      last: (() { final guardedValue = map['last']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

