// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointOrigin {
  /// A string that determines the hostname/IP address of the origin server. This string can be a domain name, Storage Account endpoint, Web App endpoint, IPv4 address or IPv6 address. Changing this forces a new resource to be created.
  final pulumi.Input<String> hostName;
  /// The HTTP port of the origin. Defaults to `80`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? httpPort;
  /// The HTTPS port of the origin. Defaults to `443`. Changing this forces a new resource to be created.
  final pulumi.Input<int>? httpsPort;
  /// The name of the origin. This is an arbitrary value. However, this value needs to be unique under the endpoint. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;

  /// Creates a new [EndpointOrigin].
  /// [hostName] A string that determines the hostname/IP address of the origin server. This string can be a domain name, Storage Account endpoint, Web App endpoint, IPv4 address or IPv6 address. Changing this forces a new resource to be created.
  /// [httpPort] The HTTP port of the origin. Defaults to `80`. Changing this forces a new resource to be created.
  /// [httpsPort] The HTTPS port of the origin. Defaults to `443`. Changing this forces a new resource to be created.
  /// [name] The name of the origin. This is an arbitrary value. However, this value needs to be unique under the endpoint. Changing this forces a new resource to be created.
  EndpointOrigin({
    required this.hostName,
    this.httpPort,
    this.httpsPort,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': hostName,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'name': name,
    };
  }

  factory EndpointOrigin.fromMap(Map<String, dynamic> map) {
    return EndpointOrigin(
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

