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
    pulumi.Output<String>? applicationId,
    pulumi.Output<ServiceAttributes>? attributes,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<String>? discoveredService,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceId,
    pulumi.Output<List<ServiceServiceProperty>>? serviceProperties,
    pulumi.Output<List<ServiceServiceReference>>? serviceReferences,
    pulumi.Output<String>? state,
    pulumi.Output<String>? uid,
    pulumi.Output<String>? updateTime,
  }) :
      applicationId = pulumi.Input.asOptionalInput<String>(applicationId),
      attributes = pulumi.Input.asOptionalInput<ServiceAttributes>(attributes),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      discoveredService = pulumi.Input.asOptionalInput<String>(discoveredService),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceId = pulumi.Input.asOptionalInput<String>(serviceId),
      serviceProperties = pulumi.Input.asOptionalInput<List<ServiceServiceProperty>>(serviceProperties),
      serviceReferences = pulumi.Input.asOptionalInput<List<ServiceServiceReference>>(serviceReferences),
      state = pulumi.Input.asOptionalInput<String>(state),
      uid = pulumi.Input.asOptionalInput<String>(uid),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      applicationId: map['applicationId'] == null ? null : pulumi.Output.create<String>(map['applicationId'] as String),
      attributes: map['attributes'] == null ? null : pulumi.Output.create<ServiceAttributes>(ServiceAttributes.fromMap((map['attributes'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      discoveredService: map['discoveredService'] == null ? null : pulumi.Output.create<String>(map['discoveredService'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceId: map['serviceId'] == null ? null : pulumi.Output.create<String>(map['serviceId'] as String),
      serviceProperties: map['serviceProperties'] == null ? null : pulumi.Output.create<List<ServiceServiceProperty>>(pulumi.Input.decodeList<ServiceServiceProperty>(map['serviceProperties'], (value) => ServiceServiceProperty.fromMap((value as Map).cast<String, dynamic>()))),
      serviceReferences: map['serviceReferences'] == null ? null : pulumi.Output.create<List<ServiceServiceReference>>(pulumi.Input.decodeList<ServiceServiceReference>(map['serviceReferences'], (value) => ServiceServiceReference.fromMap((value as Map).cast<String, dynamic>()))),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      uid: map['uid'] == null ? null : pulumi.Output.create<String>(map['uid'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

