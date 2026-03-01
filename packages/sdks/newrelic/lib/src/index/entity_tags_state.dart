// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_tags_tag.dart';

/// Input properties used for looking up and filtering EntityTags resources.
class EntityTagsState {
  /// The guid of the entity to tag.
  final pulumi.Input<String>? guid;
  /// A nested block that describes an entity tag. See Nested tag blocks below for details.
  final pulumi.Input<List<EntityTagsTag>>? tags;

  /// Creates a new [EntityTagsState].
  /// [guid] The guid of the entity to tag.
  /// [tags] A nested block that describes an entity tag. See Nested tag blocks below for details.
  EntityTagsState({
    pulumi.Output<String>? guid,
    pulumi.Output<List<EntityTagsTag>>? tags,
  }) :
      guid = pulumi.Input.asOptionalInput<String>(guid),
      tags = pulumi.Input.asOptionalInput<List<EntityTagsTag>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guid': ?guid,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<EntityTagsTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<EntityTagsTag, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EntityTagsState.fromMap(Map<String, dynamic> map) {
    return EntityTagsState(
      guid: map['guid'] == null ? null : pulumi.Output.create<String>(map['guid'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<EntityTagsTag>>(pulumi.Input.decodeList<EntityTagsTag>(map['tags'], (value) => EntityTagsTag.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

