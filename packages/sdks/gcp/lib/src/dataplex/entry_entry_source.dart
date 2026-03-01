// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_entry_source_ancestor.dart';

class EntryEntrySource {
  /// Structure is documented below.
  final List<EntryEntrySourceAncestor>? ancestors;
  /// The time when the resource was created in the source system.
  final String? createTime;
  /// A description of the data resource. Maximum length is 2,000 characters.
  final String? description;
  /// A user-friendly display name. Maximum length is 500 characters.
  final String? displayName;
  /// User-defined labels. The maximum size of keys and values is 128 characters each.
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  final Map<String, String>? labels;
  /// (Output)
  /// Location of the resource in the source system. You can search the entry by this location.
  /// By default, this should match the location of the entry group containing this entry.
  /// A different value allows capturing the source location for data external to Google Cloud.
  final String? location;
  /// The platform containing the source system. Maximum length is 64 characters.
  final String? platform;
  /// The name of the resource in the source system. Maximum length is 4,000 characters.
  final String? resource;
  /// The name of the source system. Maximum length is 64 characters.
  final String? system;
  /// The time when the resource was last updated in the source system.
  /// If the entry exists in the system and its EntrySource has updateTime populated,
  /// further updates to the EntrySource of the entry must provide incremental updates to its updateTime.
  final String? updateTime;

  /// Creates a new [EntryEntrySource].
  /// [ancestors] Structure is documented below.
  /// [createTime] The time when the resource was created in the source system.
  /// [description] A description of the data resource. Maximum length is 2,000 characters.
  /// [displayName] A user-friendly display name. Maximum length is 500 characters.
  /// [labels] User-defined labels. The maximum size of keys and values is 128 characters each.
  /// [location] (Output)
  /// [platform] The platform containing the source system. Maximum length is 64 characters.
  /// [resource] The name of the resource in the source system. Maximum length is 4,000 characters.
  /// [system] The name of the source system. Maximum length is 64 characters.
  /// [updateTime] The time when the resource was last updated in the source system.
  EntryEntrySource({
    this.ancestors,
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.location,
    this.platform,
    this.resource,
    this.system,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ancestors': ?ancestors == null ? null : pulumi.Input.encodeList<EntryEntrySourceAncestor, Map<String, dynamic>>(ancestors!, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'platform': ?platform,
      'resource': ?resource,
      'system': ?system,
      'updateTime': ?updateTime,
    };
  }

  factory EntryEntrySource.fromMap(Map<String, dynamic> map) {
    return EntryEntrySource(
      ancestors: map['ancestors'] == null ? null : pulumi.Input.decodeList<EntryEntrySourceAncestor>(map['ancestors'], (value) => EntryEntrySourceAncestor.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : map['createTime'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      resource: map['resource'] == null ? null : map['resource'] as String,
      system: map['system'] == null ? null : map['system'] as String,
      updateTime: map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}

