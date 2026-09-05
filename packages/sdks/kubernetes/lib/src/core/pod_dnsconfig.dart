// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pod_dnsconfig_option.dart';

/// PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
class PodDNSConfig {
  /// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  final pulumi.Input<List<String>?>? nameservers;
  /// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  final pulumi.Input<List<PodDNSConfigOption>?>? options;
  /// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  final pulumi.Input<List<String>?>? searches;

  /// Creates a new [PodDNSConfig].
  /// [nameservers] A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  /// [options] A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  /// [searches] A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  const PodDNSConfig({
    this.nameservers,
    this.options,
    this.searches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nameservers': ?nameservers,
      'options': ?pulumi.Input.mapOptionalInputValue<List<PodDNSConfigOption>, List<Map<String, dynamic>>>(options, (value) => pulumi.Input.encodeList<PodDNSConfigOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'searches': ?searches,
    };
  }

  factory PodDNSConfig.fromMap(Map<String, dynamic> map) {
    return PodDNSConfig(
      nameservers: (() { final guardedValue = map['nameservers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PodDNSConfigOption>(guardedValue, (value) => PodDNSConfigOption.fromMap((value as Map).cast<String, dynamic>()))); })(),
      searches: (() { final guardedValue = map['searches']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
