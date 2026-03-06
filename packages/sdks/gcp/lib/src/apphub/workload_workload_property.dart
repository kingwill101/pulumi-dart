// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_workload_property_extended_metadata.dart';
import 'workload_workload_property_functional_type.dart';
import 'workload_workload_property_identity.dart';

class WorkloadWorkloadProperty {
  /// (Output)
  /// Output only. Additional metadata specific to the resource type.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadWorkloadPropertyExtendedMetadata>>? extendedMetadatas;
  /// (Output)
  /// Output only. The functional type of a service or workload.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadWorkloadPropertyFunctionalType>>? functionalTypes;
  /// (Output)
  /// Output only. The service project identifier that the underlying cloud resource resides in. Empty for non cloud resources.
  final pulumi.Input<String>? gcpProject;
  /// (Output)
  /// The identity associated with the workload.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadWorkloadPropertyIdentity>>? identities;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String>? location;
  /// (Output)
  /// Output only. The location that the underlying compute resource resides in if it is zonal (e.g us-west1-a).
  final pulumi.Input<String>? zone;

  /// Creates a new [WorkloadWorkloadProperty].
  /// [extendedMetadatas] (Output)
  /// [functionalTypes] (Output)
  /// [gcpProject] (Output)
  /// [identities] (Output)
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [zone] (Output)
  const WorkloadWorkloadProperty({
    this.extendedMetadatas,
    this.functionalTypes,
    this.gcpProject,
    this.identities,
    this.location,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedMetadatas': ?pulumi.Input.mapOptionalInputValue<List<WorkloadWorkloadPropertyExtendedMetadata>, List<Map<String, dynamic>>>(extendedMetadatas, (value) => pulumi.Input.encodeList<WorkloadWorkloadPropertyExtendedMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionalTypes': ?pulumi.Input.mapOptionalInputValue<List<WorkloadWorkloadPropertyFunctionalType>, List<Map<String, dynamic>>>(functionalTypes, (value) => pulumi.Input.encodeList<WorkloadWorkloadPropertyFunctionalType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcpProject': ?gcpProject,
      'identities': ?pulumi.Input.mapOptionalInputValue<List<WorkloadWorkloadPropertyIdentity>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<WorkloadWorkloadPropertyIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'zone': ?zone,
    };
  }

  factory WorkloadWorkloadProperty.fromMap(Map<String, dynamic> map) {
    return WorkloadWorkloadProperty(
      extendedMetadatas: (() { final guardedValue = map['extendedMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadWorkloadPropertyExtendedMetadata>(guardedValue, (value) => WorkloadWorkloadPropertyExtendedMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      functionalTypes: (() { final guardedValue = map['functionalTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadWorkloadPropertyFunctionalType>(guardedValue, (value) => WorkloadWorkloadPropertyFunctionalType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gcpProject: (() { final guardedValue = map['gcpProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadWorkloadPropertyIdentity>(guardedValue, (value) => WorkloadWorkloadPropertyIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

