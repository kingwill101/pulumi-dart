import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_auto_run_response.dart';
import 'image_template_identity_response.dart';
import 'image_template_last_run_status_response.dart';
import 'image_template_managed_image_source_response.dart';
import 'image_template_properties_response_error_handling.dart';
import 'image_template_properties_response_optimize.dart';
import 'image_template_properties_response_validate.dart';
import 'image_template_vm_profile_response.dart';
import 'provisioning_error_response.dart';
import 'system_data_response.dart';
import 'virtual_machine_image_template_args.dart';

/// Image template is an ARM resource managed by Microsoft.VirtualMachineImages provider
///
/// Uses Azure REST API version 2024-02-01. In version 2.x of the Azure Native provider, it used API version 2022-07-01.
///
/// Other available API versions: 2022-07-01, 2023-07-01, 2025-10-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native virtualmachineimages [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:virtualmachineimages:VirtualMachineImageTemplate myImageTemplate /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.VirtualMachineImages/imageTemplates/{imageTemplateName}
/// ```
class VirtualMachineImageTemplate extends pulumi.CustomResource {
  /// Indicates whether or not to automatically run the image template build on template creation or update.
  late final pulumi.Output<ImageTemplateAutoRunResponse?> autoRun;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Maximum duration to wait while building the image template (includes all customizations, optimization, validations, and distributions). Omit or specify 0 to use the default (4 hours).
  late final pulumi.Output<int?> buildTimeoutInMinutes;
  /// Specifies the properties used to describe the customization steps of the image, like Image source etc
  late final pulumi.Output<List<Map<String, dynamic>>?> customize;
  /// The distribution targets where the image output needs to go to.
  late final pulumi.Output<List<Map<String, dynamic>>> distribute;
  /// Error handling options upon a build failure
  late final pulumi.Output<ImageTemplatePropertiesResponseErrorHandling?> errorHandling;
  /// The staging resource group id in the same subscription as the image template that will be used to build the image. This read-only field differs from 'stagingResourceGroup' only if the value specified in the 'stagingResourceGroup' field is empty.
  late final pulumi.Output<String> exactStagingResourceGroup;
  /// The identity of the image template, if configured.
  late final pulumi.Output<ImageTemplateIdentityResponse> identity;
  /// State of 'run' that is currently executing or was last executed.
  late final pulumi.Output<ImageTemplateLastRunStatusResponse> lastRunStatus;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Tags that will be applied to the resource group and/or resources created by the service.
  late final pulumi.Output<Map<String, String>?> managedResourceTags;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Specifies optimization to be performed on image.
  late final pulumi.Output<ImageTemplatePropertiesResponseOptimize?> optimize;
  /// Provisioning error, if any
  late final pulumi.Output<ProvisioningErrorResponse> provisioningError;
  /// Provisioning state of the resource
  late final pulumi.Output<String> provisioningState;
  /// Specifies the properties used to describe the source image.
  late final pulumi.Output<ImageTemplateManagedImageSourceResponse> source;
  /// The staging resource group id in the same subscription as the image template that will be used to build the image. If this field is empty, a resource group with a random name will be created. If the resource group specified in this field doesn't exist, it will be created with the same name. If the resource group specified exists, it must be empty and in the same region as the image template. The resource group created will be deleted during template deletion if this field is empty or the resource group specified doesn't exist, but if the resource group specified exists the resources created in the resource group will be deleted during template deletion and the resource group itself will remain.
  late final pulumi.Output<String?> stagingResourceGroup;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Configuration options and list of validations to be performed on the resulting image.
  late final pulumi.Output<ImageTemplatePropertiesResponseValidate?> validate;
  /// Describes how virtual machine is set up to build images
  late final pulumi.Output<ImageTemplateVmProfileResponse?> vmProfile;

  /// Creates a new [VirtualMachineImageTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualMachineImageTemplate]. {@macro pulumi_virtualmachineimages_virtual_machine_image_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualMachineImageTemplate(
    String name, {
    VirtualMachineImageTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:virtualmachineimages:VirtualMachineImageTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoRun = registerOutput<ImageTemplateAutoRunResponse?>('autoRun', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplateAutoRunResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    buildTimeoutInMinutes = registerOutput<int?>('buildTimeoutInMinutes');
    customize = registerOutput<List<Map<String, dynamic>>?>('customize');
    distribute = registerOutput<List<Map<String, dynamic>>>('distribute');
    errorHandling = registerOutput<ImageTemplatePropertiesResponseErrorHandling?>('errorHandling', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplatePropertiesResponseErrorHandling.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    exactStagingResourceGroup = registerOutput<String>('exactStagingResourceGroup');
    identity = registerOutput<ImageTemplateIdentityResponse>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplateIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastRunStatus = registerOutput<ImageTemplateLastRunStatusResponse>('lastRunStatus', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplateLastRunStatusResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managedResourceTags = registerOutput<Map<String, String>?>('managedResourceTags');
    this.name = registerOutput<String>('name');
    optimize = registerOutput<ImageTemplatePropertiesResponseOptimize?>('optimize', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplatePropertiesResponseOptimize.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningError = registerOutput<ProvisioningErrorResponse>('provisioningError', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProvisioningErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    provisioningState = registerOutput<String>('provisioningState');
    source = registerOutput<ImageTemplateManagedImageSourceResponse>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplateManagedImageSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    stagingResourceGroup = registerOutput<String?>('stagingResourceGroup');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    validate = registerOutput<ImageTemplatePropertiesResponseValidate?>('validate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplatePropertiesResponseValidate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    vmProfile = registerOutput<ImageTemplateVmProfileResponse?>('vmProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageTemplateVmProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
