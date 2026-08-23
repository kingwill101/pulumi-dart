// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointIpConfiguration {
  /// Specifies the member name this IP address applies to. If it is not specified, it will use the value of `subresourceName`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** `memberName` will be required and will not take the value of `subresourceName` in the next major version.
  final pulumi.Input<String>? memberName;
  /// Specifies the Name of the IP Configuration. Changing this forces a new resource to be created.
  final pulumi.Input<String> name;
  /// Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created.
  final pulumi.Input<String> privateIpAddress;
  /// Specifies the subresource this IP address applies to. `subresourceNames` corresponds to `groupId`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subresourceName;

  /// Creates a new [EndpointIpConfiguration].
  /// [memberName] Specifies the member name this IP address applies to. If it is not specified, it will use the value of `subresourceName`. Changing this forces a new resource to be created.
  /// [name] Specifies the Name of the IP Configuration. Changing this forces a new resource to be created.
  /// [privateIpAddress] Specifies the static IP address within the private endpoint's subnet to be used. Changing this forces a new resource to be created.
  /// [subresourceName] Specifies the subresource this IP address applies to. `subresourceNames` corresponds to `groupId`. Changing this forces a new resource to be created.
  const EndpointIpConfiguration({
    this.memberName,
    required this.name,
    required this.privateIpAddress,
    this.subresourceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'memberName': ?memberName,
      'name': name,
      'privateIpAddress': privateIpAddress,
      'subresourceName': ?subresourceName,
    };
  }

  factory EndpointIpConfiguration.fromMap(Map<String, dynamic> map) {
    return EndpointIpConfiguration(
      memberName: (() { final guardedValue = map['memberName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      privateIpAddress: pulumi.Input.fromValue(map['privateIpAddress'] as String),
      subresourceName: (() { final guardedValue = map['subresourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
