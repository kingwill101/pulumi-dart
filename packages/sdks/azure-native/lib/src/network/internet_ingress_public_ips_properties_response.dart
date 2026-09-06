// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Uri of Public Ip for Standard Load Balancer Frontend End.
class InternetIngressPublicIpsPropertiesResponse {
  /// Resource Uri of Public Ip
  final pulumi.Input<String?>? id;

  /// Creates a new [InternetIngressPublicIpsPropertiesResponse].
  /// [id] Resource Uri of Public Ip
  const InternetIngressPublicIpsPropertiesResponse({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory InternetIngressPublicIpsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InternetIngressPublicIpsPropertiesResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
