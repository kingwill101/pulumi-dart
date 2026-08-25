// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_attachment_group_attachment.dart';
import 'interconnect_attachment_group_configured.dart';
import 'interconnect_attachment_group_intent.dart';
import 'interconnect_attachment_group_logical_structure.dart';

/// Input properties used for looking up and filtering InterconnectAttachmentGroup resources.
class InterconnectAttachmentGroupState {
  /// Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Attachments per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupAttachment>?>? attachments;
  /// The redundancy this group is configured to support. The way a
  /// user queries what SLA their Attachment gets is by looking at this field of
  /// the Attachment's AttachmentGroup.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupConfigured>?>? configureds;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String?>? creationTimestamp;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String?>? description;
  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final pulumi.Input<InterconnectAttachmentGroupIntent?>? intent;
  /// The URL of an InterconnectGroup that groups these Attachments'
  /// Interconnects. Customers do not need to set this unless directed by
  /// Google Support.
  final pulumi.Input<String?>? interconnectGroup;
  /// An analysis of the logical layout of Attachments in this
  /// group. Every Attachment in the group is shown once in this structure.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupLogicalStructure>?>? logicalStructures;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [InterconnectAttachmentGroupState].
  /// [attachments] Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// [configureds] The redundancy this group is configured to support. The way a
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [intent] The user's intent for this group. This is the only required field besides
  /// [interconnectGroup] The URL of an InterconnectGroup that groups these Attachments'
  /// [logicalStructures] An analysis of the logical layout of Attachments in this
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  const InterconnectAttachmentGroupState({
    this.attachments,
    this.configureds,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.intent,
    this.interconnectGroup,
    this.logicalStructures,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attachments': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupAttachment>, List<Map<String, dynamic>>>(attachments, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configureds': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupConfigured>, List<Map<String, dynamic>>>(configureds, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupConfigured, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'intent': ?pulumi.Input.mapOptionalInputValue<InterconnectAttachmentGroupIntent, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'interconnectGroup': ?interconnectGroup,
      'logicalStructures': ?pulumi.Input.mapOptionalInputValue<List<InterconnectAttachmentGroupLogicalStructure>, List<Map<String, dynamic>>>(logicalStructures, (value) => pulumi.Input.encodeList<InterconnectAttachmentGroupLogicalStructure, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'project': ?project,
    };
  }

  factory InterconnectAttachmentGroupState.fromMap(Map<String, dynamic> map) {
    return InterconnectAttachmentGroupState(
      attachments: (() { final guardedValue = map['attachments']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentGroupAttachment>(guardedValue, (value) => InterconnectAttachmentGroupAttachment.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configureds: (() { final guardedValue = map['configureds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentGroupConfigured>(guardedValue, (value) => InterconnectAttachmentGroupConfigured.fromMap((value as Map).cast<String, dynamic>()))); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      intent: (() { final guardedValue = map['intent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InterconnectAttachmentGroupIntent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      interconnectGroup: (() { final guardedValue = map['interconnectGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logicalStructures: (() { final guardedValue = map['logicalStructures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructure>(guardedValue, (value) => InterconnectAttachmentGroupLogicalStructure.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
