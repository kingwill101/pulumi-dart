// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_target_azure_query.dart';
import 'software_update_configuration_target_non_azure_query.dart';

class SoftwareUpdateConfigurationTarget {
  /// One or more `azure_query` blocks as defined above.
  final pulumi.Input<List<SoftwareUpdateConfigurationTargetAzureQuery>>? azureQueries;
  /// One or more `non_azure_query` blocks as defined above.
  final pulumi.Input<List<SoftwareUpdateConfigurationTargetNonAzureQuery>>? nonAzureQueries;

  /// Creates a new [SoftwareUpdateConfigurationTarget].
  /// [azureQueries] One or more `azure_query` blocks as defined above.
  /// [nonAzureQueries] One or more `non_azure_query` blocks as defined above.
  SoftwareUpdateConfigurationTarget({
    this.azureQueries,
    this.nonAzureQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueries': ?pulumi.Input.mapOptionalInputValue<List<SoftwareUpdateConfigurationTargetAzureQuery>, List<Map<String, dynamic>>>(azureQueries, (value) => pulumi.Input.encodeList<SoftwareUpdateConfigurationTargetAzureQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'nonAzureQueries': ?pulumi.Input.mapOptionalInputValue<List<SoftwareUpdateConfigurationTargetNonAzureQuery>, List<Map<String, dynamic>>>(nonAzureQueries, (value) => pulumi.Input.encodeList<SoftwareUpdateConfigurationTargetNonAzureQuery, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SoftwareUpdateConfigurationTarget.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTarget(
      azureQueries: (() { final guardedValue = map['azureQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareUpdateConfigurationTargetAzureQuery>(guardedValue, (value) => SoftwareUpdateConfigurationTargetAzureQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      nonAzureQueries: (() { final guardedValue = map['nonAzureQueries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareUpdateConfigurationTargetNonAzureQuery>(guardedValue, (value) => SoftwareUpdateConfigurationTargetNonAzureQuery.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

