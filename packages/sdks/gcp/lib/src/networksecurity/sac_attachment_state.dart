// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sac_attachment_symantec_options.dart';

/// Input properties used for looking up and filtering SacAttachment resources.
class SacAttachmentState {
  /// Case-insensitive ISO-3166 alpha-2 country code used for localization. Only valid for Symantec attachments.
  final pulumi.Input<String>? country;
  /// Timestamp when the realm was created.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
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
  SacAttachmentState({
    pulumi.Output<String>? country,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? nccGateway,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? sacRealm,
    pulumi.Output<String>? state,
    pulumi.Output<SacAttachmentSymantecOptions>? symantecOptions,
    pulumi.Output<String>? timeZone,
    pulumi.Output<String>? updateTime,
  }) :
      country = pulumi.Input.asOptionalInput<String>(country),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      nccGateway = pulumi.Input.asOptionalInput<String>(nccGateway),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      sacRealm = pulumi.Input.asOptionalInput<String>(sacRealm),
      state = pulumi.Input.asOptionalInput<String>(state),
      symantecOptions = pulumi.Input.asOptionalInput<SacAttachmentSymantecOptions>(symantecOptions),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'country': ?country,
      'createTime': ?createTime,
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
      country: map['country'] == null ? null : pulumi.Output.create<String>(map['country'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      nccGateway: map['nccGateway'] == null ? null : pulumi.Output.create<String>(map['nccGateway'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      sacRealm: map['sacRealm'] == null ? null : pulumi.Output.create<String>(map['sacRealm'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      symantecOptions: map['symantecOptions'] == null ? null : pulumi.Output.create<SacAttachmentSymantecOptions>(SacAttachmentSymantecOptions.fromMap((map['symantecOptions'] as Map).cast<String, dynamic>())),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}

