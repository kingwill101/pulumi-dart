// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_attachment_symantec_options.dart';

/// Input properties used for looking up and filtering SacAttachment resources.
class SacAttachmentState {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String>? country;
  /// Timestamp when the realm was created.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location of the SACAttachment resource. eg us-central1
  final pulumi.Input<String>? location;
  /// Identifier. Resource name
  final pulumi.Input<String>? name;
  /// NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  final pulumi.Input<String>? nccGateway;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  final pulumi.Input<String>? sacRealm;
  /// State of the attachment.
  final pulumi.Input<String>? state;
  /// Configuration required for Symantec attachments.
  /// Structure is documented below.
  final pulumi.Input<SacAttachmentSymantecOptions>? symantecOptions;
  /// Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String>? timeZone;
  /// Timestamp when the realm was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [SacAttachmentState].
  /// [country] Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  /// [createTime] Timestamp when the realm was created.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// [location] The location of the SACAttachment resource. eg us-central1
  /// [name] Identifier. Resource name
  /// [nccGateway] NCC Gateway associated with the attachment. This can be input as an ID or a full resource name.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [sacRealm] SAC Realm which owns the attachment. This can be input as an ID or a full resource name.
  /// [state] State of the attachment.
  /// [symantecOptions] Configuration required for Symantec attachments.
  /// [timeZone] Case-sensitive tzinfo identifier used for localization. Only valid for Symantec attachments.
  /// [updateTime] Timestamp when the realm was last updated.
  const SacAttachmentState({
    this.country,
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.location,
    this.name,
    this.nccGateway,
    this.project,
    this.pulumiLabels,
    this.sacRealm,
    this.state,
    this.symantecOptions,
    this.timeZone,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?country,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'nccGateway': ?nccGateway,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'sacRealm': ?sacRealm,
      'state': ?state,
      'symantecOptions': ?pulumi.Input.mapOptionalInputValue<SacAttachmentSymantecOptions, Map<String, dynamic>>(symantecOptions, (value) => value.toMap()),
      'timeZone': ?timeZone,
      'updateTime': ?updateTime,
    };
  }

  factory SacAttachmentState.fromMap(Map<String, dynamic> map) {
    return SacAttachmentState(
      country: (() { final guardedValue = map['country']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nccGateway: (() { final guardedValue = map['nccGateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      sacRealm: (() { final guardedValue = map['sacRealm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      symantecOptions: (() { final guardedValue = map['symantecOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SacAttachmentSymantecOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
