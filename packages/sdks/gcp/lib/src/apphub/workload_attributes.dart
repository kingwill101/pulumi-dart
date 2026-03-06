// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_attributes_business_owner.dart';
import 'workload_attributes_criticality.dart';
import 'workload_attributes_developer_owner.dart';
import 'workload_attributes_environment.dart';
import 'workload_attributes_operator_owner.dart';

class WorkloadAttributes {
  /// Business team that ensures user needs are met and value is delivered
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadAttributesBusinessOwner>>? businessOwners;
  /// Criticality of the Application, Service, or Workload
  /// Structure is documented below.
  final pulumi.Input<WorkloadAttributesCriticality>? criticality;
  /// Developer team that owns development and coding.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadAttributesDeveloperOwner>>? developerOwners;
  /// Environment of the Application, Service, or Workload
  /// Structure is documented below.
  final pulumi.Input<WorkloadAttributesEnvironment>? environment;
  /// Operator team that ensures runtime and operations.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadAttributesOperatorOwner>>? operatorOwners;

  /// Creates a new [WorkloadAttributes].
  /// [businessOwners] Business team that ensures user needs are met and value is delivered
  /// [criticality] Criticality of the Application, Service, or Workload
  /// [developerOwners] Developer team that owns development and coding.
  /// [environment] Environment of the Application, Service, or Workload
  /// [operatorOwners] Operator team that ensures runtime and operations.
  const WorkloadAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessOwners': ?pulumi.Input.mapOptionalInputValue<List<WorkloadAttributesBusinessOwner>, List<Map<String, dynamic>>>(businessOwners, (value) => pulumi.Input.encodeList<WorkloadAttributesBusinessOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criticality': ?pulumi.Input.mapOptionalInputValue<WorkloadAttributesCriticality, Map<String, dynamic>>(criticality, (value) => value.toMap()),
      'developerOwners': ?pulumi.Input.mapOptionalInputValue<List<WorkloadAttributesDeveloperOwner>, List<Map<String, dynamic>>>(developerOwners, (value) => pulumi.Input.encodeList<WorkloadAttributesDeveloperOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?pulumi.Input.mapOptionalInputValue<WorkloadAttributesEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'operatorOwners': ?pulumi.Input.mapOptionalInputValue<List<WorkloadAttributesOperatorOwner>, List<Map<String, dynamic>>>(operatorOwners, (value) => pulumi.Input.encodeList<WorkloadAttributesOperatorOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadAttributes.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributes(
      businessOwners: (() { final guardedValue = map['businessOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadAttributesBusinessOwner>(guardedValue, (value) => WorkloadAttributesBusinessOwner.fromMap((value as Map).cast<String, dynamic>()))); })(),
      criticality: (() { final guardedValue = map['criticality']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadAttributesCriticality.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      developerOwners: (() { final guardedValue = map['developerOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadAttributesDeveloperOwner>(guardedValue, (value) => WorkloadAttributesDeveloperOwner.fromMap((value as Map).cast<String, dynamic>()))); })(),
      environment: (() { final guardedValue = map['environment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WorkloadAttributesEnvironment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      operatorOwners: (() { final guardedValue = map['operatorOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadAttributesOperatorOwner>(guardedValue, (value) => WorkloadAttributesOperatorOwner.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

