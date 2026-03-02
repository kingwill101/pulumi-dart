// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties to maximize savings by using Azure Hybrid Benefit
class AzureHybridBenefitProperties {
  /// SCOM license type. Maximize savings by using license you already own
  final pulumi.Input<String>? scomLicenseType;
  /// SQL Server license type. Maximize savings by using Azure Hybrid Benefit for SQL Server with license you already own
  final pulumi.Input<String>? sqlServerLicenseType;
  /// Specifies that the image or disk that is being used was licensed on-premises. <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
  final pulumi.Input<String>? windowsServerLicenseType;

  /// Creates a new [AzureHybridBenefitProperties].
  /// [scomLicenseType] SCOM license type. Maximize savings by using license you already own
  /// [sqlServerLicenseType] SQL Server license type. Maximize savings by using Azure Hybrid Benefit for SQL Server with license you already own
  /// [windowsServerLicenseType] Specifies that the image or disk that is being used was licensed on-premises. <br><br> For more information, see [Azure Hybrid Use Benefit for Windows Server](https://docs.microsoft.com/azure/virtual-machines/virtual-machines-windows-hybrid-use-benefit-licensing?toc=%2fazure%2fvirtual-machines%2fwindows%2ftoc.json)
  AzureHybridBenefitProperties({
    this.scomLicenseType,
    this.sqlServerLicenseType,
    this.windowsServerLicenseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scomLicenseType': ?scomLicenseType,
      'sqlServerLicenseType': ?sqlServerLicenseType,
      'windowsServerLicenseType': ?windowsServerLicenseType,
    };
  }

  factory AzureHybridBenefitProperties.fromMap(Map<String, dynamic> map) {
    return AzureHybridBenefitProperties(
      scomLicenseType: map['scomLicenseType'] == null ? null : (map['scomLicenseType'] as String).input(),
      sqlServerLicenseType: map['sqlServerLicenseType'] == null ? null : (map['sqlServerLicenseType'] as String).input(),
      windowsServerLicenseType: map['windowsServerLicenseType'] == null ? null : (map['windowsServerLicenseType'] as String).input(),
    );
  }
}

