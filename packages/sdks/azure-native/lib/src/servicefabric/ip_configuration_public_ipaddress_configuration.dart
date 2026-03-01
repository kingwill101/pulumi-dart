// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ip_tag.dart';

/// The public IP address configuration of the network interface.
class IpConfigurationPublicIPAddressConfiguration {
  /// Specifies the list of IP tags associated with the public IP address.
  final List<IpTag>? ipTags;
  /// Name of the network interface.
  final String name;
  /// Specifies whether the IP configuration's public IP is IPv4 or IPv6. Default is IPv4.
  final String? publicIPAddressVersion;

  /// Creates a new [IpConfigurationPublicIPAddressConfiguration].
  /// [ipTags] Specifies the list of IP tags associated with the public IP address.
  /// [name] Name of the network interface.
  /// [publicIPAddressVersion] Specifies whether the IP configuration's public IP is IPv4 or IPv6. Default is IPv4.
  IpConfigurationPublicIPAddressConfiguration({
    this.ipTags,
    required this.name,
    this.publicIPAddressVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipTags': ?ipTags == null ? null : pulumi.Input.encodeList<IpTag, Map<String, dynamic>>(ipTags!, (value) => value.toMap()),
      'name': name,
      'publicIPAddressVersion': ?publicIPAddressVersion,
    };
  }

  factory IpConfigurationPublicIPAddressConfiguration.fromMap(Map<String, dynamic> map) {
    return IpConfigurationPublicIPAddressConfiguration(
      ipTags: map['ipTags'] == null ? null : pulumi.Input.decodeList<IpTag>(map['ipTags'], (value) => IpTag.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      publicIPAddressVersion: map['publicIPAddressVersion'] == null ? null : map['publicIPAddressVersion'] as String,
    );
  }
}

