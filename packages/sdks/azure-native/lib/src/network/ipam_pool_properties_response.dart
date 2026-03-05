// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of IpamPool resource properties which are specific to the Pool resource.
class IpamPoolPropertiesResponse {
  /// List of IP address prefixes of the resource.
  final pulumi.Input<List<String>> addressPrefixes;
  final pulumi.Input<String>? description;
  /// String representing a friendly name for the resource.
  final pulumi.Input<String>? displayName;
  /// List of IP address type for the IpamPool.
  final pulumi.Input<List<String>> ipAddressType;
  /// String representing parent IpamPool resource name. If empty the IpamPool will be a root pool.
  final pulumi.Input<String>? parentPoolName;
  /// Provisioning states of a resource.
  final pulumi.Input<String> provisioningState;

  /// Creates a new [IpamPoolPropertiesResponse].
  /// [addressPrefixes] List of IP address prefixes of the resource.
  /// [description] Optional.
  /// [displayName] String representing a friendly name for the resource.
  /// [ipAddressType] List of IP address type for the IpamPool.
  /// [parentPoolName] String representing parent IpamPool resource name. If empty the IpamPool will be a root pool.
  /// [provisioningState] Provisioning states of a resource.
  IpamPoolPropertiesResponse({
    required this.addressPrefixes,
    this.description,
    this.displayName,
    required this.ipAddressType,
    this.parentPoolName,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefixes': addressPrefixes,
      'description': ?description,
      'displayName': ?displayName,
      'ipAddressType': ipAddressType,
      'parentPoolName': ?parentPoolName,
      'provisioningState': provisioningState,
    };
  }

  factory IpamPoolPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IpamPoolPropertiesResponse(
      addressPrefixes: pulumi.Input.fromValue((map['addressPrefixes'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddressType: pulumi.Input.fromValue((map['ipAddressType'] as List).cast<String>()),
      parentPoolName: (() { final guardedValue = map['parentPoolName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

