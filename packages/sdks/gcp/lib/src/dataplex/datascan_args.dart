// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datascan_data.dart';
import 'datascan_data_discovery_spec.dart';
import 'datascan_data_profile_spec.dart';
import 'datascan_data_quality_spec.dart';
import 'datascan_execution_spec.dart';

/// {@template pulumi_dataplex_datascan_datascan_args_doc}
/// The set of arguments for Datascan.
/// {@endtemplate}
/// {@macro pulumi_dataplex_datascan_datascan_args_doc}
class DatascanArgs {
  /// The data source for DataScan.
  /// Structure is documented below.
  final pulumi.Input<DatascanData> data;
  /// DataDiscoveryScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataDiscoverySpec>? dataDiscoverySpec;
  /// DataDocumentationScan related setting.
  final pulumi.Input<Map<String, dynamic>>? dataDocumentationSpec;
  /// DataProfileScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataProfileSpec>? dataProfileSpec;
  /// DataQualityScan related setting.
  /// Structure is documented below.
  final pulumi.Input<DatascanDataQualitySpec>? dataQualitySpec;
  /// DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  final pulumi.Input<String> dataScanId;
  /// Description of the scan.
  final pulumi.Input<String>? description;
  /// User friendly display name.
  final pulumi.Input<String>? displayName;
  /// DataScan execution settings.
  /// Structure is documented below.
  final pulumi.Input<DatascanExecutionSpec> executionSpec;
  /// User-defined labels for the scan. A list of key->value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location where the data scan should reside.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DatascanArgs].
  /// [data] The data source for DataScan.
  /// [dataDiscoverySpec] DataDiscoveryScan related setting.
  /// [dataDocumentationSpec] DataDocumentationScan related setting.
  /// [dataProfileSpec] DataProfileScan related setting.
  /// [dataQualitySpec] DataQualityScan related setting.
  /// [dataScanId] DataScan identifier. Must contain only lowercase letters, numbers and hyphens. Must start with a letter. Must end with a number or a letter.
  /// [description] Description of the scan.
  /// [displayName] User friendly display name.
  /// [executionSpec] DataScan execution settings.
  /// [labels] User-defined labels for the scan. A list of key->value pairs.
  /// [location] The location where the data scan should reside.
  /// [project] The ID of the project in which the resource belongs.
  DatascanArgs({
    required this.data,
    this.dataDiscoverySpec,
    this.dataDocumentationSpec,
    this.dataProfileSpec,
    this.dataQualitySpec,
    required this.dataScanId,
    this.description,
    this.displayName,
    required this.executionSpec,
    this.labels,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': pulumi.Input.mapInputValue<DatascanData, Map<String, dynamic>>(data, (value) => value.toMap()),
      'dataDiscoverySpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataDiscoverySpec, Map<String, dynamic>>(dataDiscoverySpec, (value) => value.toMap()),
      'dataDocumentationSpec': ?dataDocumentationSpec,
      'dataProfileSpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataProfileSpec, Map<String, dynamic>>(dataProfileSpec, (value) => value.toMap()),
      'dataQualitySpec': ?pulumi.Input.mapOptionalInputValue<DatascanDataQualitySpec, Map<String, dynamic>>(dataQualitySpec, (value) => value.toMap()),
      'dataScanId': dataScanId,
      'description': ?description,
      'displayName': ?displayName,
      'executionSpec': pulumi.Input.mapInputValue<DatascanExecutionSpec, Map<String, dynamic>>(executionSpec, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'project': ?project,
    };
  }

  factory DatascanArgs.fromMap(Map<String, dynamic> map) {
    return DatascanArgs(
      data: (DatascanData.fromMap((map['data'] as Map).cast<String, dynamic>())).input(),
      dataDiscoverySpec: map['dataDiscoverySpec'] == null ? null : (DatascanDataDiscoverySpec.fromMap((map['dataDiscoverySpec']! as Map).cast<String, dynamic>())).input(),
      dataDocumentationSpec: map['dataDocumentationSpec'] == null ? null : ((map['dataDocumentationSpec']! as Map).cast<String, dynamic>()).input(),
      dataProfileSpec: map['dataProfileSpec'] == null ? null : (DatascanDataProfileSpec.fromMap((map['dataProfileSpec']! as Map).cast<String, dynamic>())).input(),
      dataQualitySpec: map['dataQualitySpec'] == null ? null : (DatascanDataQualitySpec.fromMap((map['dataQualitySpec']! as Map).cast<String, dynamic>())).input(),
      dataScanId: (map['dataScanId'] as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      executionSpec: (DatascanExecutionSpec.fromMap((map['executionSpec'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

