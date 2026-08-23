// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_sources_data_source_data_source_gcp_resource_compute_instance_data_source_property.dart';

class GetDataSourcesDataSourceDataSourceGcpResource {
  /// ComputeInstanceDataSourceProperties has a subset of Compute Instance properties that are useful at the Datasource level.
  final pulumi.Input<List<GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty>> computeInstanceDataSourceProperties;
  /// The full name of the GCP resource.
  final pulumi.Input<String> gcpResourcename;
  /// The location in which the Data Source belongs.
  final pulumi.Input<String> location;
  /// The type of the GCP resource.
  final pulumi.Input<String> type;

  /// Creates a new [GetDataSourcesDataSourceDataSourceGcpResource].
  /// [computeInstanceDataSourceProperties] ComputeInstanceDataSourceProperties has a subset of Compute Instance properties that are useful at the Datasource level.
  /// [gcpResourcename] The full name of the GCP resource.
  /// [location] The location in which the Data Source belongs.
  /// [type] The type of the GCP resource.
  const GetDataSourcesDataSourceDataSourceGcpResource({
    required this.computeInstanceDataSourceProperties,
    required this.gcpResourcename,
    required this.location,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeInstanceDataSourceProperties': pulumi.Input.mapInputValue<List<GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty>, List<Map<String, dynamic>>>(computeInstanceDataSourceProperties, (value) => pulumi.Input.encodeList<GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcpResourcename': gcpResourcename,
      'location': location,
      'type': type,
    };
  }

  factory GetDataSourcesDataSourceDataSourceGcpResource.fromMap(Map<String, dynamic> map) {
    return GetDataSourcesDataSourceDataSourceGcpResource(
      computeInstanceDataSourceProperties: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty>(map['computeInstanceDataSourceProperties']!, (value) => GetDataSourcesDataSourceDataSourceGcpResourceComputeInstanceDataSourceProperty.fromMap((value as Map).cast<String, dynamic>()))),
      gcpResourcename: pulumi.Input.fromValue(map['gcpResourcename'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
