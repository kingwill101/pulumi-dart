// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_list_entry.dart';
import 'reference_list_scope_info.dart';

/// Input properties used for looking up and filtering ReferenceList resources.
class ReferenceListState {
  /// Required. A user-provided description of the reference list.
  final pulumi.Input<String>? description;
  /// Output only. The unique display name of the reference list.
  final pulumi.Input<String>? displayName;
  /// Required. The entries of the reference list.
  /// When listed, they are returned in the order that was specified at creation
  /// or update. The combined size of the values of the reference list may not
  /// exceed 6MB.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  /// Structure is documented below.
  final pulumi.Input<List<ReferenceListEntry>>? entries;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String>? instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String>? location;
  /// Output only. The resource name of the reference list.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/referenceLists/{reference_list}
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the reference list. This is also the display name for
  /// the reference list. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Has length < 256.
  /// - Must be unique.
  final pulumi.Input<String>? referenceListId;
  /// Output only. The timestamp when the reference list was last updated.
  final pulumi.Input<String>? revisionCreateTime;
  /// Output only. The count of self-authored rules using the reference list.
  final pulumi.Input<int>? ruleAssociationsCount;
  /// Output only. The resource names for the associated self-authored Rules that use this
  /// reference list.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  final pulumi.Input<List<String>>? rules;
  /// ScopeInfo specifies the scope info of the reference list.
  /// Structure is documented below.
  final pulumi.Input<List<ReferenceListScopeInfo>>? scopeInfos;
  /// Possible values:
  /// REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
  /// REFERENCE_LIST_SYNTAX_TYPE_REGEX
  /// REFERENCE_LIST_SYNTAX_TYPE_CIDR
  final pulumi.Input<String>? syntaxType;

  /// Creates a new [ReferenceListState].
  /// [description] Required. A user-provided description of the reference list.
  /// [displayName] Output only. The unique display name of the reference list.
  /// [entries] Required. The entries of the reference list.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [name] Output only. The resource name of the reference list.
  /// [project] The ID of the project in which the resource belongs.
  /// [referenceListId] Required. The ID to use for the reference list. This is also the display name for
  /// [revisionCreateTime] Output only. The timestamp when the reference list was last updated.
  /// [ruleAssociationsCount] Output only. The count of self-authored rules using the reference list.
  /// [rules] Output only. The resource names for the associated self-authored Rules that use this
  /// [scopeInfos] ScopeInfo specifies the scope info of the reference list.
  /// [syntaxType] Possible values:
  ReferenceListState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<List<ReferenceListEntry>>? entries,
    pulumi.Output<String>? instance,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? referenceListId,
    pulumi.Output<String>? revisionCreateTime,
    pulumi.Output<int>? ruleAssociationsCount,
    pulumi.Output<List<String>>? rules,
    pulumi.Output<List<ReferenceListScopeInfo>>? scopeInfos,
    pulumi.Output<String>? syntaxType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      entries = pulumi.Input.asOptionalInput<List<ReferenceListEntry>>(entries),
      instance = pulumi.Input.asOptionalInput<String>(instance),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      referenceListId = pulumi.Input.asOptionalInput<String>(referenceListId),
      revisionCreateTime = pulumi.Input.asOptionalInput<String>(revisionCreateTime),
      ruleAssociationsCount = pulumi.Input.asOptionalInput<int>(ruleAssociationsCount),
      rules = pulumi.Input.asOptionalInput<List<String>>(rules),
      scopeInfos = pulumi.Input.asOptionalInput<List<ReferenceListScopeInfo>>(scopeInfos),
      syntaxType = pulumi.Input.asOptionalInput<String>(syntaxType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'entries': ?pulumi.Input.mapOptionalInputValue<List<ReferenceListEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ReferenceListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'referenceListId': ?referenceListId,
      'revisionCreateTime': ?revisionCreateTime,
      'ruleAssociationsCount': ?ruleAssociationsCount,
      'rules': ?rules,
      'scopeInfos': ?pulumi.Input.mapOptionalInputValue<List<ReferenceListScopeInfo>, List<Map<String, dynamic>>>(scopeInfos, (value) => pulumi.Input.encodeList<ReferenceListScopeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'syntaxType': ?syntaxType,
    };
  }

  factory ReferenceListState.fromMap(Map<String, dynamic> map) {
    return ReferenceListState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      entries: map['entries'] == null ? null : pulumi.Output.create<List<ReferenceListEntry>>(pulumi.Input.decodeList<ReferenceListEntry>(map['entries'], (value) => ReferenceListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      instance: map['instance'] == null ? null : pulumi.Output.create<String>(map['instance'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      referenceListId: map['referenceListId'] == null ? null : pulumi.Output.create<String>(map['referenceListId'] as String),
      revisionCreateTime: map['revisionCreateTime'] == null ? null : pulumi.Output.create<String>(map['revisionCreateTime'] as String),
      ruleAssociationsCount: map['ruleAssociationsCount'] == null ? null : pulumi.Output.create<int>(map['ruleAssociationsCount'] as int),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<String>>((map['rules'] as List).cast<String>()),
      scopeInfos: map['scopeInfos'] == null ? null : pulumi.Output.create<List<ReferenceListScopeInfo>>(pulumi.Input.decodeList<ReferenceListScopeInfo>(map['scopeInfos'], (value) => ReferenceListScopeInfo.fromMap((value as Map).cast<String, dynamic>()))),
      syntaxType: map['syntaxType'] == null ? null : pulumi.Output.create<String>(map['syntaxType'] as String),
    );
  }
}

