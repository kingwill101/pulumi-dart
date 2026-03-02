// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attributes.dart';
import 'service_service_property.dart';
import 'service_service_reference.dart';

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String>? applicationId;
  /// Consumer provided attributes.
  /// Structure is documented below.
  final pulumi.Input<ServiceAttributes>? attributes;
  /// Output only. Create time.
  final pulumi.Input<String>? createTime;
  /// User-defined description of a Service.
  final pulumi.Input<String>? description;
  /// Immutable. The resource name of the original discovered service.
  final pulumi.Input<String>? discoveredService;
  /// User-defined name for the Service.
  final pulumi.Input<String>? displayName;
  /// Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  final pulumi.Input<String>? location;
  /// Identifier. The resource name of a Service. Format:
  /// "projects/{host-project-id}/locations/{location}/applications/{application-id}/services/{service-id}"
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The Service identifier.
  final pulumi.Input<String>? serviceId;
  /// Properties of an underlying cloud resource that can comprise a Service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServiceProperty>>? serviceProperties;
  /// Reference to an underlying networking resource that can comprise a Service.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceServiceReference>>? serviceReferences;
  /// Output only. Service state. Possible values: STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  final pulumi.Input<String>? state;
  /// Output only. A universally unique identifier (UUID) for the `Service` in the UUID4
  /// format.
  final pulumi.Input<String>? uid;
  /// Output only. Update time.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ServiceState].
  /// [applicationId] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [attributes] Consumer provided attributes.
  /// [createTime] Output only. Create time.
  /// [description] User-defined description of a Service.
  /// [discoveredService] Immutable. The resource name of the original discovered service.
  /// [displayName] User-defined name for the Service.
  /// [location] Part of `parent`.  Full resource name of a parent Application. Example: projects/{HOST_PROJECT_ID}/locations/{LOCATION}/applications/{APPLICATION_ID}
  /// [name] Identifier. The resource name of a Service. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceId] The Service identifier.
  /// [serviceProperties] Properties of an underlying cloud resource that can comprise a Service.
  /// [serviceReferences] Reference to an underlying networking resource that can comprise a Service.
  /// [state] Output only. Service state. Possible values: STATE_UNSPECIFIED CREATING ACTIVE DELETING DETACHED
  /// [uid] Output only. A universally unique identifier (UUID) for the `Service` in the UUID4
  /// [updateTime] Output only. Update time.
  ServiceState({
    this.applicationId,
    this.attributes,
    this.createTime,
    this.description,
    this.discoveredService,
    this.displayName,
    this.location,
    this.name,
    this.project,
    this.serviceId,
    this.serviceProperties,
    this.serviceReferences,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'attributes': ?pulumi.Input.mapOptionalInputValue<ServiceAttributes, Map<String, dynamic>>(attributes, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'discoveredService': ?discoveredService,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'serviceId': ?serviceId,
      'serviceProperties': ?pulumi.Input.mapOptionalInputValue<List<ServiceServiceProperty>, List<Map<String, dynamic>>>(serviceProperties, (value) => pulumi.Input.encodeList<ServiceServiceProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceReferences': ?pulumi.Input.mapOptionalInputValue<List<ServiceServiceReference>, List<Map<String, dynamic>>>(serviceReferences, (value) => pulumi.Input.encodeList<ServiceServiceReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      applicationId: map['applicationId'] == null ? null : (map['applicationId'] as String).input(),
      attributes: map['attributes'] == null ? null : (ServiceAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      discoveredService: map['discoveredService'] == null ? null : (map['discoveredService'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceId: map['serviceId'] == null ? null : (map['serviceId'] as String).input(),
      serviceProperties: map['serviceProperties'] == null ? null : (pulumi.Input.decodeList<ServiceServiceProperty>(map['serviceProperties'], (value) => ServiceServiceProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
      serviceReferences: map['serviceReferences'] == null ? null : (pulumi.Input.decodeList<ServiceServiceReference>(map['serviceReferences'], (value) => ServiceServiceReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      uid: map['uid'] == null ? null : (map['uid'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}

