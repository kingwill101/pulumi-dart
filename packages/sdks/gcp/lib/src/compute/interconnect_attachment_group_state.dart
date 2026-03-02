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
  final pulumi.Input<List<InterconnectAttachmentGroupAttachment>>? attachments;
  /// The redundancy this group is configured to support. The way a
  /// user queries what SLA their Attachment gets is by looking at this field of
  /// the Attachment's AttachmentGroup.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupConfigured>>? configureds;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final pulumi.Input<InterconnectAttachmentGroupIntent>? intent;
  /// The URL of an InterconnectGroup that groups these Attachments'
  /// Interconnects. Customers do not need to set this unless directed by
  /// Google Support.
  final pulumi.Input<String>? interconnectGroup;
  /// An analysis of the logical layout of Attachments in this
  /// group. Every Attachment in the group is shown once in this structure.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectAttachmentGroupLogicalStructure>>? logicalStructures;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterconnectAttachmentGroupState].
  /// [attachments] Attachments in the AttachmentGroup. Keys are arbitrary user-specified
  /// [configureds] The redundancy this group is configured to support. The way a
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [intent] The user's intent for this group. This is the only required field besides
  /// [interconnectGroup] The URL of an InterconnectGroup that groups these Attachments'
  /// [logicalStructures] An analysis of the logical layout of Attachments in this
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [project] The ID of the project in which the resource belongs.
  InterconnectAttachmentGroupState({
    this.attachments,
    this.configureds,
    this.creationTimestamp,
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
      attachments: map['attachments'] == null ? null : (pulumi.Input.decodeList<InterconnectAttachmentGroupAttachment>(map['attachments'], (value) => InterconnectAttachmentGroupAttachment.fromMap((value as Map).cast<String, dynamic>()))).input(),
      configureds: map['configureds'] == null ? null : (pulumi.Input.decodeList<InterconnectAttachmentGroupConfigured>(map['configureds'], (value) => InterconnectAttachmentGroupConfigured.fromMap((value as Map).cast<String, dynamic>()))).input(),
      creationTimestamp: map['creationTimestamp'] == null ? null : (map['creationTimestamp'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      intent: map['intent'] == null ? null : (InterconnectAttachmentGroupIntent.fromMap((map['intent'] as Map).cast<String, dynamic>())).input(),
      interconnectGroup: map['interconnectGroup'] == null ? null : (map['interconnectGroup'] as String).input(),
      logicalStructures: map['logicalStructures'] == null ? null : (pulumi.Input.decodeList<InterconnectAttachmentGroupLogicalStructure>(map['logicalStructures'], (value) => InterconnectAttachmentGroupLogicalStructure.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

