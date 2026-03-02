// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_attributes_business_owner.dart';
import 'service_attributes_criticality.dart';
import 'service_attributes_developer_owner.dart';
import 'service_attributes_environment.dart';
import 'service_attributes_operator_owner.dart';

class ServiceAttributes {
  /// Business team that ensures user needs are met and value is delivered
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttributesBusinessOwner>>? businessOwners;
  /// Criticality of the Application, Service, or Workload
  /// Structure is documented below.
  final pulumi.Input<ServiceAttributesCriticality>? criticality;
  /// Developer team that owns development and coding.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttributesDeveloperOwner>>? developerOwners;
  /// Environment of the Application, Service, or Workload
  /// Structure is documented below.
  final pulumi.Input<ServiceAttributesEnvironment>? environment;
  /// Operator team that ensures runtime and operations.
  /// Structure is documented below.
  final pulumi.Input<List<ServiceAttributesOperatorOwner>>? operatorOwners;

  /// Creates a new [ServiceAttributes].
  /// [businessOwners] Business team that ensures user needs are met and value is delivered
  /// [criticality] Criticality of the Application, Service, or Workload
  /// [developerOwners] Developer team that owns development and coding.
  /// [environment] Environment of the Application, Service, or Workload
  /// [operatorOwners] Operator team that ensures runtime and operations.
  ServiceAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessOwners': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttributesBusinessOwner>, List<Map<String, dynamic>>>(businessOwners, (value) => pulumi.Input.encodeList<ServiceAttributesBusinessOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criticality': ?pulumi.Input.mapOptionalInputValue<ServiceAttributesCriticality, Map<String, dynamic>>(criticality, (value) => value.toMap()),
      'developerOwners': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttributesDeveloperOwner>, List<Map<String, dynamic>>>(developerOwners, (value) => pulumi.Input.encodeList<ServiceAttributesDeveloperOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?pulumi.Input.mapOptionalInputValue<ServiceAttributesEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'operatorOwners': ?pulumi.Input.mapOptionalInputValue<List<ServiceAttributesOperatorOwner>, List<Map<String, dynamic>>>(operatorOwners, (value) => pulumi.Input.encodeList<ServiceAttributesOperatorOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServiceAttributes.fromMap(Map<String, dynamic> map) {
    return ServiceAttributes(
      businessOwners: map['businessOwners'] == null ? null : (pulumi.Input.decodeList<ServiceAttributesBusinessOwner>(map['businessOwners']!, (value) => ServiceAttributesBusinessOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      criticality: map['criticality'] == null ? null : (ServiceAttributesCriticality.fromMap((map['criticality']! as Map).cast<String, dynamic>())).input(),
      developerOwners: map['developerOwners'] == null ? null : (pulumi.Input.decodeList<ServiceAttributesDeveloperOwner>(map['developerOwners']!, (value) => ServiceAttributesDeveloperOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environment: map['environment'] == null ? null : (ServiceAttributesEnvironment.fromMap((map['environment']! as Map).cast<String, dynamic>())).input(),
      operatorOwners: map['operatorOwners'] == null ? null : (pulumi.Input.decodeList<ServiceAttributesOperatorOwner>(map['operatorOwners']!, (value) => ServiceAttributesOperatorOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

