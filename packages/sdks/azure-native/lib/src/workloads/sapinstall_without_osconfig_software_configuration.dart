// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'high_availability_software_configuration.dart';

/// The SAP Software configuration Input when the software is to be installed by service without OS Configurations
class SAPInstallWithoutOSConfigSoftwareConfiguration {
  /// The URL to the SAP Build of Materials(BOM) file.
  final pulumi.Input<String> bomUrl;
  /// Gets or sets the HA software configuration.
  final pulumi.Input<HighAvailabilitySoftwareConfiguration>? highAvailabilitySoftwareConfiguration;
  /// The SAP bits storage account id.
  final pulumi.Input<String> sapBitsStorageAccountId;
  /// The SAP software installation Type.
  /// Expected value is 'SAPInstallWithoutOSConfig'.
  final pulumi.Input<String> softwareInstallationType;
  /// The software version to install.
  final pulumi.Input<String> softwareVersion;

  /// Creates a new [SAPInstallWithoutOSConfigSoftwareConfiguration].
  /// [bomUrl] The URL to the SAP Build of Materials(BOM) file.
  /// [highAvailabilitySoftwareConfiguration] Gets or sets the HA software configuration.
  /// [sapBitsStorageAccountId] The SAP bits storage account id.
  /// [softwareInstallationType] The SAP software installation Type.
  /// [softwareVersion] The software version to install.
  SAPInstallWithoutOSConfigSoftwareConfiguration({
    required this.bomUrl,
    this.highAvailabilitySoftwareConfiguration,
    required this.sapBitsStorageAccountId,
    required this.softwareInstallationType,
    required this.softwareVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bomUrl': bomUrl,
      'highAvailabilitySoftwareConfiguration': ?pulumi.Input.mapOptionalInputValue<HighAvailabilitySoftwareConfiguration, Map<String, dynamic>>(highAvailabilitySoftwareConfiguration, (value) => value.toMap()),
      'sapBitsStorageAccountId': sapBitsStorageAccountId,
      'softwareInstallationType': softwareInstallationType,
      'softwareVersion': softwareVersion,
    };
  }

  factory SAPInstallWithoutOSConfigSoftwareConfiguration.fromMap(Map<String, dynamic> map) {
    return SAPInstallWithoutOSConfigSoftwareConfiguration(
      bomUrl: pulumi.Input.fromValue(map['bomUrl'] as String),
      highAvailabilitySoftwareConfiguration: (() { final guardedValue = map['highAvailabilitySoftwareConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HighAvailabilitySoftwareConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sapBitsStorageAccountId: pulumi.Input.fromValue(map['sapBitsStorageAccountId'] as String),
      softwareInstallationType: pulumi.Input.fromValue(map['softwareInstallationType'] as String),
      softwareVersion: pulumi.Input.fromValue(map['softwareVersion'] as String),
    );
  }
}

