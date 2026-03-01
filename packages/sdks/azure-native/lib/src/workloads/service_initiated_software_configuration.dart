// ignore_for_file: unused_element, unnecessary_cast

import 'high_availability_software_configuration.dart';

/// The SAP Software configuration Input when the software is to be installed by service.
class ServiceInitiatedSoftwareConfiguration {
  /// The URL to the SAP Build of Materials(BOM) file.
  final String bomUrl;
  /// Gets or sets the HA software configuration.
  final HighAvailabilitySoftwareConfiguration? highAvailabilitySoftwareConfiguration;
  /// The SAP bits storage account id.
  final String sapBitsStorageAccountId;
  /// The FQDN to set for the SAP system during install.
  final String sapFqdn;
  /// The SAP software installation Type.
  /// Expected value is 'ServiceInitiated'.
  final String softwareInstallationType;
  /// The software version to install.
  final String softwareVersion;
  /// The SSH private key.
  final String sshPrivateKey;

  /// Creates a new [ServiceInitiatedSoftwareConfiguration].
  /// [bomUrl] The URL to the SAP Build of Materials(BOM) file.
  /// [highAvailabilitySoftwareConfiguration] Gets or sets the HA software configuration.
  /// [sapBitsStorageAccountId] The SAP bits storage account id.
  /// [sapFqdn] The FQDN to set for the SAP system during install.
  /// [softwareInstallationType] The SAP software installation Type.
  /// [softwareVersion] The software version to install.
  /// [sshPrivateKey] The SSH private key.
  ServiceInitiatedSoftwareConfiguration({
    required this.bomUrl,
    this.highAvailabilitySoftwareConfiguration,
    required this.sapBitsStorageAccountId,
    required this.sapFqdn,
    required this.softwareInstallationType,
    required this.softwareVersion,
    required this.sshPrivateKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bomUrl': bomUrl,
      'highAvailabilitySoftwareConfiguration': ?highAvailabilitySoftwareConfiguration == null ? null : highAvailabilitySoftwareConfiguration!.toMap(),
      'sapBitsStorageAccountId': sapBitsStorageAccountId,
      'sapFqdn': sapFqdn,
      'softwareInstallationType': softwareInstallationType,
      'softwareVersion': softwareVersion,
      'sshPrivateKey': sshPrivateKey,
    };
  }

  factory ServiceInitiatedSoftwareConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceInitiatedSoftwareConfiguration(
      bomUrl: map['bomUrl'] as String,
      highAvailabilitySoftwareConfiguration: map['highAvailabilitySoftwareConfiguration'] == null ? null : HighAvailabilitySoftwareConfiguration.fromMap((map['highAvailabilitySoftwareConfiguration'] as Map).cast<String, dynamic>()),
      sapBitsStorageAccountId: map['sapBitsStorageAccountId'] as String,
      sapFqdn: map['sapFqdn'] as String,
      softwareInstallationType: map['softwareInstallationType'] as String,
      softwareVersion: map['softwareVersion'] as String,
      sshPrivateKey: map['sshPrivateKey'] as String,
    );
  }
}

