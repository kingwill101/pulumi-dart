// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapdisk_configuration_response.dart';

/// Result data returned by getSAPDiskConfigurations.
class GetSAPDiskConfigurationsResult {
  /// The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  final Map<String, SAPDiskConfigurationResponse>? volumeConfigurations;

  /// Creates a new [GetSAPDiskConfigurationsResult].
  /// [volumeConfigurations] The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  const GetSAPDiskConfigurationsResult({
    this.volumeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeConfigurations': ?(() { final guardedValue = volumeConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<SAPDiskConfigurationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetSAPDiskConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetSAPDiskConfigurationsResult(
      volumeConfigurations: (() { final guardedValue = map['volumeConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<SAPDiskConfigurationResponse>(guardedValue, (value) => SAPDiskConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

