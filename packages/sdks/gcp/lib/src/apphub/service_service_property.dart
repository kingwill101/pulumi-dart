// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_service_property_extended_metadata.dart';
import 'service_service_property_functional_type.dart';
import 'service_service_property_identity.dart';
import 'service_service_property_registration_type.dart';

class ServiceServiceProperty {
  /// (Output)
  /// Output only. Additional metadata specific to the resource type.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServicePropertyExtendedMetadata>>? extendedMetadatas;
  /// (Output)
  /// Output only. The type of the service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServicePropertyFunctionalType>>? functionalTypes;
  /// (Output)
  /// Output only. The service project identifier that the underlying cloud resource resides in.
  final pulumi.Input<String>? gcpProject;
  /// (Output)
  /// The identity associated with the service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServicePropertyIdentity>>? identities;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String>? location;
  /// (Output)
  /// Output only. The registration type of the service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServicePropertyRegistrationType>>? registrationTypes;
  /// (Output)
  /// Output only. The location that the underlying resource resides in if it is zonal, for example, us-west1-a).
  final pulumi.Input<String>? zone;

  /// Creates a new [ServiceServiceProperty].
  /// [extendedMetadatas] (Output)
  /// [functionalTypes] (Output)
  /// [gcpProject] (Output)
  /// [identities] (Output)
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [registrationTypes] (Output)
  /// [zone] (Output)
  const ServiceServiceProperty({
    this.extendedMetadatas,
    this.functionalTypes,
    this.gcpProject,
    this.identities,
    this.location,
    this.registrationTypes,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'extendedMetadatas': ?pulumi.Input.mapOptionalInputValue<List<ServiceServicePropertyExtendedMetadata>, List<Map<String, dynamic>>>(extendedMetadatas, (value) => pulumi.Input.encodeList<ServiceServicePropertyExtendedMetadata, Map<String, dynamic>>(value, (value) => value.toMap())),
      'functionalTypes': ?pulumi.Input.mapOptionalInputValue<List<ServiceServicePropertyFunctionalType>, List<Map<String, dynamic>>>(functionalTypes, (value) => pulumi.Input.encodeList<ServiceServicePropertyFunctionalType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'gcpProject': ?gcpProject,
      'identities': ?pulumi.Input.mapOptionalInputValue<List<ServiceServicePropertyIdentity>, List<Map<String, dynamic>>>(identities, (value) => pulumi.Input.encodeList<ServiceServicePropertyIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'registrationTypes': ?pulumi.Input.mapOptionalInputValue<List<ServiceServicePropertyRegistrationType>, List<Map<String, dynamic>>>(registrationTypes, (value) => pulumi.Input.encodeList<ServiceServicePropertyRegistrationType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zone': ?zone,
    };
  }

  factory ServiceServiceProperty.fromMap(Map<String, dynamic> map) {
    return ServiceServiceProperty(
      extendedMetadatas: (() { final guardedValue = map['extendedMetadatas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServicePropertyExtendedMetadata>(guardedValue, (value) => ServiceServicePropertyExtendedMetadata.fromMap((value as Map).cast<String, dynamic>()))); })(),
      functionalTypes: (() { final guardedValue = map['functionalTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServicePropertyFunctionalType>(guardedValue, (value) => ServiceServicePropertyFunctionalType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      gcpProject: (() { final guardedValue = map['gcpProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServicePropertyIdentity>(guardedValue, (value) => ServiceServicePropertyIdentity.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationTypes: (() { final guardedValue = map['registrationTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServiceServicePropertyRegistrationType>(guardedValue, (value) => ServiceServicePropertyRegistrationType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

