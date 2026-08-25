// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_attachment_symantec_options.dart';

/// {@template pulumi_networksecurity_sac_attachment_sac_attachment_args_doc}
/// The set of arguments for SacAttachment.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_sac_attachment_sac_attachment_args_doc}
class SacAttachmentArgs {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String?>? country;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location of the SACAttachment resource. eg us-central1
  final pulumi.Input<String> location;
  /// Identifier. Resource name
  final pulumi.Input<String?>? name;
  /// NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  final pulumi.Input<String> nccGateway;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  final pulumi.Input<String> sacRealm;
  /// Configuration required for Symantec attachments.
  /// Structure is documented below.
  final pulumi.Input<SacAttachmentSymantecOptions?>? symantecOptions;
  /// Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String?>? timeZone;

  /// Creates a new [SacAttachmentArgs].
  /// [country] Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [location] The location of the SACAttachment resource. eg us-central1
  /// [name] Identifier. Resource name
  /// [nccGateway] NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [sacRealm] SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  /// [symantecOptions] Configuration required for Symantec attachments.
  /// [timeZone] Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  const SacAttachmentArgs({
    this.country,
    this.deletionPolicy,
    this.labels,
    required this.location,
    this.name,
    required this.nccGateway,
    this.project,
    required this.sacRealm,
    this.symantecOptions,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?country,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'nccGateway': nccGateway,
      'project': ?project,
      'sacRealm': sacRealm,
      'symantecOptions': ?pulumi.Input.mapOptionalInputValue<SacAttachmentSymantecOptions, Map<String, dynamic>>(symantecOptions, (value) => value.toMap()),
      'timeZone': ?timeZone,
    };
  }

  factory SacAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return SacAttachmentArgs(
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nccGateway: pulumi.Input.fromValue(map['nccGateway'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sacRealm: pulumi.Input.fromValue(map['sacRealm'] as String),
      symantecOptions: (() { final guardedValue = map['symantecOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SacAttachmentSymantecOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
