// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_update_configuration_target_azure_query.dart';
import 'software_update_configuration_target_non_azure_query.dart';

class SoftwareUpdateConfigurationTarget {
  /// One or more `azure_query` blocks as defined above.
  final List<SoftwareUpdateConfigurationTargetAzureQuery>? azureQueries;
  /// One or more `non_azure_query` blocks as defined above.
  final List<SoftwareUpdateConfigurationTargetNonAzureQuery>? nonAzureQueries;

  /// Creates a new [SoftwareUpdateConfigurationTarget].
  /// [azureQueries] One or more `azure_query` blocks as defined above.
  /// [nonAzureQueries] One or more `non_azure_query` blocks as defined above.
  SoftwareUpdateConfigurationTarget({
    this.azureQueries,
    this.nonAzureQueries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureQueries': ?azureQueries == null ? null : pulumi.Input.encodeList<SoftwareUpdateConfigurationTargetAzureQuery, Map<String, dynamic>>(azureQueries!, (value) => value.toMap()),
      'nonAzureQueries': ?nonAzureQueries == null ? null : pulumi.Input.encodeList<SoftwareUpdateConfigurationTargetNonAzureQuery, Map<String, dynamic>>(nonAzureQueries!, (value) => value.toMap()),
    };
  }

  factory SoftwareUpdateConfigurationTarget.fromMap(Map<String, dynamic> map) {
    return SoftwareUpdateConfigurationTarget(
      azureQueries: map['azureQueries'] == null ? null : pulumi.Input.decodeList<SoftwareUpdateConfigurationTargetAzureQuery>(map['azureQueries'], (value) => SoftwareUpdateConfigurationTargetAzureQuery.fromMap((value as Map).cast<String, dynamic>())),
      nonAzureQueries: map['nonAzureQueries'] == null ? null : pulumi.Input.decodeList<SoftwareUpdateConfigurationTargetNonAzureQuery>(map['nonAzureQueries'], (value) => SoftwareUpdateConfigurationTargetNonAzureQuery.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

