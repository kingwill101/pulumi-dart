// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_auto_run_response.dart';
import 'image_template_file_customizer_response.dart';
import 'image_template_identity_response.dart';
import 'image_template_last_run_status_response.dart';
import 'image_template_managed_image_distributor_response.dart';
import 'image_template_managed_image_source_response.dart';
import 'image_template_properties_response_error_handling.dart';
import 'image_template_properties_response_optimize.dart';
import 'image_template_properties_response_validate.dart';
import 'image_template_vm_profile_response.dart';
import 'provisioning_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getVirtualMachineImageTemplate.
class GetVirtualMachineImageTemplateResult {
  /// Indicates whether or not to automatically run the image template build on template creation or update.
  final ImageTemplateAutoRunResponse? autoRun;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Maximum duration to wait while building the image template (includes all customizations, optimization, validations, and distributions). Omit or specify 0 to use the default (4 hours).
  final int? buildTimeoutInMinutes;
  /// Specifies the properties used to describe the customization steps of the image, like Image source etc
  final List<ImageTemplateFileCustomizerResponse>? customize;
  /// The distribution targets where the image output needs to go to.
  final List<ImageTemplateManagedImageDistributorResponse> distribute;
  /// Error handling options upon a build failure
  final ImageTemplatePropertiesResponseErrorHandling? errorHandling;
  /// The staging resource group id in the same subscription as the image template that will be used to build the image. This read-only field differs from 'stagingResourceGroup' only if the value specified in the 'stagingResourceGroup' field is empty.
  final String exactStagingResourceGroup;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The identity of the image template, if configured.
  final ImageTemplateIdentityResponse identity;
  /// State of 'run' that is currently executing or was last executed.
  final ImageTemplateLastRunStatusResponse lastRunStatus;
  /// The geo-location where the resource lives
  final String location;
  /// Tags that will be applied to the resource group and/or resources created by the service.
  final Map<String, String>? managedResourceTags;
  /// The name of the resource
  final String name;
  /// Specifies optimization to be performed on image.
  final ImageTemplatePropertiesResponseOptimize? optimize;
  /// Provisioning error, if any
  final ProvisioningErrorResponse provisioningError;
  /// Provisioning state of the resource
  final String provisioningState;
  /// Specifies the properties used to describe the source image.
  final ImageTemplateManagedImageSourceResponse source;
  /// The staging resource group id in the same subscription as the image template that will be used to build the image. If this field is empty, a resource group with a random name will be created. If the resource group specified in this field doesn't exist, it will be created with the same name. If the resource group specified exists, it must be empty and in the same region as the image template. The resource group created will be deleted during template deletion if this field is empty or the resource group specified doesn't exist, but if the resource group specified exists the resources created in the resource group will be deleted during template deletion and the resource group itself will remain.
  final String? stagingResourceGroup;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Configuration options and list of validations to be performed on the resulting image.
  final ImageTemplatePropertiesResponseValidate? validate;
  /// Describes how virtual machine is set up to build images
  final ImageTemplateVmProfileResponse? vmProfile;

