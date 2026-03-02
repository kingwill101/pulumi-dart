// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sapdisk_configuration_response.dart';

/// Result data returned by getSAPDiskConfigurations.
class GetSAPDiskConfigurationsResult {
  /// The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  final Map<String, SAPDiskConfigurationResponse>? volumeConfigurations;

  /// Creates a new [GetSAPDiskConfigurationsResult].
  /// [volumeConfigurations] The disk configuration for the db volume. For HANA, Required volumes are: ['hana/data', 'hana/log', hana/shared', 'usr/sap', 'os'], Optional volume : ['backup'].
  GetSAPDiskConfigurationsResult({
    this.volumeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'volumeConfigurations': ?volumeConfigurations == null ? null : pulumi.Input.encodeMapValues<SAPDiskConfigurationResponse, Map<String, dynamic>>(volumeConfigurations!, (value) => value.toMap()),
    };
  }

  factory GetSAPDiskConfigurationsResult.fromMap(Map<String, dynamic> map) {
    return GetSAPDiskConfigurationsResult(
      volumeConfigurations: map['volumeConfigurations'] == null ? null : pulumi.Input.decodeMapValues<SAPDiskConfigurationResponse>(map['volumeConfigurations']!, (value) => SAPDiskConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

