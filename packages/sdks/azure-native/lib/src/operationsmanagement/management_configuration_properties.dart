// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_parameter.dart';

/// ManagementConfiguration properties supported by the OperationsManagement resource provider.
class ManagementConfigurationProperties {
  /// The applicationId of the appliance for this Management.
  final String? applicationId;
  /// Parameters to run the ARM template
  final List<ArmTemplateParameter> parameters;
  /// The type of the parent resource.
  final String parentResourceType;
  /// The Json object containing the ARM template to deploy
  final dynamic template;

  /// Creates a new [ManagementConfigurationProperties].
  /// [applicationId] The applicationId of the appliance for this Management.
  /// [parameters] Parameters to run the ARM template
  /// [parentResourceType] The type of the parent resource.
  /// [template] The Json object containing the ARM template to deploy
  ManagementConfigurationProperties({
    this.applicationId,
    required this.parameters,
    required this.parentResourceType,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'parameters': pulumi.Input.encodeList<ArmTemplateParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'parentResourceType': parentResourceType,
      'template': template,
    };
  }

  factory ManagementConfigurationProperties.fromMap(Map<String, dynamic> map) {
    return ManagementConfigurationProperties(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      parameters: pulumi.Input.decodeList<ArmTemplateParameter>(map['parameters'], (value) => ArmTemplateParameter.fromMap((value as Map).cast<String, dynamic>())),
      parentResourceType: map['parentResourceType'] as String,
      template: map['template'],
    );
  }
}