  /// Creates a new [GetVirtualMachineImageTemplateResult].
  /// [autoRun] Indicates whether or not to automatically run the image template build on template creation or update.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [buildTimeoutInMinutes] Maximum duration to wait while building the image template (includes all customizations, optimization, validations, and distributions). Omit or specify 0 to use the default (4 hours).
  /// [customize] Specifies the properties used to describe the customization steps of the image, like Image source etc
  /// [distribute] The distribution targets where the image output needs to go to.
  /// [errorHandling] Error handling options upon a build failure
  /// [exactStagingResourceGroup] The staging resource group id in the same subscription as the image template that will be used to build the image. This read-only field differs from 'stagingResourceGroup' only if the value specified in the 'stagingResourceGroup' field is empty.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identity] The identity of the image template, if configured.
  /// [lastRunStatus] State of 'run' that is currently executing or was last executed.
  /// [location] The geo-location where the resource lives
  /// [managedResourceTags] Tags that will be applied to the resource group and/or resources created by the service.
  /// [name] The name of the resource
  /// [optimize] Specifies optimization to be performed on image.
  /// [provisioningError] Provisioning error, if any
  /// [provisioningState] Provisioning state of the resource
  /// [source] Specifies the properties used to describe the source image.
  /// [stagingResourceGroup] The staging resource group id in the same subscription as the image template that will be used to build the image. If this field is empty, a resource group with a random name will be created. If the resource group specified in this field doesn't exist, it will be created with the same name. If the resource group specified exists, it must be empty and in the same region as the image template. The resource group created will be deleted during template deletion if this field is empty or the resource group specified doesn't exist, but if the resource group specified exists the resources created in the resource group will be deleted during template deletion and the resource group itself will remain.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [validate] Configuration options and list of validations to be performed on the resulting image.
  /// [vmProfile] Describes how virtual machine is set up to build images
  const GetVirtualMachineImageTemplateResult({
    this.autoRun,
    required this.azureApiVersion,
    this.buildTimeoutInMinutes,
    this.customize,
    required this.distribute,
    this.errorHandling,
    required this.exactStagingResourceGroup,
    required this.id,
    required this.identity,
    required this.lastRunStatus,
    required this.location,
    this.managedResourceTags,
    required this.name,
    this.optimize,
    required this.provisioningError,
    required this.provisioningState,
    required this.source,
    this.stagingResourceGroup,
    required this.systemData,
    this.tags,
    required this.type,
    this.validate,
    this.vmProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRun': ?autoRun?.toMap(),
      'azureApiVersion': azureApiVersion,
      'buildTimeoutInMinutes': ?buildTimeoutInMinutes,
      'customize': ?(() { final guardedValue = customize; if (guardedValue == null) return null; return pulumi.Input.encodeList<ImageTemplateFileCustomizerResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'distribute': pulumi.Input.encodeList<ImageTemplateManagedImageDistributorResponse, Map<String, dynamic>>(distribute, (value) => value.toMap()),
      'errorHandling': ?errorHandling?.toMap(),
      'exactStagingResourceGroup': exactStagingResourceGroup,
      'id': id,
      'identity': identity.toMap(),
      'lastRunStatus': lastRunStatus.toMap(),
      'location': location,
      'managedResourceTags': ?managedResourceTags,
      'name': name,
      'optimize': ?optimize?.toMap(),
      'provisioningError': provisioningError.toMap(),
      'provisioningState': provisioningState,
      'source': source.toMap(),
      'stagingResourceGroup': ?stagingResourceGroup,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'validate': ?validate?.toMap(),
      'vmProfile': ?vmProfile?.toMap(),
    };
  }

  factory GetVirtualMachineImageTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetVirtualMachineImageTemplateResult(
      autoRun: (() { final guardedValue = map['autoRun']; if (guardedValue == null) return null; return ImageTemplateAutoRunResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      buildTimeoutInMinutes: (() { final guardedValue = map['buildTimeoutInMinutes']; if (guardedValue == null) return null; return guardedValue as int; })(),
      customize: (() { final guardedValue = map['customize']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageTemplateFileCustomizerResponse>(guardedValue, (value) => ImageTemplateFileCustomizerResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      distribute: pulumi.Input.decodeList<ImageTemplateManagedImageDistributorResponse>(map['distribute']!, (value) => ImageTemplateManagedImageDistributorResponse.fromMap((value as Map).cast<String, dynamic>())),
      errorHandling: (() { final guardedValue = map['errorHandling']; if (guardedValue == null) return null; return ImageTemplatePropertiesResponseErrorHandling.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      exactStagingResourceGroup: map['exactStagingResourceGroup'] as String,
      id: map['id'] as String,
      identity: ImageTemplateIdentityResponse.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      lastRunStatus: ImageTemplateLastRunStatusResponse.fromMap((map['lastRunStatus']! as Map).cast<String, dynamic>()),
      location: map['location'] as String,
      managedResourceTags: (() { final guardedValue = map['managedResourceTags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: map['name'] as String,
      optimize: (() { final guardedValue = map['optimize']; if (guardedValue == null) return null; return ImageTemplatePropertiesResponseOptimize.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningError: ProvisioningErrorResponse.fromMap((map['provisioningError']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      source: ImageTemplateManagedImageSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>()),
      stagingResourceGroup: (() { final guardedValue = map['stagingResourceGroup']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      validate: (() { final guardedValue = map['validate']; if (guardedValue == null) return null; return ImageTemplatePropertiesResponseValidate.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      vmProfile: (() { final guardedValue = map['vmProfile']; if (guardedValue == null) return null; return ImageTemplateVmProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

