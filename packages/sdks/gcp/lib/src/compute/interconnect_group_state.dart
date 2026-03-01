// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'interconnect_group_configured.dart';
import 'interconnect_group_intent.dart';
import 'interconnect_group_interconnect.dart';
import 'interconnect_group_physical_structure.dart';

/// Input properties used for looking up and filtering InterconnectGroup resources.
class InterconnectGroupState {
  /// The status of the group as configured. This has the same
  /// structure as the operational field reported by the OperationalStatus
  /// method, but does not take into account the operational status of each
  /// resource.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectGroupConfigured>>? configureds;
  /// Creation timestamp in RFC3339 text format.
  final pulumi.Input<String>? creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// The user's intent for this group. This is the only required field besides
  /// the name that must be specified on group creation.
  /// Structure is documented below.
  final pulumi.Input<InterconnectGroupIntent>? intent;
  /// Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// strings. Users are encouraged, but not required, to use their preferred
  /// format for resource links as keys.
  /// Note that there are add-members and remove-members methods in gcloud.
  /// The size of this map is limited by an "Interconnects per group" quota.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectGroupInterconnect>>? interconnects;
  /// Name of the resource. Provided by the client when the resource is created. The name must be
  /// 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which means the first
  /// character must be a lowercase letter, and all following characters must be a dash,
  /// lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// An analysis of the physical layout of Interconnects in this
  /// group. Every Interconnect in the group is shown once in this structure.
  /// Structure is documented below.
  final pulumi.Input<List<InterconnectGroupPhysicalStructure>>? physicalStructures;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InterconnectGroupState].
  /// [configureds] The status of the group as configured. This has the same
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [intent] The user's intent for this group. This is the only required field besides
  /// [interconnects] Interconnects in the InterconnectGroup. Keys are arbitrary user-specified
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be
  /// [physicalStructures] An analysis of the physical layout of Interconnects in this
  /// [project] The ID of the project in which the resource belongs.
  InterconnectGroupState({
    pulumi.Output<List<InterconnectGroupConfigured>>? configureds,
    pulumi.Output<String>? creationTimestamp,
    pulumi.Output<String>? description,
    pulumi.Output<InterconnectGroupIntent>? intent,
    pulumi.Output<List<InterconnectGroupInterconnect>>? interconnects,
    pulumi.Output<String>? name,
    pulumi.Output<List<InterconnectGroupPhysicalStructure>>? physicalStructures,
    pulumi.Output<String>? project,
  }) :
      configureds = pulumi.Input.asOptionalInput<List<InterconnectGroupConfigured>>(configureds),
      creationTimestamp = pulumi.Input.asOptionalInput<String>(creationTimestamp),
      description = pulumi.Input.asOptionalInput<String>(description),
      intent = pulumi.Input.asOptionalInput<InterconnectGroupIntent>(intent),
      interconnects = pulumi.Input.asOptionalInput<List<InterconnectGroupInterconnect>>(interconnects),
      name = pulumi.Input.asOptionalInput<String>(name),
      physicalStructures = pulumi.Input.asOptionalInput<List<InterconnectGroupPhysicalStructure>>(physicalStructures),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureds': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupConfigured>, List<Map<String, dynamic>>>(configureds, (value) => pulumi.Input.encodeList<InterconnectGroupConfigured, Map<String, dynamic>>(value, (value) => value.toMap())),
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'intent': ?pulumi.Input.mapOptionalInputValue<InterconnectGroupIntent, Map<String, dynamic>>(intent, (value) => value.toMap()),
      'interconnects': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupInterconnect>, List<Map<String, dynamic>>>(interconnects, (value) => pulumi.Input.encodeList<InterconnectGroupInterconnect, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'physicalStructures': ?pulumi.Input.mapOptionalInputValue<List<InterconnectGroupPhysicalStructure>, List<Map<String, dynamic>>>(physicalStructures, (value) => pulumi.Input.encodeList<InterconnectGroupPhysicalStructure, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
    };
  }

  factory InterconnectGroupState.fromMap(Map<String, dynamic> map) {
    return InterconnectGroupState(
      configureds: map['configureds'] == null ? null : pulumi.Output.create<List<InterconnectGroupConfigured>>(pulumi.Input.decodeList<InterconnectGroupConfigured>(map['configureds'], (value) => InterconnectGroupConfigured.fromMap((value as Map).cast<String, dynamic>()))),
      creationTimestamp: map['creationTimestamp'] == null ? null : pulumi.Output.create<String>(map['creationTimestamp'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      intent: map['intent'] == null ? null : pulumi.Output.create<InterconnectGroupIntent>(InterconnectGroupIntent.fromMap((map['intent'] as Map).cast<String, dynamic>())),
      interconnects: map['interconnects'] == null ? null : pulumi.Output.create<List<InterconnectGroupInterconnect>>(pulumi.Input.decodeList<InterconnectGroupInterconnect>(map['interconnects'], (value) => InterconnectGroupInterconnect.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      physicalStructures: map['physicalStructures'] == null ? null : pulumi.Output.create<List<InterconnectGroupPhysicalStructure>>(pulumi.Input.decodeList<InterconnectGroupPhysicalStructure>(map['physicalStructures'], (value) => InterconnectGroupPhysicalStructure.fromMap((value as Map).cast<String, dynamic>()))),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

