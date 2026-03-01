// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_template_parameter_response.dart';

/// ManagementConfiguration properties supported by the OperationsManagement resource provider.
class ManagementConfigurationPropertiesResponse {
  /// The applicationId of the appliance for this Management.
  final String? applicationId;
  /// Parameters to run the ARM template
  final List<ArmTemplateParameterResponse> parameters;
  /// The type of the parent resource.
  final String parentResourceType;
  /// The provisioning state for the ManagementConfiguration.
  final String provisioningState;
  /// The Json object containing the ARM template to deploy
  final dynamic template;

  /// Creates a new [ManagementConfigurationPropertiesResponse].
  /// [applicationId] The applicationId of the appliance for this Management.
  /// [parameters] Parameters to run the ARM template
  /// [parentResourceType] The type of the parent resource.
  /// [provisioningState] The provisioning state for the ManagementConfiguration.
  /// [template] The Json object containing the ARM template to deploy
  ManagementConfigurationPropertiesResponse({
    this.applicationId,
    required this.parameters,
    required this.parentResourceType,
    required this.provisioningState,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': ?applicationId,
      'parameters': pulumi.Input.encodeList<ArmTemplateParameterResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'parentResourceType': parentResourceType,
      'provisioningState': provisioningState,
      'template': template,
    };
  }

  factory ManagementConfigurationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementConfigurationPropertiesResponse(
      applicationId: map['applicationId'] == null ? null : map['applicationId'] as String,
      parameters: pulumi.Input.decodeList<ArmTemplateParameterResponse>(map['parameters'], (value) => ArmTemplateParameterResponse.fromMap((value as Map).cast<String, dynamic>())),
      parentResourceType: map['parentResourceType'] as String,
      provisioningState: map['provisioningState'] as String,
      template: map['template'],
    );
  }
}

