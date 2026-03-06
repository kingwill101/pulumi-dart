// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource Uri of Public Ip for Standard Load Balancer Frontend End.
class InternetIngressPublicIpsProperties {
  /// Resource Uri of Public Ip
  final pulumi.Input<String>? id;

  /// Creates a new [InternetIngressPublicIpsProperties].
  /// [id] Resource Uri of Public Ip
  const InternetIngressPublicIpsProperties({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory InternetIngressPublicIpsProperties.fromMap(Map<String, dynamic> map) {
    return InternetIngressPublicIpsProperties(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

