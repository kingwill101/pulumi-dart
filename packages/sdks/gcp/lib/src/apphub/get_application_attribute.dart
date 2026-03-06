// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_attribute_business_owner.dart';
import 'get_application_attribute_criticality.dart';
import 'get_application_attribute_developer_owner.dart';
import 'get_application_attribute_environment.dart';
import 'get_application_attribute_operator_owner.dart';

class GetApplicationAttribute {
  /// Optional. Business team that ensures user needs are met and value is delivered
  final pulumi.Input<List<GetApplicationAttributeBusinessOwner>> businessOwners;
  /// Criticality of the Application, Service, or Workload
  final pulumi.Input<List<GetApplicationAttributeCriticality>> criticalities;
  /// Optional. Developer team that owns development and coding.
  final pulumi.Input<List<GetApplicationAttributeDeveloperOwner>> developerOwners;
  /// Environment of the Application, Service, or Workload
  final pulumi.Input<List<GetApplicationAttributeEnvironment>> environments;
  /// Optional. Operator team that ensures runtime and operations.
  final pulumi.Input<List<GetApplicationAttributeOperatorOwner>> operatorOwners;

  /// Creates a new [GetApplicationAttribute].
  /// [businessOwners] Optional. Business team that ensures user needs are met and value is delivered
  /// [criticalities] Criticality of the Application, Service, or Workload
  /// [developerOwners] Optional. Developer team that owns development and coding.
  /// [environments] Environment of the Application, Service, or Workload
  /// [operatorOwners] Optional. Operator team that ensures runtime and operations.
  const GetApplicationAttribute({
    required this.businessOwners,
    required this.criticalities,
    required this.developerOwners,
    required this.environments,
    required this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessOwners': pulumi.Input.mapInputValue<List<GetApplicationAttributeBusinessOwner>, List<Map<String, dynamic>>>(businessOwners, (value) => pulumi.Input.encodeList<GetApplicationAttributeBusinessOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criticalities': pulumi.Input.mapInputValue<List<GetApplicationAttributeCriticality>, List<Map<String, dynamic>>>(criticalities, (value) => pulumi.Input.encodeList<GetApplicationAttributeCriticality, Map<String, dynamic>>(value, (value) => value.toMap())),
      'developerOwners': pulumi.Input.mapInputValue<List<GetApplicationAttributeDeveloperOwner>, List<Map<String, dynamic>>>(developerOwners, (value) => pulumi.Input.encodeList<GetApplicationAttributeDeveloperOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environments': pulumi.Input.mapInputValue<List<GetApplicationAttributeEnvironment>, List<Map<String, dynamic>>>(environments, (value) => pulumi.Input.encodeList<GetApplicationAttributeEnvironment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'operatorOwners': pulumi.Input.mapInputValue<List<GetApplicationAttributeOperatorOwner>, List<Map<String, dynamic>>>(operatorOwners, (value) => pulumi.Input.encodeList<GetApplicationAttributeOperatorOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetApplicationAttribute.fromMap(Map<String, dynamic> map) {
    return GetApplicationAttribute(
      businessOwners: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationAttributeBusinessOwner>(map['businessOwners']!, (value) => GetApplicationAttributeBusinessOwner.fromMap((value as Map).cast<String, dynamic>()))),
      criticalities: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationAttributeCriticality>(map['criticalities']!, (value) => GetApplicationAttributeCriticality.fromMap((value as Map).cast<String, dynamic>()))),
      developerOwners: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationAttributeDeveloperOwner>(map['developerOwners']!, (value) => GetApplicationAttributeDeveloperOwner.fromMap((value as Map).cast<String, dynamic>()))),
      environments: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationAttributeEnvironment>(map['environments']!, (value) => GetApplicationAttributeEnvironment.fromMap((value as Map).cast<String, dynamic>()))),
      operatorOwners: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationAttributeOperatorOwner>(map['operatorOwners']!, (value) => GetApplicationAttributeOperatorOwner.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

