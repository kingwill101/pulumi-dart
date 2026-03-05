/// The domain name label scope. If a domain name label and a domain name label scope are specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN.
enum PublicIpAddressDnsSettingsDomainNameLabelScope {
  valueTenantReuse("TenantReuse"),
  valueSubscriptionReuse("SubscriptionReuse"),
  valueResourceGroupReuse("ResourceGroupReuse"),
  valueNoReuse("NoReuse");

  const PublicIpAddressDnsSettingsDomainNameLabelScope(this.wireValue);
  final String wireValue;

  static PublicIpAddressDnsSettingsDomainNameLabelScope fromValue(String value) {
    for (final item in PublicIpAddressDnsSettingsDomainNameLabelScope.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown PublicIpAddressDnsSettingsDomainNameLabelScope value: $value');
  }
}

