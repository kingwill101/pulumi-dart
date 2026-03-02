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
    this.description,
    this.displayName,
    this.entries,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.referenceListId,
    this.revisionCreateTime,
    this.ruleAssociationsCount,
    this.rules,
    this.scopeInfos,
    this.syntaxType,
  });

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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      entries: map['entries'] == null ? null : (pulumi.Input.decodeList<ReferenceListEntry>(map['entries'], (value) => ReferenceListEntry.fromMap((value as Map).cast<String, dynamic>()))).input(),
      instance: map['instance'] == null ? null : (map['instance'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      referenceListId: map['referenceListId'] == null ? null : (map['referenceListId'] as String).input(),
      revisionCreateTime: map['revisionCreateTime'] == null ? null : (map['revisionCreateTime'] as String).input(),
      ruleAssociationsCount: map['ruleAssociationsCount'] == null ? null : (map['ruleAssociationsCount'] as int).input(),
      rules: map['rules'] == null ? null : ((map['rules'] as List).cast<String>()).input(),
      scopeInfos: map['scopeInfos'] == null ? null : (pulumi.Input.decodeList<ReferenceListScopeInfo>(map['scopeInfos'], (value) => ReferenceListScopeInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      syntaxType: map['syntaxType'] == null ? null : (map['syntaxType'] as String).input(),
    );
  }
}

