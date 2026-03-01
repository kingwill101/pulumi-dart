/// Specifies that the image or disk that is being used was licensed on-premises. <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
enum HybridLicenseType {
  valueNone("None"),
  valueAzureHybridBenefit("AzureHybridBenefit");

  const HybridLicenseType(this.value);
  final String value;

  static HybridLicenseType fromValue(String value) {
    for (final item in HybridLicenseType.values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown HybridLicenseType value: $value');
  }
}

