// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ip_address_dns_settings_domain_name_label_scope.dart';

/// Contains FQDN of the DNS record associated with the public IP address.
class PublicIPAddressDnsSettings {
  /// The domain name label. The concatenation of the domain name label and the regionalized DNS zone make up the fully qualified domain name associated with the public IP address. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  final pulumi.Input<String>? domainNameLabel;
  /// The domain name label scope. If a domain name label and a domain name label scope are specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN.
  final pulumi.Input<PublicIpAddressDnsSettingsDomainNameLabelScope>? domainNameLabelScope;
  /// The Fully Qualified Domain Name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  final pulumi.Input<String>? fqdn;
  /// The reverse FQDN. A user-visible, fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  final pulumi.Input<String>? reverseFqdn;

  /// Creates a new [PublicIPAddressDnsSettings].
  /// [domainNameLabel] The domain name label. The concatenation of the domain name label and the regionalized DNS zone make up the fully qualified domain name associated with the public IP address. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  /// [domainNameLabelScope] The domain name label scope. If a domain name label and a domain name label scope are specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN.
  /// [fqdn] The Fully Qualified Domain Name of the A DNS record associated with the public IP. This is the concatenation of the domainNameLabel and the regionalized DNS zone.
  /// [reverseFqdn] The reverse FQDN. A user-visible, fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  const PublicIPAddressDnsSettings({
    this.domainNameLabel,
    this.domainNameLabelScope,
    this.fqdn,
    this.reverseFqdn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNameLabel': ?domainNameLabel,
      'domainNameLabelScope': ?pulumi.Input.mapOptionalInputValue<PublicIpAddressDnsSettingsDomainNameLabelScope, String>(domainNameLabelScope, (value) => value.wireValue),
      'fqdn': ?fqdn,
      'reverseFqdn': ?reverseFqdn,
    };
  }

  factory PublicIPAddressDnsSettings.fromMap(Map<String, dynamic> map) {
    return PublicIPAddressDnsSettings(
      domainNameLabel: (() { final guardedValue = map['domainNameLabel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      domainNameLabelScope: (() { final guardedValue = map['domainNameLabelScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PublicIpAddressDnsSettingsDomainNameLabelScope.fromValue(guardedValue as String)); })(),
      fqdn: (() { final guardedValue = map['fqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reverseFqdn: (() { final guardedValue = map['reverseFqdn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

