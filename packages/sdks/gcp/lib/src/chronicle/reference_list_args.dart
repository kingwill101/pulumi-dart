// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_list_entry.dart';
import 'reference_list_scope_info.dart';

/// {@template pulumi_chronicle_reference_list_reference_list_args_doc}
/// The set of arguments for ReferenceList.
/// {@endtemplate}
/// {@macro pulumi_chronicle_reference_list_reference_list_args_doc}
class ReferenceListArgs {
  /// Required. A user-provided description of the reference list.
  final pulumi.Input<String> description;
  /// Required. The entries of the reference list.
  /// When listed, they are returned in the order that was specified at creation
  /// or update. The combined size of the values of the reference list may not
  /// exceed 6MB.
  /// This is returned only when the view is REFERENCE_LIST_VIEW_FULL.
  /// Structure is documented below.
  final pulumi.Input<List<ReferenceListEntry>> entries;
  /// The unique identifier for the Chronicle instance, which is the same as the customer ID.
  final pulumi.Input<String> instance;
  /// The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Required. The ID to use for the reference list. This is also the display name for
  /// the reference list. It must satisfy the following requirements:
  /// - Starts with letter.
  /// - Contains only letters, numbers and underscore.
  /// - Has length &lt; 256.
  /// - Must be unique.
  final pulumi.Input<String> referenceListId;
  /// ScopeInfo specifies the scope info of the reference list.
  /// Structure is documented below.
  final pulumi.Input<List<ReferenceListScopeInfo>>? scopeInfos;
  /// Possible values:
  /// REFERENCE_LIST_SYNTAX_TYPE_PLAIN_TEXT_STRING
  /// REFERENCE_LIST_SYNTAX_TYPE_REGEX
  /// REFERENCE_LIST_SYNTAX_TYPE_CIDR
  final pulumi.Input<String> syntaxType;

  /// Creates a new [ReferenceListArgs].
  /// [description] Required. A user-provided description of the reference list.
  /// [entries] Required. The entries of the reference list.
  /// [instance] The unique identifier for the Chronicle instance, which is the same as the customer ID.
  /// [location] The location of the resource. This is the geographical region where the Chronicle instance resides, such as "us" or "europe-west2".
  /// [project] The ID of the project in which the resource belongs.
  /// [referenceListId] Required. The ID to use for the reference list. This is also the display name for
  /// [scopeInfos] ScopeInfo specifies the scope info of the reference list.
  /// [syntaxType] Possible values:
  ReferenceListArgs({
    required this.description,
    required this.entries,
    required this.instance,
    required this.location,
    this.project,
    required this.referenceListId,
    this.scopeInfos,
    required this.syntaxType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'entries': pulumi.Input.mapInputValue<List<ReferenceListEntry>, List<Map<String, dynamic>>>(entries, (value) => pulumi.Input.encodeList<ReferenceListEntry, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': instance,
      'location': location,
      'project': ?project,
      'referenceListId': referenceListId,
      'scopeInfos': ?pulumi.Input.mapOptionalInputValue<List<ReferenceListScopeInfo>, List<Map<String, dynamic>>>(scopeInfos, (value) => pulumi.Input.encodeList<ReferenceListScopeInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'syntaxType': syntaxType,
    };
  }

  factory ReferenceListArgs.fromMap(Map<String, dynamic> map) {
    return ReferenceListArgs(
      description: pulumi.Input.fromValue(map['description'] as String),
      entries: pulumi.Input.fromValue(pulumi.Input.decodeList<ReferenceListEntry>(map['entries']!, (value) => ReferenceListEntry.fromMap((value as Map).cast<String, dynamic>()))),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceListId: pulumi.Input.fromValue(map['referenceListId'] as String),
      scopeInfos: (() { final guardedValue = map['scopeInfos']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ReferenceListScopeInfo>(guardedValue, (value) => ReferenceListScopeInfo.fromMap((value as Map).cast<String, dynamic>()))); })(),
      syntaxType: pulumi.Input.fromValue(map['syntaxType'] as String),
    );
  }
}

