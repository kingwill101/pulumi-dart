// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_auto_run.dart';
import 'image_template_file_customizer.dart';
import 'image_template_identity.dart';
import 'image_template_managed_image_distributor.dart';
import 'image_template_managed_image_source.dart';
import 'image_template_properties_error_handling.dart';
import 'image_template_properties_optimize.dart';
import 'image_template_properties_validate.dart';
import 'image_template_vm_profile.dart';

/// {@template pulumi_virtualmachineimages_virtual_machine_image_template_args_doc}
/// The set of arguments for VirtualMachineImageTemplate.
/// {@endtemplate}
/// {@macro pulumi_virtualmachineimages_virtual_machine_image_template_args_doc}
class VirtualMachineImageTemplateArgs {
  /// Indicates whether or not to automatically run the image template build on template creation or update.
  final pulumi.Input<ImageTemplateAutoRun>? autoRun;
  /// Maximum duration to wait while building the image template (includes all customizations, optimization, validations, and distributions). Omit or specify 0 to use the default (4 hours).
  final pulumi.Input<int>? buildTimeoutInMinutes;
  /// Specifies the properties used to describe the customization steps of the image, like Image source etc
  final pulumi.Input<List<ImageTemplateFileCustomizer>>? customize;
  /// The distribution targets where the image output needs to go to.
  final pulumi.Input<List<ImageTemplateManagedImageDistributor>> distribute;
  /// Error handling options upon a build failure
  final pulumi.Input<ImageTemplatePropertiesErrorHandling>? errorHandling;
  /// The identity of the image template, if configured.
  final pulumi.Input<ImageTemplateIdentity> identity;
  /// The name of the image Template
  final pulumi.Input<String>? imageTemplateName;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// Tags that will be applied to the resource group and/or resources created by the service.
  final pulumi.Input<Map<String, String>>? managedResourceTags;
  /// Specifies optimization to be performed on image.
  final pulumi.Input<ImageTemplatePropertiesOptimize>? optimize;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the properties used to describe the source image.
  final pulumi.Input<ImageTemplateManagedImageSource> source;
  /// The staging resource group id in the same subscription as the image template that will be used to build the image. If this field is empty, a resource group with a random name will be created. If the resource group specified in this field doesn't exist, it will be created with the same name. If the resource group specified exists, it must be empty and in the same region as the image template. The resource group created will be deleted during template deletion if this field is empty or the resource group specified doesn't exist, but if the resource group specified exists the resources created in the resource group will be deleted during template deletion and the resource group itself will remain.
  final pulumi.Input<String>? stagingResourceGroup;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration options and list of validations to be performed on the resulting image.
  final pulumi.Input<ImageTemplatePropertiesValidate>? validate;
  /// Describes how virtual machine is set up to build images
  final pulumi.Input<ImageTemplateVmProfile>? vmProfile;

