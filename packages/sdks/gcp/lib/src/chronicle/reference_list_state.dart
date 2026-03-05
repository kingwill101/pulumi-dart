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
  /// - Has length &lt; 256.
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      entries: (() { final guardedValue = map['entries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReferenceListEntry>(guardedValue, (value) => ReferenceListEntry.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceListId: (() { final guardedValue = map['referenceListId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revisionCreateTime: (() { final guardedValue = map['revisionCreateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleAssociationsCount: (() { final guardedValue = map['ruleAssociationsCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      scopeInfos: (() { final guardedValue = map['scopeInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReferenceListScopeInfo>(guardedValue, (value) => ReferenceListScopeInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      syntaxType: (() { final guardedValue = map['syntaxType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

