// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_tag_response.dart';

/// The public IP address configuration of the network interface.
class IpConfigurationResponsePublicIPAddressConfiguration {
  /// Specifies the list of IP tags associated with the public IP address.
  final pulumi.Input<List<IpTagResponse>>? ipTags;
  /// Name of the network interface.
  final pulumi.Input<String> name;
  /// Specifies whether the IP configuration's public IP is IPv4 or IPv6. Default is IPv4.
  final pulumi.Input<String>? publicIPAddressVersion;

  /// Creates a new [IpConfigurationResponsePublicIPAddressConfiguration].
  /// [ipTags] Specifies the list of IP tags associated with the public IP address.
  /// [name] Name of the network interface.
  /// [publicIPAddressVersion] Specifies whether the IP configuration's public IP is IPv4 or IPv6. Default is IPv4.
  IpConfigurationResponsePublicIPAddressConfiguration({
    this.ipTags,
    required this.name,
    this.publicIPAddressVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTags': ?pulumi.Input.mapOptionalInputValue<List<IpTagResponse>, List<Map<String, dynamic>>>(ipTags, (value) => pulumi.Input.encodeList<IpTagResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
    };
  }

  factory IpConfigurationResponsePublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return IpConfigurationResponsePublicIPAddressConfiguration(
      ipTags: (() { final guardedValue = map['ipTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IpTagResponse>(guardedValue, (value) => IpTagResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      publicIPAddressVersion: (() { final guardedValue = map['publicIPAddressVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

