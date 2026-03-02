// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_tag.dart';

/// Result data returned by getEntity.
class GetEntityResult {
  final String accountId;
  /// The domain-specific application ID of the entity. Only returned for APM and Browser applications.
  final String applicationId;
  final String domain;
  /// A JSON-encoded string, comprising tags associated with the entity fetched.
  /// * See the **Additional Examples** section below, for an illustration depicting the usage of `jsondecode` with the attribute `entity_tags`, to get the tags associated with the entity fetched.
  final String entityTags;
  /// The unique GUID of the entity.
  final String guid;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final bool? ignoreCase;
  final bool? ignoreNotFound;
  final String name;
  /// The browser-specific ID of the backing APM entity. Only returned for Browser applications.
  final String servingApmApplicationId;
  final List<GetEntityTag>? tags;
  final String type;

  /// Creates a new [GetEntityResult].
  /// [accountId] Required.
  /// [applicationId] The domain-specific application ID of the entity. Only returned for APM and Browser applications.
  /// [domain] Required.
  /// [entityTags] A JSON-encoded string, comprising tags associated with the entity fetched.
  /// [guid] The unique GUID of the entity.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreCase] Optional.
  /// [ignoreNotFound] Optional.
  /// [name] Required.
  /// [servingApmApplicationId] The browser-specific ID of the backing APM entity. Only returned for Browser applications.
  /// [tags] Optional.
  /// [type] Required.
  GetEntityResult({
    required this.accountId,
    required this.applicationId,
    required this.domain,
    required this.entityTags,
    required this.guid,
    required this.id,
    this.ignoreCase,
    this.ignoreNotFound,
    required this.name,
    required this.servingApmApplicationId,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'applicationId': applicationId,
      'domain': domain,
      'entityTags': entityTags,
      'guid': guid,
      'id': id,
      'ignoreCase': ?ignoreCase,
      'ignoreNotFound': ?ignoreNotFound,
      'name': name,
      'servingApmApplicationId': servingApmApplicationId,
      'tags': ?tags == null ? null : pulumi.Input.encodeList<GetEntityTag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
      'type': type,
    };
  }

  factory GetEntityResult.fromMap(Map<String, dynamic> map) {
    return GetEntityResult(
      accountId: map['accountId'] as String,
      applicationId: map['applicationId'] as String,
      domain: map['domain'] as String,
      entityTags: map['entityTags'] as String,
      guid: map['guid'] as String,
      id: map['id'] as String,
      ignoreCase: map['ignoreCase'] == null ? null : map['ignoreCase']! as bool,
      ignoreNotFound: map['ignoreNotFound'] == null ? null : map['ignoreNotFound']! as bool,
      name: map['name'] as String,
      servingApmApplicationId: map['servingApmApplicationId'] as String,
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<GetEntityTag>(map['tags']!, (value) => GetEntityTag.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
    );
  }
}

