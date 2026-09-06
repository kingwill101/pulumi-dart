// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IP security restriction on an app.
class IpSecurityRestriction {
  /// Allow or Deny access for this IP range.
  final pulumi.Input<String?>? action;
  /// IP restriction rule description.
  final pulumi.Input<String?>? description;
  /// IP restriction rule headers.
  /// X-Forwarded-Host (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Forwarded-Host#Examples).
  /// The matching logic is ..
  /// - If the property is null or empty (default), all hosts(or lack of) are allowed.
  /// - A value is compared using ordinal-ignore-case (excluding port number).
  /// - Subdomain wildcards are permitted but don't match the root domain. For example, *.contoso.com matches the subdomain foo.contoso.com
  /// but not the root domain contoso.com or multi-level foo.bar.contoso.com
  /// - Unicode host names are allowed but are converted to Punycode for matching.
  ///
  /// X-Forwarded-For (https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/X-Forwarded-For#Examples).
  /// The matching logic is ..
  /// - If the property is null or empty (default), any forwarded-for chains (or lack of) are allowed.
  /// - If any address (excluding port number) in the chain (comma separated) matches the CIDR defined by the property.
  ///
  /// X-Azure-FDID and X-FD-HealthProbe.
  /// The matching logic is exact match.
  final pulumi.Input<Map<String, List<String>>?>? headers;
  /// IP address the security restriction is valid for.
  /// It can be in form of pure ipv4 address (required SubnetMask property) or
  /// CIDR notation such as ipv4/mask (leading bit match). For CIDR,
  /// SubnetMask property must not be specified.
  final pulumi.Input<String?>? ipAddress;
  /// IP restriction rule name.
  final pulumi.Input<String?>? name;
  /// Priority of IP restriction rule.
  final pulumi.Input<int?>? priority;
  /// Subnet mask for the range of IP addresses the restriction is valid for.
  final pulumi.Input<String?>? subnetMask;
  /// (internal) Subnet traffic tag
  final pulumi.Input<int?>? subnetTrafficTag;
  /// Defines what this IP filter will be used for. This is to support IP filtering on proxies.
  final pulumi.Input<dynamic>? tag;
  /// Virtual network resource id
  final pulumi.Input<String?>? vnetSubnetResourceId;
  /// (internal) Vnet traffic tag
  final pulumi.Input<int?>? vnetTrafficTag;

  /// Creates a new [IpSecurityRestriction].
  /// [action] Allow or Deny access for this IP range.
  /// [description] IP restriction rule description.
  /// [headers] IP restriction rule headers.
  /// [ipAddress] IP address the security restriction is valid for.
  /// [name] IP restriction rule name.
  /// [priority] Priority of IP restriction rule.
  /// [subnetMask] Subnet mask for the range of IP addresses the restriction is valid for.
  /// [subnetTrafficTag] (internal) Subnet traffic tag
  /// [tag] Defines what this IP filter will be used for. This is to support IP filtering on proxies.
  /// [vnetSubnetResourceId] Virtual network resource id
  /// [vnetTrafficTag] (internal) Vnet traffic tag
  const IpSecurityRestriction({
    this.action,
    this.description,
    this.headers,
    this.ipAddress,
    this.name,
    this.priority,
    this.subnetMask,
    this.subnetTrafficTag,
    this.tag,
    this.vnetSubnetResourceId,
    this.vnetTrafficTag,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'description': ?description,
      'headers': ?headers,
      'ipAddress': ?ipAddress,
      'name': ?name,
      'priority': ?priority,
      'subnetMask': ?subnetMask,
      'subnetTrafficTag': ?subnetTrafficTag,
      'tag': ?tag,
      'vnetSubnetResourceId': ?vnetSubnetResourceId,
      'vnetTrafficTag': ?vnetTrafficTag,
    };
  }

  factory IpSecurityRestriction.fromMap(Map<String, dynamic> map) {
    return IpSecurityRestriction(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      headers: (() { final guardedValue = map['headers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<List<String>>(guardedValue, (value) => (value as List).cast<String>())); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetTrafficTag: (() { final guardedValue = map['subnetTrafficTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tag: (() { final guardedValue = map['tag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      vnetSubnetResourceId: (() { final guardedValue = map['vnetSubnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vnetTrafficTag: (() { final guardedValue = map['vnetTrafficTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
