// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of IpamPool resource properties which are specific to the Pool resource.
class IpamPoolProperties {
  /// List of IP address prefixes of the resource.
  final pulumi.Input<List<String>> addressPrefixes;
  final pulumi.Input<String>? description;
  /// String representing a friendly name for the resource.
  final pulumi.Input<String>? displayName;
  /// String representing parent IpamPool resource name. If empty the IpamPool will be a root pool.
  final pulumi.Input<String>? parentPoolName;

  /// Creates a new [IpamPoolProperties].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [description] Optional.
  /// [displayName] String representing a friendly name for the resource.
  /// [parentPoolName] String representing parent IpamPool resource name. If empty the IpamPool will be a root pool.
  const IpamPoolProperties({
    required this.addressPrefixes,
    this.description,
    this.displayName,
    this.parentPoolName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'description': ?description,
      'displayName': ?displayName,
      'parentPoolName': ?parentPoolName,
    };
  }

  factory IpamPoolProperties.fromMap(Map<String, dynamic> map) {
    return IpamPoolProperties(
      addressPrefixes: pulumi.Input.fromValue((map['addressPrefixes'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentPoolName: (() { final guardedValue = map['parentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
