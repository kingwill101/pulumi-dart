// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_attributes_business_owner.dart';
import 'application_attributes_criticality.dart';
import 'application_attributes_developer_owner.dart';
import 'application_attributes_environment.dart';
import 'application_attributes_operator_owner.dart';

class ApplicationAttributes {
  /// Optional. Business team that ensures user needs are met and value is delivered
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationAttributesBusinessOwner>>? businessOwners;
  /// Criticality of the Application, Service, or Workload
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributesCriticality>? criticality;
  /// Optional. Developer team that owns development and coding.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationAttributesDeveloperOwner>>? developerOwners;
  /// Environment of the Application, Service, or Workload
  /// Structure is documented below.
  final pulumi.Input<ApplicationAttributesEnvironment>? environment;
  /// Optional. Operator team that ensures runtime and operations.
  /// Structure is documented below.
  final pulumi.Input<List<ApplicationAttributesOperatorOwner>>? operatorOwners;

  /// Creates a new [ApplicationAttributes].
  /// [businessOwners] Optional. Business team that ensures user needs are met and value is delivered
  /// [criticality] Criticality of the Application, Service, or Workload
  /// [developerOwners] Optional. Developer team that owns development and coding.
  /// [environment] Environment of the Application, Service, or Workload
  /// [operatorOwners] Optional. Operator team that ensures runtime and operations.
  ApplicationAttributes({
    this.businessOwners,
    this.criticality,
    this.developerOwners,
    this.environment,
    this.operatorOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessOwners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAttributesBusinessOwner>, List<Map<String, dynamic>>>(businessOwners, (value) => pulumi.Input.encodeList<ApplicationAttributesBusinessOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'criticality': ?pulumi.Input.mapOptionalInputValue<ApplicationAttributesCriticality, Map<String, dynamic>>(criticality, (value) => value.toMap()),
      'developerOwners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAttributesDeveloperOwner>, List<Map<String, dynamic>>>(developerOwners, (value) => pulumi.Input.encodeList<ApplicationAttributesDeveloperOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
      'environment': ?pulumi.Input.mapOptionalInputValue<ApplicationAttributesEnvironment, Map<String, dynamic>>(environment, (value) => value.toMap()),
      'operatorOwners': ?pulumi.Input.mapOptionalInputValue<List<ApplicationAttributesOperatorOwner>, List<Map<String, dynamic>>>(operatorOwners, (value) => pulumi.Input.encodeList<ApplicationAttributesOperatorOwner, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApplicationAttributes.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributes(
      businessOwners: map['businessOwners'] == null ? null : (pulumi.Input.decodeList<ApplicationAttributesBusinessOwner>(map['businessOwners'], (value) => ApplicationAttributesBusinessOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      criticality: map['criticality'] == null ? null : (ApplicationAttributesCriticality.fromMap((map['criticality'] as Map).cast<String, dynamic>())).input(),
      developerOwners: map['developerOwners'] == null ? null : (pulumi.Input.decodeList<ApplicationAttributesDeveloperOwner>(map['developerOwners'], (value) => ApplicationAttributesDeveloperOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
      environment: map['environment'] == null ? null : (ApplicationAttributesEnvironment.fromMap((map['environment'] as Map).cast<String, dynamic>())).input(),
      operatorOwners: map['operatorOwners'] == null ? null : (pulumi.Input.decodeList<ApplicationAttributesOperatorOwner>(map['operatorOwners'], (value) => ApplicationAttributesOperatorOwner.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

