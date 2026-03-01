// ignore_for_file: unused_element, unnecessary_cast


/// IP security restriction on an app.
class IpSecurityRestriction {
  /// Allow or Deny access for this IP range.
  final String? action;
  /// IP restriction rule description.
  final String? description;
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
  final Map<String, List<String>>? headers;
  /// IP address the security restriction is valid for.
  /// It can be in form of pure ipv4 address (required SubnetMask property) or
  /// CIDR notation such as ipv4/mask (leading bit match). For CIDR,
  /// SubnetMask property must not be specified.
  final String? ipAddress;
  /// IP restriction rule name.
  final String? name;
  /// Priority of IP restriction rule.
  final int? priority;
  /// Subnet mask for the range of IP addresses the restriction is valid for.
  final String? subnetMask;
  /// (internal) Subnet traffic tag
  final int? subnetTrafficTag;
  /// Defines what this IP filter will be used for. This is to support IP filtering on proxies.
  final String? tag;
  /// Virtual network resource id
  final String? vnetSubnetResourceId;
  /// (internal) Vnet traffic tag
  final int? vnetTrafficTag;

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
  IpSecurityRestriction({
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
      action: map['action'] == null ? null : map['action'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      headers: map['headers'] == null ? null : (map['headers'] as Map).cast<String, List<String>>(),
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      subnetMask: map['subnetMask'] == null ? null : map['subnetMask'] as String,
      subnetTrafficTag: map['subnetTrafficTag'] == null ? null : map['subnetTrafficTag'] as int,
      tag: map['tag'] == null ? null : map['tag'] as String,
      vnetSubnetResourceId: map['vnetSubnetResourceId'] == null ? null : map['vnetSubnetResourceId'] as String,
      vnetTrafficTag: map['vnetTrafficTag'] == null ? null : map['vnetTrafficTag'] as int,
    );
  }
}