  /// Creates a new [VirtualMachineImageTemplateArgs].
  /// [autoRun] Indicates whether or not to automatically run the image template build on template creation or update.
  /// [buildTimeoutInMinutes] Maximum duration to wait while building the image template (includes all customizations, optimization, validations, and distributions). Omit or specify 0 to use the default (4 hours).
  /// [customize] Specifies the properties used to describe the customization steps of the image, like Image source etc
  /// [distribute] The distribution targets where the image output needs to go to.
  /// [errorHandling] Error handling options upon a build failure
  /// [identity] The identity of the image template, if configured.
  /// [imageTemplateName] The name of the image Template
  /// [location] The geo-location where the resource lives
  /// [managedResourceTags] Tags that will be applied to the resource group and/or resources created by the service.
  /// [optimize] Specifies optimization to be performed on image.
  /// [resourceGroupName] The name of the resource group.
  /// [source] Specifies the properties used to describe the source image.
  /// [stagingResourceGroup] The staging resource group id in the same subscription as the image template that will be used to build the image. If this field is empty, a resource group with a random name will be created. If the resource group specified in this field doesn't exist, it will be created with the same name. If the resource group specified exists, it must be empty and in the same region as the image template. The resource group created will be deleted during template deletion if this field is empty or the resource group specified doesn't exist, but if the resource group specified exists the resources created in the resource group will be deleted during template deletion and the resource group itself will remain.
  /// [tags] Resource tags.
  /// [validate] Configuration options and list of validations to be performed on the resulting image.
  /// [vmProfile] Describes how virtual machine is set up to build images
  const VirtualMachineImageTemplateArgs({
    this.autoRun,
    this.buildTimeoutInMinutes,
    this.customize,
    required this.distribute,
    this.errorHandling,
    required this.identity,
    this.imageTemplateName,
    this.location,
    this.managedResourceTags,
    this.optimize,
    required this.resourceGroupName,
    required this.source,
    this.stagingResourceGroup,
    this.tags,
    this.validate,
    this.vmProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRun': ?pulumi.Input.mapOptionalInputValue<ImageTemplateAutoRun, Map<String, dynamic>>(autoRun, (value) => value.toMap()),
      'buildTimeoutInMinutes': ?buildTimeoutInMinutes,
      'customize': ?pulumi.Input.mapOptionalInputValue<List<ImageTemplateFileCustomizer>, List<Map<String, dynamic>>>(customize, (value) => pulumi.Input.encodeList<ImageTemplateFileCustomizer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'distribute': pulumi.Input.mapInputValue<List<ImageTemplateManagedImageDistributor>, List<Map<String, dynamic>>>(distribute, (value) => pulumi.Input.encodeList<ImageTemplateManagedImageDistributor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'errorHandling': ?pulumi.Input.mapOptionalInputValue<ImageTemplatePropertiesErrorHandling, Map<String, dynamic>>(errorHandling, (value) => value.toMap()),
      'identity': pulumi.Input.mapInputValue<ImageTemplateIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'imageTemplateName': ?imageTemplateName,
      'location': ?location,
      'managedResourceTags': ?managedResourceTags,
      'optimize': ?pulumi.Input.mapOptionalInputValue<ImageTemplatePropertiesOptimize, Map<String, dynamic>>(optimize, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'source': pulumi.Input.mapInputValue<ImageTemplateManagedImageSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'stagingResourceGroup': ?stagingResourceGroup,
      'tags': ?tags,
      'validate': ?pulumi.Input.mapOptionalInputValue<ImageTemplatePropertiesValidate, Map<String, dynamic>>(validate, (value) => value.toMap()),
      'vmProfile': ?pulumi.Input.mapOptionalInputValue<ImageTemplateVmProfile, Map<String, dynamic>>(vmProfile, (value) => value.toMap()),
    };
  }

  factory VirtualMachineImageTemplateArgs.fromMap(Map<String, dynamic> map) {
    return VirtualMachineImageTemplateArgs(
      autoRun: (() { final guardedValue = map['autoRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTemplateAutoRun.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      buildTimeoutInMinutes: (() { final guardedValue = map['buildTimeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      customize: (() { final guardedValue = map['customize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageTemplateFileCustomizer>(guardedValue, (value) => ImageTemplateFileCustomizer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      distribute: pulumi.Input.fromValue(pulumi.Input.decodeList<ImageTemplateManagedImageDistributor>(map['distribute']!, (value) => ImageTemplateManagedImageDistributor.fromMap((value as Map).cast<String, dynamic>()))),
      errorHandling: (() { final guardedValue = map['errorHandling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTemplatePropertiesErrorHandling.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identity: pulumi.Input.fromValue(ImageTemplateIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())),
      imageTemplateName: (() { final guardedValue = map['imageTemplateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedResourceTags: (() { final guardedValue = map['managedResourceTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      optimize: (() { final guardedValue = map['optimize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTemplatePropertiesOptimize.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      source: pulumi.Input.fromValue(ImageTemplateManagedImageSource.fromMap((map['source']! as Map).cast<String, dynamic>())),
      stagingResourceGroup: (() { final guardedValue = map['stagingResourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validate: (() { final guardedValue = map['validate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTemplatePropertiesValidate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vmProfile: (() { final guardedValue = map['vmProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTemplateVmProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
