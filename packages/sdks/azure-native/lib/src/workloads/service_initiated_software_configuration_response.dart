// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'high_availability_software_configuration_response.dart';

/// The SAP Software configuration Input when the software is to be installed by service.
class ServiceInitiatedSoftwareConfigurationResponse {
  /// The URL to the SAP Build of Materials(BOM) file.
  final pulumi.Input<String> bomUrl;
  /// Gets or sets the HA software configuration.
  final pulumi.Input<HighAvailabilitySoftwareConfigurationResponse>? highAvailabilitySoftwareConfiguration;
  /// The SAP bits storage account id.
  final pulumi.Input<String> sapBitsStorageAccountId;
  /// The FQDN to set for the SAP system during install.
  final pulumi.Input<String> sapFqdn;
  /// The SAP software installation Type.
  /// Expected value is 'ServiceInitiated'.
  final pulumi.Input<String> softwareInstallationType;
  /// The software version to install.
  final pulumi.Input<String> softwareVersion;
  /// The SSH private key.
  final pulumi.Input<String> sshPrivateKey;

  /// Creates a new [ServiceInitiatedSoftwareConfigurationResponse].
  /// [bomUrl] The URL to the SAP Build of Materials(BOM) file.
  /// [highAvailabilitySoftwareConfiguration] Gets or sets the HA software configuration.
  /// [sapBitsStorageAccountId] The SAP bits storage account id.
  /// [sapFqdn] The FQDN to set for the SAP system during install.
  /// [softwareInstallationType] The SAP software installation Type.
  /// [softwareVersion] The software version to install.
  /// [sshPrivateKey] The SSH private key.
  ServiceInitiatedSoftwareConfigurationResponse({
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
      'highAvailabilitySoftwareConfiguration': ?pulumi.Input.mapOptionalInputValue<HighAvailabilitySoftwareConfigurationResponse, Map<String, dynamic>>(highAvailabilitySoftwareConfiguration, (value) => value.toMap()),
      'sapBitsStorageAccountId': sapBitsStorageAccountId,
      'sapFqdn': sapFqdn,
      'softwareInstallationType': softwareInstallationType,
      'softwareVersion': softwareVersion,
      'sshPrivateKey': sshPrivateKey,
    };
  }

  factory ServiceInitiatedSoftwareConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return ServiceInitiatedSoftwareConfigurationResponse(
      bomUrl: (map['bomUrl'] as String).input(),
      highAvailabilitySoftwareConfiguration: map['highAvailabilitySoftwareConfiguration'] == null ? null : (HighAvailabilitySoftwareConfigurationResponse.fromMap((map['highAvailabilitySoftwareConfiguration'] as Map).cast<String, dynamic>())).input(),
      sapBitsStorageAccountId: (map['sapBitsStorageAccountId'] as String).input(),
      sapFqdn: (map['sapFqdn'] as String).input(),
      softwareInstallationType: (map['softwareInstallationType'] as String).input(),
      softwareVersion: (map['softwareVersion'] as String).input(),
      sshPrivateKey: (map['sshPrivateKey'] as String).input(),
    );
  }
}

