// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustDeviceDefaultProfileFallbackDomain {
  /// A description of the fallback domain, displayed in the client UI.
  final pulumi.Input<String> description;
  /// A list of IP addresses to handle domain resolution.
  final pulumi.Input<List<String>> dnsServers;
  /// The domain suffix to match when resolving locally.
  final pulumi.Input<String> suffix;

  /// Creates a new [GetZeroTrustDeviceDefaultProfileFallbackDomain].
  /// [description] A description of the fallback domain, displayed in the client UI.
  /// [dnsServers] A list of IP addresses to handle domain resolution.
  /// [suffix] The domain suffix to match when resolving locally.
  const GetZeroTrustDeviceDefaultProfileFallbackDomain({
    required this.description,
    required this.dnsServers,
    required this.suffix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dnsServers': dnsServers,
      'suffix': suffix,
    };
  }

  factory GetZeroTrustDeviceDefaultProfileFallbackDomain.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDeviceDefaultProfileFallbackDomain(
      description: pulumi.Input.fromValue(map['description'] as String),
      dnsServers: pulumi.Input.fromValue((map['dnsServers'] as List).cast<String>()),
      suffix: pulumi.Input.fromValue(map['suffix'] as String),
    );
  }
}
