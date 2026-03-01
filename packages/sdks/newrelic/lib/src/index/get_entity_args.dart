// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entity_tag.dart';

/// {@template pulumi_index_get_entity_get_entity_args_doc}
/// Arguments for getEntity.
/// {@endtemplate}
/// {@macro pulumi_index_get_entity_get_entity_args_doc}
class GetEntityArgs {
  /// The New Relic account ID the entity to be returned would be associated with, i.e. if specified, the data source would filter matching entities received by `account_id` and return the first match. If not, matching entities are filtered by the account ID specified in the configuration of the provider. See the **Example: Filter By Account ID** section above for more details.
  final pulumi.Input<String>? accountId;
  /// The entity's domain. Valid values are APM, BROWSER, INFRA, MOBILE, SYNTH, and EXT. If not specified, all domains are searched.
  final pulumi.Input<String>? domain;
  /// A JSON-encoded string, comprising tags associated with the entity fetched.
  /// * See the **Additional Examples** section below, for an illustration depicting the usage of `jsondecode` with the attribute `entity_tags`, to get the tags associated with the entity fetched.
  final pulumi.Input<String>? entityTags;
  /// Ignore case of the `name` when searching for the entity. Defaults to false.
  final pulumi.Input<bool>? ignoreCase;
  /// A boolean argument that, when set to true, prevents an error from being thrown when the queried entity is not found. Instead, a warning is displayed. Defaults to `false`.
  ///
  /// > **WARNING:** Setting the `ignore_not_found` argument to `true` will display an 'entity not found' warning instead of throwing an error. This can lead to downstream errors if the values of attributes exported by this data source are used elsewhere, as all of these values would be null. Please use this argument at your own risk.
  final pulumi.Input<bool>? ignoreNotFound;
  /// The name of the entity in New Relic One.  The first entity matching this name for the given search parameters will be returned.
  final pulumi.Input<String> name;
  /// A tag applied to the entity. See Nested tag blocks below for details.
  final pulumi.Input<List<GetEntityTag>>? tags;
  /// The entity's type. Valid values are APPLICATION, DASHBOARD, HOST, MONITOR, WORKLOAD, AWSLAMBDAFUNCTION, SERVICE_LEVEL, and KEY_TRANSACTION. Note: Other entity types may also be queryable as the list of entity types may fluctuate over time.
  final pulumi.Input<String>? type;

  /// Creates a new [GetEntityArgs].
  /// [accountId] The New Relic account ID the entity to be returned would be associated with, i.e. if specified, the data source would filter matching entities received by `account_id` and return the first match. If not, matching entities are filtered by the account ID specified in the configuration of the provider. See the **Example: Filter By Account ID** section above for more details.
  /// [domain] The entity's domain. Valid values are APM, BROWSER, INFRA, MOBILE, SYNTH, and EXT. If not specified, all domains are searched.
  /// [entityTags] A JSON-encoded string, comprising tags associated with the entity fetched.
  /// [ignoreCase] Ignore case of the `name` when searching for the entity. Defaults to false.
  /// [ignoreNotFound] A boolean argument that, when set to true, prevents an error from being thrown when the queried entity is not found. Instead, a warning is displayed. Defaults to `false`.
  /// [name] The name of the entity in New Relic One.  The first entity matching this name for the given search parameters will be returned.
  /// [tags] A tag applied to the entity. See Nested tag blocks below for details.
  /// [type] The entity's type. Valid values are APPLICATION, DASHBOARD, HOST, MONITOR, WORKLOAD, AWSLAMBDAFUNCTION, SERVICE_LEVEL, and KEY_TRANSACTION. Note: Other entity types may also be queryable as the list of entity types may fluctuate over time.
  GetEntityArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? entityTags,
    pulumi.Output<bool>? ignoreCase,
    pulumi.Output<bool>? ignoreNotFound,
    required pulumi.Output<String> name,
    pulumi.Output<List<GetEntityTag>>? tags,
    pulumi.Output<String>? type,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      entityTags = pulumi.Input.asOptionalInput<String>(entityTags),
      ignoreCase = pulumi.Input.asOptionalInput<bool>(ignoreCase),
      ignoreNotFound = pulumi.Input.asOptionalInput<bool>(ignoreNotFound),
      name = pulumi.Input.asInput<String>(name),
      tags = pulumi.Input.asOptionalInput<List<GetEntityTag>>(tags),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'domain': ?domain,
      'entityTags': ?entityTags,
      'ignoreCase': ?ignoreCase,
      'ignoreNotFound': ?ignoreNotFound,
      'name': name,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<GetEntityTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<GetEntityTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory GetEntityArgs.fromMap(Map<String, dynamic> map) {
    return GetEntityArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      entityTags: map['entityTags'] == null ? null : pulumi.Output.create<String>(map['entityTags'] as String),
      ignoreCase: map['ignoreCase'] == null ? null : pulumi.Output.create<bool>(map['ignoreCase'] as bool),
      ignoreNotFound: map['ignoreNotFound'] == null ? null : pulumi.Output.create<bool>(map['ignoreNotFound'] as bool),
      name: pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<GetEntityTag>>(pulumi.Input.decodeList<GetEntityTag>(map['tags'], (value) => GetEntityTag.fromMap((value as Map).cast<String, dynamic>()))),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

