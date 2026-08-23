// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_tag_template_args_doc}
/// The set of arguments for TagTemplate.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_tag_template_args_doc}
class TagTemplateArgs {
  /// Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.
  final pulumi.Input<String>? displayName;
  /// Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.
  final pulumi.Input<Map<String, String>> fields;
  /// Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.
  final pulumi.Input<bool>? isPubliclyReadable;
  final pulumi.Input<String>? location;
  /// The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Required. The ID of the tag template to create. The ID must contain only lowercase letters (a-z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  final pulumi.Input<String> tagTemplateId;

  /// Creates a new [TagTemplateArgs].
  /// [displayName] Display name for this template. Defaults to an empty string. The name must contain only Unicode letters, numbers (0-9), underscores (_), dashes (-), spaces ( ), and can't start or end with spaces. The maximum length is 200 characters.
  /// [fields] Map of tag template field IDs to the settings for the field. This map is an exhaustive list of the allowed fields. The map must contain at least one field and at most 500 fields. The keys to this map are tag template field IDs. The IDs have the following limitations: * Can contain uppercase and lowercase letters, numbers (0-9) and underscores (_). * Must be at least 1 character and at most 64 characters long. * Must start with a letter or underscore.
  /// [isPubliclyReadable] Indicates whether tags created with this template are public. Public tags do not require tag template access to appear in ListTags API response. Additionally, you can search for a public tag by value with a simple search query in addition to using a ``tag:`` predicate.
  /// [location] Optional.
  /// [name] The resource name of the tag template in URL format. Note: The tag template itself and its child resources might not be stored in the location specified in its name.
  /// [project] Optional.
  /// [tagTemplateId] Required. The ID of the tag template to create. The ID must contain only lowercase letters (a-z), numbers (0-9), or underscores (_), and must start with a letter or underscore. The maximum size is 64 bytes when encoded in UTF-8.
  const TagTemplateArgs({
    this.displayName,
    required this.fields,
    this.isPubliclyReadable,
    this.location,
    this.name,
    this.project,
    required this.tagTemplateId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'fields': fields,
      'isPubliclyReadable': ?isPubliclyReadable,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'tagTemplateId': tagTemplateId,
    };
  }

  factory TagTemplateArgs.fromMap(Map<String, dynamic> map) {
    return TagTemplateArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fields: pulumi.Input.fromValue((map['fields'] as Map).cast<String, String>()),
      isPubliclyReadable: (() { final guardedValue = map['isPubliclyReadable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tagTemplateId: pulumi.Input.fromValue(map['tagTemplateId'] as String),
    );
  }
}
